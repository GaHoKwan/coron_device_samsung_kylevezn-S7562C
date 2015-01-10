.class public final Lnbisdk/hu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/en;
    }
.end annotation


# instance fields
.field private ms:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lnbisdk/au$d;",
            ">;"
        }
    .end annotation
.end field

.field private mt:Lnbisdk/en;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/hu;->ms:Ljava/util/Hashtable;

    new-instance v0, Lnbisdk/en;

    invoke-direct {v0, p0}, Lnbisdk/en;-><init>(Lnbisdk/hu;)V

    iput-object v0, p0, Lnbisdk/hu;->mt:Lnbisdk/en;

    return-void
.end method

.method static synthetic a(Lnbisdk/hu;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lnbisdk/hu;->ms:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method public final ao(Ljava/lang/String;)Lnbisdk/au$d;
    .locals 1

    iget-object v0, p0, Lnbisdk/hu;->ms:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    return-object v0
.end method

.method public final b(Lnbisdk/au$d;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/hu;->mt:Lnbisdk/en;

    invoke-virtual {v0}, Lnbisdk/en;->invalidate()V

    iget-object v0, p0, Lnbisdk/hu;->ms:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Lnbisdk/au$d;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/hu;->mt:Lnbisdk/en;

    invoke-virtual {v0}, Lnbisdk/en;->invalidate()V

    iget-object v0, p0, Lnbisdk/hu;->ms:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final hx()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/au$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/hu;->mt:Lnbisdk/en;

    invoke-virtual {v0}, Lnbisdk/en;->fh()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final hy()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/au$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/hu;->mt:Lnbisdk/en;

    invoke-virtual {v0}, Lnbisdk/en;->fi()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

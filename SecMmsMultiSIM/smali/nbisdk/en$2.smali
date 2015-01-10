.class final Lnbisdk/en$2;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/en;->c(Ljava/util/Vector;Ljava/util/Hashtable;)V
.end annotation


# direct methods
.method constructor <init>(Lnbisdk/en;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lnbisdk/au$d;

    check-cast p2, Lnbisdk/au$d;

    invoke-virtual {p1}, Lnbisdk/au$d;->cz()I

    move-result v0

    invoke-virtual {p2}, Lnbisdk/au$d;->cz()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

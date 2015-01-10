.class final Lnbisdk/fw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/fw;->a(Lnbisdk/ct;)Ljava/util/Vector;
.end annotation


# direct methods
.method constructor <init>(Lnbisdk/fw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lnbisdk/hf;

    check-cast p2, Lnbisdk/hf;

    invoke-virtual {p1}, Lnbisdk/hf;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lnbisdk/hf;->getPriority()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

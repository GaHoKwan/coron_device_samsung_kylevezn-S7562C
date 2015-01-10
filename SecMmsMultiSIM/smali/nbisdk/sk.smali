.class final Lnbisdk/sk;
.super Lnbisdk/ru;


# instance fields
.field private synthetic xC:Lnbisdk/js;

.field private synthetic xD:Lnbisdk/uh;


# direct methods
.method constructor <init>(Lnbisdk/js;Lnbisdk/uh;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/sk;->xC:Lnbisdk/js;

    iput-object p2, p0, Lnbisdk/sk;->xD:Lnbisdk/uh;

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 2

    iget-object v0, p0, Lnbisdk/sk;->xC:Lnbisdk/js;

    iget-object v1, p0, Lnbisdk/sk;->xD:Lnbisdk/uh;

    invoke-static {v0, v1}, Lnbisdk/js;->a(Lnbisdk/js;Lnbisdk/uh;)V

    return-void
.end method

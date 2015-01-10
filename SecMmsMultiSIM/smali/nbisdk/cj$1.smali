.class final Lnbisdk/cj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/cj;->eZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eg:Lnbisdk/cj;


# direct methods
.method constructor <init>(Lnbisdk/cj;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cj$1;->eg:Lnbisdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final mw()V
    .locals 1

    iget-object v0, p0, Lnbisdk/cj$1;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cc;->cp()V

    return-void
.end method

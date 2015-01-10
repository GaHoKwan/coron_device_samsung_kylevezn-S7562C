.class final Lnbisdk/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/q;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ar:Lnbisdk/q;


# direct methods
.method constructor <init>(Lnbisdk/q;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/q$1;->ar:Lnbisdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/q$1;->ar:Lnbisdk/q;

    iget-object v1, p0, Lnbisdk/q$1;->ar:Lnbisdk/q;

    invoke-static {v1}, Lnbisdk/q;->a(Lnbisdk/q;)Lnbisdk/q$b;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/q$b;->oP()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/q;->a(Lnbisdk/q;Ljava/util/Collection;)V

    return-void
.end method

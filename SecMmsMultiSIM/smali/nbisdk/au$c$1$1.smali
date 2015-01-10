.class final Lnbisdk/au$c$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/au$c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ob:Lnbisdk/au$c$1;


# direct methods
.method constructor <init>(Lnbisdk/au$c$1;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/au$c$1$1;->ob:Lnbisdk/au$c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$c$1$1;->ob:Lnbisdk/au$c$1;

    iget-object v0, v0, Lnbisdk/au$c$1;->nB:Lnbisdk/au$c;

    invoke-static {v0}, Lnbisdk/au$c;->b(Lnbisdk/au$c;)V

    return-void
.end method

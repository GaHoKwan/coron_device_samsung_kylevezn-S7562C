.class final Lnbisdk/mw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic tF:Lnbisdk/cn;


# direct methods
.method constructor <init>(Lnbisdk/cn;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/mw;->tF:Lnbisdk/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnbisdk/mw;->tF:Lnbisdk/cn;

    invoke-static {v0}, Lnbisdk/cn;->a(Lnbisdk/cn;)V

    return-void
.end method

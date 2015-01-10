.class final Lnbisdk/cy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ki;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/cy;->a(Lnbisdk/bt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ib:Lnbisdk/cy;


# direct methods
.method constructor <init>(Lnbisdk/cy;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cy$1;->ib:Lnbisdk/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelLingerTimer()V
    .locals 0

    return-void
.end method

.method public final onClearCache()V
    .locals 0

    return-void
.end method

.method public final onContextDestroy()V
    .locals 1

    iget-object v0, p0, Lnbisdk/cy$1;->ib:Lnbisdk/cy;

    invoke-virtual {v0}, Lnbisdk/cy;->dH()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onStartLingerTimer()V
    .locals 0

    invoke-static {}, Lnbisdk/eu;->fy()V

    return-void
.end method

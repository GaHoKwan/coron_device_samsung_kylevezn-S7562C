.class public abstract Lnbisdk/px;
.super Ljava/lang/Object;


# static fields
.field private static vt:Lnbisdk/px;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/px;->vt:Lnbisdk/px;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lnbisdk/ez;)Lnbisdk/px;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/hl;
        }
    .end annotation

    sget-object v0, Lnbisdk/px;->vt:Lnbisdk/px;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/kp;

    invoke-direct {v0, p0}, Lnbisdk/kp;-><init>(Lnbisdk/ez;)V

    sput-object v0, Lnbisdk/px;->vt:Lnbisdk/px;

    :cond_0
    sget-object v0, Lnbisdk/px;->vt:Lnbisdk/px;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lnbisdk/ds;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/hl;
        }
    .end annotation
.end method

.method public abstract e(Lnbisdk/ds;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/hl;
        }
    .end annotation
.end method

.method public abstract f(Lnbisdk/ds;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/hl;
        }
    .end annotation
.end method

.method public abstract g(Lnbisdk/ds;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/hl;
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/px;->vt:Lnbisdk/px;

    return-void
.end method

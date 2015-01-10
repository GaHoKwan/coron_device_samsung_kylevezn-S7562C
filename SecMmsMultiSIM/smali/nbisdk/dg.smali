.class public abstract Lnbisdk/dg;
.super Ljava/lang/Object;


# static fields
.field private static final fx:Ljava/lang/Object;


# instance fields
.field private ce:Ljava/lang/String;

.field private cf:Ljava/lang/String;

.field private fA:I

.field private fB:Lnbisdk/mi;

.field protected fC:Ljava/lang/String;

.field private fD:B

.field protected fE:Lnbisdk/gw;

.field private fF:Lnbisdk/cl;

.field private fG:Lnbisdk/cl;

.field private fH:Z

.field private fI:Z

.field private fJ:Z

.field public fK:Z

.field private fL:B

.field private fM:Lnbisdk/cp;

.field private fy:I

.field private fz:Ljava/lang/String;

.field private state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lnbisdk/dg;->fx:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lnbisdk/mi;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/dg;->fy:I

    const-string v0, "en-US"

    iput-object v0, p0, Lnbisdk/dg;->fz:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lnbisdk/dg;->fA:I

    sget-object v0, Lnbisdk/dg;->fx:Ljava/lang/Object;

    iput-object v0, p0, Lnbisdk/dg;->state:Ljava/lang/Object;

    iput-byte v1, p0, Lnbisdk/dg;->fD:B

    iput-object v2, p0, Lnbisdk/dg;->fF:Lnbisdk/cl;

    iput-object v2, p0, Lnbisdk/dg;->fG:Lnbisdk/cl;

    iput-boolean v1, p0, Lnbisdk/dg;->fK:Z

    const/4 v0, 0x0

    iput-byte v0, p0, Lnbisdk/dg;->fL:B

    const-string v0, "screen"

    iput-object v0, p0, Lnbisdk/dg;->ce:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/dg;->cf:Ljava/lang/String;

    iput-object p1, p0, Lnbisdk/dg;->fB:Lnbisdk/mi;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lnbisdk/se;

    if-nez v0, :cond_1

    instance-of v0, p1, Lnbisdk/cl;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown position type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final H(I)V
    .locals 0

    iput p1, p0, Lnbisdk/dg;->fA:I

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    new-instance v1, Lnbisdk/vl;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    new-instance v1, Lnbisdk/vl;

    const-string v2, "category"

    invoke-direct {v1, v2, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/gw;->c(Lnbisdk/vl;)V

    return-void
.end method

.method public final U(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    new-instance v1, Lnbisdk/vl;

    const-string v2, "sort-by"

    invoke-direct {v1, v2, p1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    return-void
.end method

.method public final a(BLnbisdk/kq;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_5

    :cond_0
    iput-byte p1, p0, Lnbisdk/dg;->fD:B

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_4

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProxPOIInformation cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Lnbisdk/kq;->iU()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/dg;->state:Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/dg;->state:Ljava/lang/Object;

    if-nez v0, :cond_3

    sget-object v0, Lnbisdk/dg;->fx:Ljava/lang/Object;

    iput-object v0, p0, Lnbisdk/dg;->state:Ljava/lang/Object;

    :cond_3
    const-string v0, "more"

    iput-object v0, p0, Lnbisdk/dg;->ce:Ljava/lang/String;

    :goto_0
    return-void

    :cond_4
    sget-object v0, Lnbisdk/dg;->fx:Ljava/lang/Object;

    iput-object v0, p0, Lnbisdk/dg;->state:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown search style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dg;->fz:Ljava/lang/String;

    return-void
.end method

.method public final a(Lnbisdk/cl;Lnbisdk/cl;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dg;->fF:Lnbisdk/cl;

    iput-object p2, p0, Lnbisdk/dg;->fG:Lnbisdk/cl;

    return-void
.end method

.method public final a(ZZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/dg;->fH:Z

    iput-boolean p2, p0, Lnbisdk/dg;->fI:Z

    iput-boolean p3, p0, Lnbisdk/dg;->fJ:Z

    return-void
.end method

.method public final bc()Lnbisdk/mi;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->fB:Lnbisdk/mi;

    return-object v0
.end method

.method public final c(Lnbisdk/cp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dg;->fM:Lnbisdk/cp;

    return-void
.end method

.method public final dT()I
    .locals 1

    iget v0, p0, Lnbisdk/dg;->fy:I

    return v0
.end method

.method public final dU()I
    .locals 1

    iget v0, p0, Lnbisdk/dg;->fA:I

    return v0
.end method

.method public final dV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public final dW()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/dg;->fD:B

    return v0
.end method

.method public final dX()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public final dY()Lnbisdk/gw;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    return-object v0
.end method

.method public final dZ()Lnbisdk/cl;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->fF:Lnbisdk/cl;

    return-object v0
.end method

.method public final ea()Lnbisdk/cl;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->fG:Lnbisdk/cl;

    return-object v0
.end method

.method public final eb()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/dg;->fH:Z

    return v0
.end method

.method public final ec()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/dg;->fI:Z

    return v0
.end method

.method public final ed()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/dg;->fJ:Z

    return v0
.end method

.method public final ee()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ef()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final eg()Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final eh()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ei()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ej()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ek()Lnbisdk/cp;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->fM:Lnbisdk/cp;

    return-object v0
.end method

.method public final el()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public final em()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final en()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final eo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->fz:Ljava/lang/String;

    return-object v0
.end method

.method public final getRouteID()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dg;->fC:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

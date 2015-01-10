.class public final Lnbisdk/br;
.super Ljava/lang/Object;


# instance fields
.field private N:Ljava/lang/String;

.field private ay:I

.field private bE:I

.field private cJ:I

.field private cT:I

.field private cU:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/br;->cT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/br;->N:Ljava/lang/String;

    iput v1, p0, Lnbisdk/br;->cT:I

    iput v1, p0, Lnbisdk/br;->ay:I

    iput v1, p0, Lnbisdk/br;->cJ:I

    iput v1, p0, Lnbisdk/br;->bE:I

    iput v1, p0, Lnbisdk/br;->cU:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnbisdk/br;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lnbisdk/br;->cT:I

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeType is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p3, :cond_2

    const/4 v0, 0x3

    if-le p3, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vehicleType is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lnbisdk/br;->N:Ljava/lang/String;

    iput p2, p0, Lnbisdk/br;->ay:I

    iput p3, p0, Lnbisdk/br;->cJ:I

    iput p4, p0, Lnbisdk/br;->bE:I

    iput v1, p0, Lnbisdk/br;->cU:I

    return-void
.end method

.method private static a(Lnbisdk/ze;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnbisdk/ze;

    const-string v1, "avoid"

    invoke-direct {v0, v1, p0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "value"

    invoke-static {v0, v1, p1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bL()Lnbisdk/br;
    .locals 1

    new-instance v0, Lnbisdk/br;

    invoke-direct {v0}, Lnbisdk/br;-><init>()V

    return-object v0
.end method

.method public static c(Ljava/io/DataInputStream;)Lnbisdk/br;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported data format version.  RouteOptions only supports version 1."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/br;

    invoke-direct {v0}, Lnbisdk/br;-><init>()V

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/br;->N:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/br;->cT:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/br;->ay:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/br;->cJ:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/br;->bE:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/br;->cU:I

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/br;->N:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget v0, p0, Lnbisdk/br;->cT:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lnbisdk/br;->ay:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lnbisdk/br;->cJ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lnbisdk/br;->bE:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lnbisdk/br;->cU:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public final bM()I
    .locals 1

    iget v0, p0, Lnbisdk/br;->cJ:I

    return v0
.end method

.method public final bN()I
    .locals 1

    iget v0, p0, Lnbisdk/br;->cT:I

    return v0
.end method

.method public final bO()I
    .locals 1

    iget v0, p0, Lnbisdk/br;->cU:I

    return v0
.end method

.method public final bP()Lnbisdk/ze;
    .locals 3

    new-instance v1, Lnbisdk/ze;

    const-string v0, "route-style"

    invoke-direct {v1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnbisdk/br;->wantAvoid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hov"

    invoke-static {v1, v0}, Lnbisdk/br;->a(Lnbisdk/ze;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnbisdk/br;->wantAvoid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "toll"

    invoke-static {v1, v0}, Lnbisdk/br;->a(Lnbisdk/ze;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnbisdk/br;->wantAvoid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "highway"

    invoke-static {v1, v0}, Lnbisdk/br;->a(Lnbisdk/ze;Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnbisdk/br;->wantAvoid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "unpaved"

    invoke-static {v1, v0}, Lnbisdk/br;->a(Lnbisdk/ze;Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lnbisdk/br;->wantAvoid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ferry"

    invoke-static {v1, v0}, Lnbisdk/br;->a(Lnbisdk/ze;Ljava/lang/String;)V

    :cond_4
    const-string v2, "optimize"

    iget v0, p0, Lnbisdk/br;->ay:I

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v2, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "vehicle-type"

    iget v0, p0, Lnbisdk/br;->cJ:I

    packed-switch v0, :pswitch_data_1

    const-string v0, ""

    :goto_1
    invoke-static {v1, v2, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_0
    const-string v0, "fastest"

    goto :goto_0

    :pswitch_1
    const-string v0, "easiest"

    goto :goto_0

    :pswitch_2
    const-string v0, "shortest"

    goto :goto_0

    :pswitch_3
    const-string v0, "car"

    goto :goto_1

    :pswitch_4
    const-string v0, "truck"

    goto :goto_1

    :pswitch_5
    const-string v0, "bicycle"

    goto :goto_1

    :pswitch_6
    const-string v0, "pedestrian"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final bQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/br;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lnbisdk/br;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lnbisdk/br;

    iget-object v2, p0, Lnbisdk/br;->N:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnbisdk/br;->N:Ljava/lang/String;

    iget-object v3, p1, Lnbisdk/br;->N:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iget v2, p0, Lnbisdk/br;->ay:I

    iget v3, p1, Lnbisdk/br;->ay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lnbisdk/br;->cJ:I

    iget v3, p1, Lnbisdk/br;->cJ:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lnbisdk/br;->bE:I

    iget v3, p1, Lnbisdk/br;->bE:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lnbisdk/br;->cU:I

    iget v3, p1, Lnbisdk/br;->cU:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lnbisdk/br;->cT:I

    iget v3, p1, Lnbisdk/br;->cT:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lnbisdk/br;->N:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_1
.end method

.method public final getAvoidFeatures()I
    .locals 1

    iget v0, p0, Lnbisdk/br;->bE:I

    return v0
.end method

.method public final getRouteType()I
    .locals 1

    iget v0, p0, Lnbisdk/br;->ay:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lnbisdk/br;->cU:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnbisdk/br;->cT:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lnbisdk/br;->N:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnbisdk/br;->bE:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnbisdk/br;->ay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnbisdk/br;->cJ:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/br;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isAuto()Z
    .locals 2

    iget v0, p0, Lnbisdk/br;->cJ:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPedestrian()Z
    .locals 2

    iget v0, p0, Lnbisdk/br;->cJ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vehicleType is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lnbisdk/br;->cJ:I

    return-void
.end method

.method public final setAvoidFeatures(I)V
    .locals 0

    iput p1, p0, Lnbisdk/br;->bE:I

    return-void
.end method

.method public final setRouteType(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeType is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lnbisdk/br;->ay:I

    return-void
.end method

.method public final wantAvoid(I)Z
    .locals 1

    iget v0, p0, Lnbisdk/br;->bE:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

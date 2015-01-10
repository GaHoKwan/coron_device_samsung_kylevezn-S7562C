.class final Lnbisdk/gm;
.super Ljava/lang/Object;


# instance fields
.field private bj:I

.field private cU:I

.field private cZ:I

.field private da:I

.field private kS:[J

.field private kT:J

.field private kU:Lnbisdk/gi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lnbisdk/gm;->kS:[J

    return-void
.end method

.method static b(Lnbisdk/cb;I)I
    .locals 13

    const/4 v1, -0x5

    const/4 v3, 0x1

    const/4 v2, -0x2

    const/16 v12, 0xd

    const-wide/16 v10, 0x1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/cb;->do:[B

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v4, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget v4, v4, Lnbisdk/gm;->cU:I

    packed-switch v4, :pswitch_data_0

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    iget v4, p0, Lnbisdk/cb;->dq:I

    if-eqz v4, :cond_1

    iget v1, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/cb;->dq:I

    iget-wide v4, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lnbisdk/cb;->dr:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v4, p0, Lnbisdk/cb;->do:[B

    iget v5, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lnbisdk/cb;->dp:I

    aget-byte v4, v4, v5

    iput v4, v1, Lnbisdk/gm;->bj:I

    and-int/lit8 v1, v4, 0xf

    const/16 v4, 0x8

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iput v12, v1, Lnbisdk/gm;->cU:I

    const-string v1, "unknown compression method"

    iput-object v1, p0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget v1, v1, Lnbisdk/gm;->bj:I

    shr-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    iget-object v4, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget v4, v4, Lnbisdk/gm;->da:I

    if-le v1, v4, :cond_5

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iput v12, v1, Lnbisdk/gm;->cU:I

    const-string v1, "invalid window size"

    iput-object v1, p0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iput v3, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    :pswitch_1
    iget v4, p0, Lnbisdk/cb;->dq:I

    if-eqz v4, :cond_1

    iget v1, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/cb;->dq:I

    iget-wide v4, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lnbisdk/cb;->dr:J

    iget-object v1, p0, Lnbisdk/cb;->do:[B

    iget v4, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnbisdk/cb;->dp:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v4, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget v4, v4, Lnbisdk/gm;->bj:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x1f

    if-eqz v4, :cond_6

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iput v12, v1, Lnbisdk/gm;->cU:I

    const-string v1, "incorrect header check"

    iput-object v1, p0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move v1, v0

    goto/16 :goto_1

    :cond_6
    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_7

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/4 v4, 0x7

    iput v4, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/4 v2, 0x2

    iput v2, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    :pswitch_2
    iget v2, p0, Lnbisdk/cb;->dq:I

    if-eqz v2, :cond_1

    iget v1, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/cb;->dq:I

    iget-wide v1, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lnbisdk/cb;->dr:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v2, p0, Lnbisdk/cb;->do:[B

    iget v3, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnbisdk/cb;->dp:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lnbisdk/gm;->kT:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/4 v2, 0x3

    iput v2, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    :pswitch_3
    iget v2, p0, Lnbisdk/cb;->dq:I

    if-eqz v2, :cond_1

    iget v1, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/cb;->dq:I

    iget-wide v1, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lnbisdk/cb;->dr:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-wide v2, v1, Lnbisdk/gm;->kT:J

    iget-object v4, p0, Lnbisdk/cb;->do:[B

    iget v5, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lnbisdk/cb;->dp:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lnbisdk/gm;->kT:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/4 v2, 0x4

    iput v2, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    :pswitch_4
    iget v2, p0, Lnbisdk/cb;->dq:I

    if-eqz v2, :cond_1

    iget v1, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/cb;->dq:I

    iget-wide v1, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lnbisdk/cb;->dr:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-wide v2, v1, Lnbisdk/gm;->kT:J

    iget-object v4, p0, Lnbisdk/cb;->do:[B

    iget v5, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lnbisdk/cb;->dp:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lnbisdk/gm;->kT:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/4 v2, 0x5

    iput v2, v1, Lnbisdk/gm;->cU:I

    :goto_2
    iget v1, p0, Lnbisdk/cb;->dq:I

    if-nez v1, :cond_8

    move v1, v0

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnbisdk/cb;->dq:I

    iget-wide v0, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lnbisdk/cb;->dr:J

    iget-object v0, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-wide v1, v0, Lnbisdk/gm;->kT:J

    iget-object v3, p0, Lnbisdk/cb;->do:[B

    iget v4, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnbisdk/cb;->dp:I

    aget-byte v3, v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lnbisdk/gm;->kT:J

    iget-object v0, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/4 v1, 0x6

    iput v1, v0, Lnbisdk/gm;->cU:I

    const/4 v1, 0x2

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iput v12, v0, Lnbisdk/gm;->cU:I

    const-string v0, "need dictionary"

    iput-object v0, p0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move v1, v2

    goto/16 :goto_0

    :pswitch_6
    iget-object v4, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v4, v4, Lnbisdk/gm;->kU:Lnbisdk/gi;

    invoke-virtual {v4, p0, v1}, Lnbisdk/gi;->a(Lnbisdk/cb;I)I

    move-result v1

    const/4 v4, -0x3

    if-ne v1, v4, :cond_9

    iget-object v4, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iput v12, v4, Lnbisdk/gm;->cU:I

    goto/16 :goto_1

    :cond_9
    if-nez v1, :cond_a

    move v1, v0

    :cond_a
    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v1, v1, Lnbisdk/gm;->kU:Lnbisdk/gi;

    iget-object v4, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v4, v4, Lnbisdk/gm;->kS:[J

    invoke-virtual {v1, p0, v4}, Lnbisdk/gi;->a(Lnbisdk/cb;[J)V

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget v1, v1, Lnbisdk/gm;->cZ:I

    if-eqz v1, :cond_b

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/16 v4, 0xc

    iput v4, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/16 v4, 0x8

    iput v4, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    :pswitch_7
    iget v4, p0, Lnbisdk/cb;->dq:I

    if-eqz v4, :cond_1

    iget v1, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/cb;->dq:I

    iget-wide v4, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lnbisdk/cb;->dr:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v4, p0, Lnbisdk/cb;->do:[B

    iget v5, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lnbisdk/cb;->dp:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    int-to-long v4, v4

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    iput-wide v4, v1, Lnbisdk/gm;->kT:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/16 v4, 0x9

    iput v4, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    :pswitch_8
    iget v4, p0, Lnbisdk/cb;->dq:I

    if-eqz v4, :cond_1

    iget v1, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/cb;->dq:I

    iget-wide v4, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lnbisdk/cb;->dr:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-wide v4, v1, Lnbisdk/gm;->kT:J

    iget-object v6, p0, Lnbisdk/cb;->do:[B

    iget v7, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lnbisdk/cb;->dp:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    int-to-long v6, v6

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v1, Lnbisdk/gm;->kT:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/16 v4, 0xa

    iput v4, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    :pswitch_9
    iget v4, p0, Lnbisdk/cb;->dq:I

    if-eqz v4, :cond_1

    iget v1, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/cb;->dq:I

    iget-wide v4, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lnbisdk/cb;->dr:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-wide v4, v1, Lnbisdk/gm;->kT:J

    iget-object v6, p0, Lnbisdk/cb;->do:[B

    iget v7, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lnbisdk/cb;->dp:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v1, Lnbisdk/gm;->kT:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/16 v4, 0xb

    iput v4, v1, Lnbisdk/gm;->cU:I

    move v1, v0

    :pswitch_a
    iget v4, p0, Lnbisdk/cb;->dq:I

    if-eqz v4, :cond_1

    iget v1, p0, Lnbisdk/cb;->dq:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/cb;->dq:I

    iget-wide v4, p0, Lnbisdk/cb;->dr:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lnbisdk/cb;->dr:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-wide v4, v1, Lnbisdk/gm;->kT:J

    iget-object v6, p0, Lnbisdk/cb;->do:[B

    iget v7, p0, Lnbisdk/cb;->dp:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lnbisdk/cb;->dp:I

    aget-byte v6, v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v1, Lnbisdk/gm;->kT:J

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v1, v1, Lnbisdk/gm;->kS:[J

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    long-to-int v1, v4

    iget-object v4, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-wide v4, v4, Lnbisdk/gm;->kT:J

    long-to-int v4, v4

    if-eq v1, v4, :cond_c

    iget-object v1, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iput v12, v1, Lnbisdk/gm;->cU:I

    const-string v1, "incorrect data check"

    iput-object v1, p0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move v1, v0

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    const/16 v1, 0xc

    iput v1, v0, Lnbisdk/gm;->cU:I

    :pswitch_b
    move v1, v3

    goto/16 :goto_0

    :pswitch_c
    const/4 v1, -0x3

    goto/16 :goto_0

    :pswitch_d
    move v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method final a(Lnbisdk/cb;I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p1, Lnbisdk/cb;->dw:Ljava/lang/String;

    iput-object v0, p0, Lnbisdk/gm;->kU:Lnbisdk/gi;

    iput v2, p0, Lnbisdk/gm;->cZ:I

    if-gez p2, :cond_0

    neg-int p2, p2

    iput v5, p0, Lnbisdk/gm;->cZ:I

    :cond_0
    const/16 v1, 0x8

    if-lt p2, v1, :cond_1

    const/16 v1, 0xf

    if-le p2, v1, :cond_4

    :cond_1
    iget-object v1, p0, Lnbisdk/gm;->kU:Lnbisdk/gi;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnbisdk/gm;->kU:Lnbisdk/gi;

    invoke-virtual {v1, p1}, Lnbisdk/gi;->a(Lnbisdk/cb;)V

    :cond_2
    iput-object v0, p0, Lnbisdk/gm;->kU:Lnbisdk/gi;

    const/4 v2, -0x2

    :cond_3
    :goto_0
    return v2

    :cond_4
    iput p2, p0, Lnbisdk/gm;->da:I

    iget-object v1, p1, Lnbisdk/cb;->dx:Lnbisdk/gm;

    new-instance v3, Lnbisdk/gi;

    iget-object v4, p1, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget v4, v4, Lnbisdk/gm;->cZ:I

    if-eqz v4, :cond_5

    move-object p0, v0

    :cond_5
    shl-int v4, v5, p2

    invoke-direct {v3, p1, p0, v4}, Lnbisdk/gi;-><init>(Lnbisdk/cb;Ljava/lang/Object;I)V

    iput-object v3, v1, Lnbisdk/gm;->kU:Lnbisdk/gi;

    if-eqz p1, :cond_3

    iget-object v1, p1, Lnbisdk/cb;->dx:Lnbisdk/gm;

    if-eqz v1, :cond_3

    const-wide/16 v3, 0x0

    iput-wide v3, p1, Lnbisdk/cb;->dv:J

    iput-wide v3, p1, Lnbisdk/cb;->dr:J

    iput-object v0, p1, Lnbisdk/cb;->dw:Ljava/lang/String;

    iget-object v3, p1, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v1, p1, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget v1, v1, Lnbisdk/gm;->cZ:I

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    :goto_1
    iput v1, v3, Lnbisdk/gm;->cU:I

    iget-object v1, p1, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v1, v1, Lnbisdk/gm;->kU:Lnbisdk/gi;

    invoke-virtual {v1, p1, v0}, Lnbisdk/gi;->a(Lnbisdk/cb;[J)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

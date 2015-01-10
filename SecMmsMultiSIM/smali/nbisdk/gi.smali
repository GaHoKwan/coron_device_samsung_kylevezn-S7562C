.class final Lnbisdk/gi;
.super Ljava/lang/Object;


# static fields
.field private static hA:[I

.field private static final kA:[I


# instance fields
.field private aO:Ljava/lang/Object;

.field private ay:I

.field private bE:I

.field private cC:I

.field private cJ:I

.field private cT:I

.field cZ:I

.field da:I

.field dc:I

.field ir:I

.field is:I

.field private kB:[I

.field private kC:[I

.field private kD:[I

.field private kE:Lnbisdk/gj;

.field private kF:[I

.field kG:[B

.field private kH:J

.field private kI:Lnbisdk/gl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnbisdk/gi;->kA:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnbisdk/gi;->hA:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x1t 0x0t 0x0t
        0xfft 0x3t 0x0t 0x0t
        0xfft 0x7t 0x0t 0x0t
        0xfft 0xft 0x0t 0x0t
        0xfft 0x1ft 0x0t 0x0t
        0xfft 0x3ft 0x0t 0x0t
        0xfft 0x7ft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Lnbisdk/cb;Ljava/lang/Object;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lnbisdk/gi;->kC:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lnbisdk/gi;->kD:[I

    new-instance v0, Lnbisdk/gj;

    invoke-direct {v0}, Lnbisdk/gj;-><init>()V

    iput-object v0, p0, Lnbisdk/gi;->kE:Lnbisdk/gj;

    new-instance v0, Lnbisdk/gl;

    invoke-direct {v0}, Lnbisdk/gl;-><init>()V

    iput-object v0, p0, Lnbisdk/gi;->kI:Lnbisdk/gl;

    const/16 v0, 0x10e0

    new-array v0, v0, [I

    iput-object v0, p0, Lnbisdk/gi;->kF:[I

    new-array v0, p3, [B

    iput-object v0, p0, Lnbisdk/gi;->kG:[B

    iput p3, p0, Lnbisdk/gi;->dc:I

    iput-object p2, p0, Lnbisdk/gi;->aO:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/gi;->cT:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnbisdk/gi;->a(Lnbisdk/cb;[J)V

    return-void
.end method


# virtual methods
.method final a(Lnbisdk/cb;I)I
    .locals 18

    move-object/from16 v0, p1

    iget v6, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p0

    iget v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iget v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->ir:I

    if-ge v4, v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->ir:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    :goto_0
    move v10, v3

    move v13, v4

    move v3, v5

    move v4, v6

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->cT:I

    packed-switch v5, :pswitch_data_0

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/cb;->dp:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    const/4 v3, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    :goto_2
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->dc:I

    sub-int/2addr v3, v4

    goto :goto_0

    :goto_3
    const/4 v3, 0x3

    if-ge v14, v3, :cond_2

    if-eqz v11, :cond_1

    const/16 p2, 0x0

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v4, v12, 0x1

    aget-byte v3, v3, v12

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v14

    or-int/2addr v15, v3

    add-int/lit8 v14, v14, 0x8

    move v12, v4

    goto :goto_3

    :cond_1
    move-object/from16 v0, p0

    iput v15, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v14, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v11, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/cb;->dp:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v12, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p0 .. p2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto :goto_2

    :cond_2
    and-int/lit8 v3, v15, 0x7

    and-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/gi;->cC:I

    ushr-int/lit8 v3, v3, 0x1

    packed-switch v3, :pswitch_data_1

    move v3, v11

    move v4, v12

    move v7, v14

    move v8, v15

    goto/16 :goto_1

    :pswitch_0
    ushr-int/lit8 v3, v15, 0x3

    add-int/lit8 v4, v14, -0x3

    and-int/lit8 v6, v4, 0x7

    ushr-int v5, v3, v6

    sub-int v3, v4, v6

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/gi;->cT:I

    move v4, v12

    move v7, v3

    move v8, v5

    move v3, v11

    goto/16 :goto_1

    :pswitch_1
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v3, 0x1

    new-array v5, v3, [I

    const/4 v3, 0x1

    new-array v6, v3, [[I

    const/4 v3, 0x1

    new-array v8, v3, [[I

    invoke-static {v4, v5, v6, v8}, Lnbisdk/gl;->a([I[I[[I[[I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kE:Lnbisdk/gj;

    const/4 v7, 0x0

    aget v4, v4, v7

    const/4 v7, 0x0

    aget v5, v5, v7

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lnbisdk/gj;->a(II[II[II)V

    ushr-int/lit8 v5, v15, 0x3

    add-int/lit8 v3, v14, -0x3

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/gi;->cT:I

    move v4, v12

    move v7, v3

    move v8, v5

    move v3, v11

    goto/16 :goto_1

    :pswitch_2
    ushr-int/lit8 v5, v15, 0x3

    add-int/lit8 v3, v14, -0x3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/gi;->cT:I

    move v4, v12

    move v7, v3

    move v8, v5

    move v3, v11

    goto/16 :goto_1

    :pswitch_3
    ushr-int/lit8 v3, v15, 0x3

    add-int/lit8 v4, v14, -0x3

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->cT:I

    const-string v5, "invalid block type"

    move-object/from16 v0, p1

    iput-object v5, v0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v11, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/cb;->dp:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v12, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :goto_4
    :pswitch_4
    const/16 v5, 0x20

    if-ge v7, v5, :cond_4

    if-eqz v3, :cond_3

    const/16 p2, 0x0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v8, v4

    add-int/lit8 v7, v7, 0x8

    move v4, v5

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/cb;->dp:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p0 .. p2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_4
    xor-int/lit8 v5, v8, -0x1

    ushr-int/lit8 v5, v5, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    const v6, 0xffff

    and-int/2addr v6, v8

    if-eq v5, v6, :cond_5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->cT:I

    const-string v5, "invalid stored block lengths"

    move-object/from16 v0, p1

    iput-object v5, v0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/cb;->dp:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_5
    const v5, 0xffff

    and-int/2addr v5, v8

    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->ay:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lnbisdk/gi;->ay:I

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    :goto_5
    move-object/from16 v0, p0

    iput v6, v0, Lnbisdk/gi;->cT:I

    move v7, v5

    move v8, v5

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lnbisdk/gi;->cC:I

    if-eqz v6, :cond_7

    const/4 v6, 0x7

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    :pswitch_5
    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/cb;->dp:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p0 .. p2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_8
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->dc:I

    if-ne v13, v5, :cond_9

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->ir:I

    if-eqz v5, :cond_9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->ir:I

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->ir:I

    add-int/lit8 v5, v5, -0x1

    :goto_6
    move v10, v5

    :cond_9
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p0 .. p2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v6

    move-object/from16 v0, p0

    iget v13, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->ir:I

    if-ge v13, v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->ir:I

    sub-int/2addr v5, v13

    add-int/lit8 v5, v5, -0x1

    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gi;->dc:I

    if-ne v13, v9, :cond_31

    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gi;->ir:I

    if-eqz v9, :cond_31

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->ir:I

    if-lez v5, :cond_c

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->ir:I

    add-int/lit8 v5, v5, -0x1

    :goto_8
    move v10, v5

    :goto_9
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v7, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/cb;->dp:I

    sub-int v3, v4, v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    move-object/from16 v0, p1

    iput-wide v7, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->dc:I

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->dc:I

    sub-int/2addr v5, v13

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->dc:I

    goto :goto_8

    :cond_d
    const/16 p2, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->ay:I

    if-le v5, v3, :cond_e

    move v5, v3

    :cond_e
    if-le v5, v10, :cond_30

    move v9, v10

    :goto_a
    move-object/from16 v0, p1

    iget-object v5, v0, Lnbisdk/cb;->do:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gi;->kG:[B

    invoke-static {v5, v4, v6, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v4, v9

    sub-int v5, v3, v9

    add-int v4, v13, v9

    sub-int v3, v10, v9

    move-object/from16 v0, p0

    iget v10, v0, Lnbisdk/gi;->ay:I

    sub-int v9, v10, v9

    move-object/from16 v0, p0

    iput v9, v0, Lnbisdk/gi;->ay:I

    if-nez v9, :cond_2f

    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gi;->cC:I

    if-eqz v9, :cond_f

    const/4 v9, 0x7

    :goto_b
    move-object/from16 v0, p0

    iput v9, v0, Lnbisdk/gi;->cT:I

    move v10, v3

    move v13, v4

    move v3, v5

    move v4, v6

    goto/16 :goto_1

    :cond_f
    const/4 v9, 0x0

    goto :goto_b

    :goto_c
    :pswitch_6
    const/16 v5, 0xe

    if-ge v7, v5, :cond_11

    if-eqz v3, :cond_10

    const/16 p2, 0x0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v8, v4

    add-int/lit8 v7, v7, 0x8

    move v4, v5

    goto :goto_c

    :cond_10
    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/cb;->dp:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p0 .. p2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_11
    and-int/lit16 v5, v8, 0x3fff

    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->cJ:I

    and-int/lit8 v6, v5, 0x1f

    const/16 v9, 0x1d

    if-gt v6, v9, :cond_12

    shr-int/lit8 v6, v5, 0x5

    and-int/lit8 v6, v6, 0x1f

    const/16 v9, 0x1d

    if-le v6, v9, :cond_13

    :cond_12
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->cT:I

    const-string v5, "too many length or distance symbols"

    move-object/from16 v0, p1

    iput-object v5, v0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/cb;->dp:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_13
    and-int/lit8 v6, v5, 0x1f

    add-int/lit16 v6, v6, 0x102

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x1f

    add-int/2addr v6, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/gi;->kB:[I

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/gi;->kB:[I

    array-length v5, v5

    if-ge v5, v6, :cond_16

    :cond_14
    new-array v5, v6, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lnbisdk/gi;->kB:[I

    :cond_15
    ushr-int/lit8 v8, v8, 0xe

    add-int/lit8 v7, v7, -0xe

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->bE:I

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->cT:I

    :pswitch_7
    move v9, v3

    move v10, v4

    move v11, v7

    move v12, v8

    :goto_d
    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->bE:I

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/gi;->cJ:I

    ushr-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_19

    move v3, v9

    move v4, v10

    :goto_e
    const/4 v5, 0x3

    if-ge v11, v5, :cond_18

    if-eqz v3, :cond_17

    const/16 p2, 0x0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v10, v4, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v11

    or-int/2addr v12, v4

    add-int/lit8 v11, v11, 0x8

    move v4, v10

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    :goto_f
    if-ge v5, v6, :cond_15

    move-object/from16 v0, p0

    iget-object v9, v0, Lnbisdk/gi;->kB:[I

    const/4 v10, 0x0

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_17
    move-object/from16 v0, p0

    iput v12, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v11, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/cb;->dp:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p0 .. p2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/gi;->kB:[I

    sget-object v6, Lnbisdk/gi;->hA:[I

    move-object/from16 v0, p0

    iget v7, v0, Lnbisdk/gi;->bE:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->bE:I

    aget v6, v6, v7

    and-int/lit8 v7, v12, 0x7

    aput v7, v5, v6

    ushr-int/lit8 v8, v12, 0x3

    add-int/lit8 v7, v11, -0x3

    move v9, v3

    move v10, v4

    move v11, v7

    move v12, v8

    goto :goto_d

    :cond_19
    :goto_10
    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->bE:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kB:[I

    sget-object v4, Lnbisdk/gi;->hA:[I

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->bE:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lnbisdk/gi;->bE:I

    aget v4, v4, v5

    const/4 v5, 0x0

    aput v5, v3, v4

    goto :goto_10

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kC:[I

    const/4 v4, 0x0

    const/4 v5, 0x7

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kI:Lnbisdk/gl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnbisdk/gi;->kB:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/gi;->kC:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gi;->kD:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnbisdk/gi;->kF:[I

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lnbisdk/gl;->a([I[I[I[ILnbisdk/cb;)I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lnbisdk/gi;->kB:[I

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/gi;->cT:I

    :cond_1b
    move-object/from16 v0, p0

    iput v12, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v11, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v9, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v6, v0, Lnbisdk/cb;->dp:I

    sub-int v6, v10, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v10, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/gi;->bE:I

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/gi;->cT:I

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    :goto_11
    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->cJ:I

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/gi;->bE:I

    and-int/lit8 v5, v3, 0x1f

    add-int/lit16 v5, v5, 0x102

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v5

    if-ge v4, v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kC:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move v9, v14

    move v10, v15

    move/from16 v4, v16

    move/from16 v5, v17

    :goto_12
    if-ge v4, v3, :cond_1e

    if-eqz v9, :cond_1d

    const/16 p2, 0x0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v15, v10, 0x1

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x8

    move v10, v15

    goto :goto_12

    :cond_1d
    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v9, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/cb;->dp:I

    sub-int v5, v10, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v10, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p0 .. p2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gi;->kF:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnbisdk/gi;->kD:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sget-object v8, Lnbisdk/gi;->kA:[I

    aget v3, v8, v3

    and-int/2addr v3, v5

    add-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v8, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kF:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gi;->kD:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-object v7, Lnbisdk/gi;->kA:[I

    aget v7, v7, v8

    and-int/2addr v7, v5

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v14, v3, v6

    const/16 v3, 0x10

    if-ge v14, v3, :cond_1f

    ushr-int v12, v5, v8

    sub-int v11, v4, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kB:[I

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/gi;->bE:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->bE:I

    aput v14, v3, v4

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_11

    :cond_1f
    const/16 v3, 0x12

    if-ne v14, v3, :cond_20

    const/4 v3, 0x7

    move v7, v3

    :goto_13
    const/16 v3, 0x12

    if-ne v14, v3, :cond_21

    const/16 v3, 0xb

    :goto_14
    move v6, v5

    move v5, v4

    :goto_15
    add-int v4, v8, v7

    if-ge v5, v4, :cond_23

    if-eqz v9, :cond_22

    const/16 p2, 0x0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v4, v10, 0x1

    aget-byte v10, v11, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v5

    or-int/2addr v6, v10

    add-int/lit8 v5, v5, 0x8

    move v10, v4

    goto :goto_15

    :cond_20
    add-int/lit8 v3, v14, -0xe

    move v7, v3

    goto :goto_13

    :cond_21
    const/4 v3, 0x3

    goto :goto_14

    :cond_22
    move-object/from16 v0, p0

    iput v6, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v5, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v9, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/cb;->dp:I

    sub-int v5, v10, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v10, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p0 .. p2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_23
    ushr-int/2addr v6, v8

    sub-int/2addr v5, v8

    sget-object v4, Lnbisdk/gi;->kA:[I

    aget v4, v4, v7

    and-int/2addr v4, v6

    add-int/2addr v4, v3

    ushr-int v12, v6, v7

    sub-int v11, v5, v7

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->bE:I

    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->cJ:I

    add-int v6, v5, v4

    and-int/lit8 v7, v3, 0x1f

    add-int/lit16 v7, v7, 0x102

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v7

    if-gt v6, v3, :cond_24

    const/16 v3, 0x10

    if-ne v14, v3, :cond_25

    if-gtz v5, :cond_25

    :cond_24
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lnbisdk/gi;->kB:[I

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/gi;->cT:I

    const-string v3, "invalid bit length repeat"

    move-object/from16 v0, p1

    iput-object v3, v0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v12, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v11, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v9, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/cb;->dp:I

    sub-int v5, v10, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v10, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_25
    const/16 v3, 0x10

    if-ne v14, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kB:[I

    add-int/lit8 v6, v5, -0x1

    aget v3, v3, v6

    :goto_16
    move-object/from16 v0, p0

    iget-object v7, v0, Lnbisdk/gi;->kB:[I

    add-int/lit8 v6, v5, 0x1

    aput v3, v7, v5

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2e

    move-object/from16 v0, p0

    iput v6, v0, Lnbisdk/gi;->bE:I

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_11

    :cond_26
    const/4 v3, 0x0

    goto :goto_16

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kD:[I

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    const/4 v3, 0x1

    new-array v7, v3, [I

    const/4 v3, 0x1

    new-array v8, v3, [I

    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x1

    new-array v10, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v7, v3

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v8, v3

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/gi;->cJ:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kI:Lnbisdk/gl;

    and-int/lit8 v4, v5, 0x1f

    add-int/lit16 v4, v4, 0x101

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gi;->kB:[I

    move-object/from16 v0, p0

    iget-object v11, v0, Lnbisdk/gi;->kF:[I

    move-object/from16 v12, p1

    invoke-virtual/range {v3 .. v12}, Lnbisdk/gl;->a(II[I[I[I[I[I[ILnbisdk/cb;)I

    move-result v3

    if-eqz v3, :cond_29

    const/4 v4, -0x3

    if-ne v3, v4, :cond_28

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lnbisdk/gi;->kB:[I

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/gi;->cT:I

    :cond_28
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnbisdk/gi;->da:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v14, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v6, v0, Lnbisdk/cb;->dp:I

    sub-int v6, v15, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v15, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kE:Lnbisdk/gj;

    const/4 v4, 0x0

    aget v4, v7, v4

    const/4 v5, 0x0

    aget v5, v8, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gi;->kF:[I

    const/4 v7, 0x0

    aget v7, v9, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lnbisdk/gi;->kF:[I

    const/4 v9, 0x0

    aget v9, v10, v9

    invoke-virtual/range {v3 .. v9}, Lnbisdk/gj;->a(II[II[II)V

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/gi;->cT:I

    :goto_17
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnbisdk/gi;->da:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v14, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/cb;->dp:I

    sub-int v5, v15, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v15, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/gi;->kE:Lnbisdk/gj;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v3, v0, v1, v2}, Lnbisdk/gj;->a(Lnbisdk/gi;Lnbisdk/cb;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_2a
    const/16 p2, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p0

    iget v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iget v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->ir:I

    if-ge v4, v3, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->ir:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    :goto_18
    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gi;->cC:I

    if-nez v9, :cond_2c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lnbisdk/gi;->cT:I

    move v10, v3

    move v13, v4

    move v3, v5

    move v4, v6

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    iget v3, v0, Lnbisdk/gi;->dc:I

    sub-int/2addr v3, v4

    goto :goto_18

    :cond_2c
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/gi;->cT:I

    :goto_19
    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p0 .. p2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v13, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/gi;->ir:I

    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gi;->is:I

    if-eq v4, v9, :cond_2d

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v5, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v7, v0, Lnbisdk/cb;->dp:I

    sub-int v7, v6, v7

    int-to-long v7, v7

    add-long/2addr v4, v7

    move-object/from16 v0, p1

    iput-wide v4, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_2d
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/gi;->cT:I

    :goto_1a
    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v5, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/cb;->dp:I

    sub-int v5, v6, v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    move-object/from16 v0, p1

    iput-wide v3, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p0

    iput v7, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/cb;->dp:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p0

    iput v13, v0, Lnbisdk/gi;->is:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v3

    goto/16 :goto_2

    :cond_2e
    move v5, v6

    goto/16 :goto_16

    :cond_2f
    move v10, v3

    move v13, v4

    move v3, v5

    move v4, v6

    goto/16 :goto_1

    :cond_30
    move v9, v5

    goto/16 :goto_a

    :cond_31
    move v10, v5

    goto/16 :goto_9

    :pswitch_9
    move v14, v3

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_11

    :pswitch_a
    move v14, v3

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_17

    :pswitch_b
    move v5, v3

    move v6, v4

    move v4, v13

    goto/16 :goto_19

    :pswitch_c
    move v5, v3

    move v6, v4

    goto/16 :goto_1a

    :pswitch_d
    move v11, v3

    move v12, v4

    move v14, v7

    move v15, v8

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final a(Lnbisdk/cb;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnbisdk/gi;->a(Lnbisdk/cb;[J)V

    iput-object v0, p0, Lnbisdk/gi;->kG:[B

    iput-object v0, p0, Lnbisdk/gi;->kF:[I

    return-void
.end method

.method final a(Lnbisdk/cb;[J)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lnbisdk/gi;->kH:J

    aput-wide v0, p2, v3

    :cond_0
    iput v3, p0, Lnbisdk/gi;->cT:I

    iput v3, p0, Lnbisdk/gi;->cZ:I

    iput v3, p0, Lnbisdk/gi;->da:I

    iput v3, p0, Lnbisdk/gi;->is:I

    iput v3, p0, Lnbisdk/gi;->ir:I

    iget-object v0, p0, Lnbisdk/gi;->aO:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lnbisdk/gb;->a(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/gi;->kH:J

    :cond_1
    return-void
.end method

.method final b(Lnbisdk/cb;I)I
    .locals 9

    const/4 v8, -0x5

    const/4 v1, 0x0

    iget v2, p1, Lnbisdk/cb;->dt:I

    iget v3, p0, Lnbisdk/gi;->ir:I

    iget v0, p0, Lnbisdk/gi;->is:I

    if-gt v3, v0, :cond_7

    iget v0, p0, Lnbisdk/gi;->is:I

    :goto_0
    sub-int/2addr v0, v3

    iget v4, p1, Lnbisdk/cb;->du:I

    if-le v0, v4, :cond_0

    iget v0, p1, Lnbisdk/cb;->du:I

    :cond_0
    if-eqz v0, :cond_1

    if-ne p2, v8, :cond_1

    move p2, v1

    :cond_1
    iget v4, p1, Lnbisdk/cb;->du:I

    sub-int/2addr v4, v0

    iput v4, p1, Lnbisdk/cb;->du:I

    iget-wide v4, p1, Lnbisdk/cb;->dv:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lnbisdk/cb;->dv:J

    iget-object v4, p0, Lnbisdk/gi;->aO:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lnbisdk/gi;->kH:J

    iget-object v6, p0, Lnbisdk/gi;->kG:[B

    invoke-static {v4, v5, v6, v3, v0}, Lnbisdk/gb;->a(J[BII)J

    move-result-wide v4

    iput-wide v4, p0, Lnbisdk/gi;->kH:J

    :cond_2
    iget-object v4, p0, Lnbisdk/gi;->kG:[B

    iget-object v5, p1, Lnbisdk/cb;->ds:[B

    invoke-static {v4, v3, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    add-int/2addr v0, v3

    iget v3, p0, Lnbisdk/gi;->dc:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lnbisdk/gi;->is:I

    iget v3, p0, Lnbisdk/gi;->dc:I

    if-ne v0, v3, :cond_3

    iput v1, p0, Lnbisdk/gi;->is:I

    :cond_3
    iget v0, p0, Lnbisdk/gi;->is:I

    iget v3, p1, Lnbisdk/cb;->du:I

    if-le v0, v3, :cond_4

    iget v0, p1, Lnbisdk/cb;->du:I

    :cond_4
    if-eqz v0, :cond_5

    if-ne p2, v8, :cond_5

    move p2, v1

    :cond_5
    iget v3, p1, Lnbisdk/cb;->du:I

    sub-int/2addr v3, v0

    iput v3, p1, Lnbisdk/cb;->du:I

    iget-wide v3, p1, Lnbisdk/cb;->dv:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p1, Lnbisdk/cb;->dv:J

    iget-object v3, p0, Lnbisdk/gi;->aO:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lnbisdk/gi;->kH:J

    iget-object v5, p0, Lnbisdk/gi;->kG:[B

    invoke-static {v3, v4, v5, v1, v0}, Lnbisdk/gb;->a(J[BII)J

    move-result-wide v3

    iput-wide v3, p0, Lnbisdk/gi;->kH:J

    :cond_6
    iget-object v3, p0, Lnbisdk/gi;->kG:[B

    iget-object v4, p1, Lnbisdk/cb;->ds:[B

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v2, v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    iput v1, p1, Lnbisdk/cb;->dt:I

    iput v0, p0, Lnbisdk/gi;->ir:I

    return p2

    :cond_7
    iget v0, p0, Lnbisdk/gi;->dc:I

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_1
.end method

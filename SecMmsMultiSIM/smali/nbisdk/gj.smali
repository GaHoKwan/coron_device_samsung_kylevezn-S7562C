.class final Lnbisdk/gj;
.super Ljava/lang/Object;


# static fields
.field private static final kJ:[I


# instance fields
.field private V:I

.field private bE:I

.field private bj:I

.field private bx:I

.field private cJ:I

.field private cT:I

.field private cU:I

.field private da:I

.field private hC:[I

.field private iq:I

.field private kF:[I

.field private kK:B

.field private kL:B

.field private kM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnbisdk/gj;->kJ:[I

    return-void

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
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/gj;->cJ:I

    return-void
.end method


# virtual methods
.method final a(Lnbisdk/gi;Lnbisdk/cb;I)I
    .locals 21

    move-object/from16 v0, p2

    iget v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p2

    iget v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iget v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    if-ge v3, v2, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_0
    move-object/from16 v0, p0

    iget v8, v0, Lnbisdk/gj;->bx:I

    packed-switch v8, :pswitch_data_0

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    const/4 v2, -0x2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    :goto_1
    return v2

    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->dc:I

    sub-int/2addr v2, v3

    goto :goto_0

    :pswitch_0
    const/16 v8, 0x102

    if-lt v2, v8, :cond_17

    const/16 v8, 0xa

    if-lt v4, v8, :cond_17

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p0

    iget-byte v8, v0, Lnbisdk/gj;->kK:B

    move-object/from16 v0, p0

    iget-byte v9, v0, Lnbisdk/gj;->kL:B

    move-object/from16 v0, p0

    iget-object v14, v0, Lnbisdk/gj;->kM:[I

    move-object/from16 v0, p0

    iget v15, v0, Lnbisdk/gj;->da:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lnbisdk/gj;->kF:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnbisdk/gj;->iq:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p2

    iget v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget v6, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iget v5, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iget v7, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    if-ge v7, v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    :goto_2
    sget-object v10, Lnbisdk/gj;->kJ:[I

    aget v18, v10, v8

    sget-object v8, Lnbisdk/gj;->kJ:[I

    aget v19, v8, v9

    move v8, v2

    move v9, v3

    move v10, v4

    move v3, v5

    move v4, v6

    :goto_3
    const/16 v2, 0x14

    if-ge v3, v2, :cond_2

    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, p2

    iget-object v6, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v5, v10, 0x1

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v3

    or-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x8

    move v9, v2

    move v10, v5

    goto :goto_3

    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->dc:I

    sub-int/2addr v2, v7

    goto :goto_2

    :cond_2
    and-int v6, v4, v18

    add-int v2, v15, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, v14, v2

    if-nez v5, :cond_5

    add-int/lit8 v5, v2, 0x1

    aget v5, v14, v5

    shr-int v6, v4, v5

    add-int/lit8 v4, v2, 0x1

    aget v4, v14, v4

    sub-int v5, v3, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v2, v2, 0x2

    aget v2, v14, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    add-int/lit8 v2, v8, -0x1

    move v7, v4

    move v3, v9

    move v4, v10

    :goto_4
    const/16 v8, 0x102

    if-lt v2, v8, :cond_3

    const/16 v8, 0xa

    if-ge v3, v8, :cond_37

    :cond_3
    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dq:I

    sub-int/2addr v2, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v2, :cond_4

    shr-int/lit8 v2, v5, 0x3

    :cond_4
    add-int/2addr v3, v2

    sub-int/2addr v4, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v5, v2

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v2, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v3, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v5, v0, Lnbisdk/cb;->dp:I

    sub-int v5, v4, v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    move-object/from16 v0, p2

    iput-wide v2, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->is:I

    const/16 p3, 0x0

    :goto_5
    move-object/from16 v0, p2

    iget v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p2

    iget v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p1

    iget v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iget v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    if-ge v3, v2, :cond_15

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-eqz p3, :cond_17

    const/4 v8, 0x1

    move/from16 v0, p3

    if-ne v0, v8, :cond_16

    const/4 v8, 0x7

    :goto_7
    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v11, v2, 0x1

    aget v11, v14, v11

    shr-int/2addr v4, v11

    add-int/lit8 v11, v2, 0x1

    aget v11, v14, v11

    sub-int/2addr v3, v11

    and-int/lit8 v11, v5, 0x10

    if-eqz v11, :cond_10

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v2, v2, 0x2

    aget v2, v14, v2

    sget-object v6, Lnbisdk/gj;->kJ:[I

    aget v6, v6, v5

    and-int/2addr v6, v4

    add-int v13, v2, v6

    shr-int/2addr v4, v5

    sub-int/2addr v3, v5

    :goto_8
    const/16 v2, 0xf

    if-ge v3, v2, :cond_6

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p2

    iget-object v5, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v2, v10, 0x1

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x8

    move v10, v2

    goto :goto_8

    :cond_6
    and-int v6, v4, v19

    add-int v2, v17, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, v16, v2

    :goto_9
    add-int/lit8 v11, v2, 0x1

    aget v11, v16, v11

    shr-int/2addr v4, v11

    add-int/lit8 v11, v2, 0x1

    aget v11, v16, v11

    sub-int/2addr v3, v11

    and-int/lit8 v11, v5, 0x10

    if-eqz v11, :cond_d

    and-int/lit8 v6, v5, 0xf

    move v5, v4

    move v4, v3

    :goto_a
    if-ge v4, v6, :cond_7

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p2

    iget-object v11, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v3, v10, 0x1

    aget-byte v10, v11, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v4

    or-int/2addr v5, v10

    add-int/lit8 v4, v4, 0x8

    move v10, v3

    goto :goto_a

    :cond_7
    add-int/lit8 v2, v2, 0x2

    aget v2, v16, v2

    sget-object v3, Lnbisdk/gj;->kJ:[I

    aget v3, v3, v6

    and-int/2addr v3, v5

    add-int/2addr v2, v3

    shr-int v12, v5, v6

    sub-int v11, v4, v6

    sub-int/2addr v8, v13

    if-lt v7, v2, :cond_9

    sub-int v2, v7, v2

    sub-int v3, v7, v2

    if-lez v3, :cond_8

    const/4 v3, 0x2

    sub-int v4, v7, v2

    if-le v3, v4, :cond_8

    move-object/from16 v0, p1

    iget-object v3, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v5, v7, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v4, v2

    aput-byte v2, v3, v7

    move-object/from16 v0, p1

    iget-object v2, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, v7, v6

    aput-byte v6, v2, v5

    add-int/lit8 v2, v13, -0x2

    :goto_b
    sub-int v5, v3, v4

    if-lez v5, :cond_c

    sub-int v5, v3, v4

    if-le v2, v5, :cond_c

    move v5, v4

    :goto_c
    move-object/from16 v0, p1

    iget-object v7, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v13, v5

    aput-byte v5, v7, v3

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_38

    move v2, v8

    move v7, v4

    move v3, v9

    move v5, v11

    move v6, v12

    move v4, v10

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lnbisdk/gi;->kG:[B

    move-object/from16 v0, p1

    iget-object v4, v0, Lnbisdk/gi;->kG:[B

    const/4 v5, 0x2

    invoke-static {v3, v2, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v7, 0x2

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v2, v13, -0x2

    goto :goto_b

    :cond_9
    sub-int v2, v7, v2

    :cond_a
    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/gi;->dc:I

    add-int/2addr v2, v3

    if-ltz v2, :cond_a

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/gi;->dc:I

    sub-int/2addr v3, v2

    if-le v13, v3, :cond_3a

    sub-int/2addr v13, v3

    sub-int v4, v7, v2

    if-lez v4, :cond_b

    sub-int v4, v7, v2

    if-le v3, v4, :cond_b

    move v4, v3

    move v5, v2

    move v2, v7

    :goto_d
    move-object/from16 v0, p1

    iget-object v7, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lnbisdk/gi;->kG:[B

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v20, v5

    aput-byte v5, v7, v2

    add-int/lit8 v2, v4, -0x1

    if-nez v2, :cond_39

    :goto_e
    const/4 v4, 0x0

    move v2, v13

    goto :goto_b

    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lnbisdk/gi;->kG:[B

    move-object/from16 v0, p1

    iget-object v5, v0, Lnbisdk/gi;->kG:[B

    invoke-static {v4, v2, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v7

    goto :goto_e

    :cond_c
    move-object/from16 v0, p1

    iget-object v5, v0, Lnbisdk/gi;->kG:[B

    move-object/from16 v0, p1

    iget-object v6, v0, Lnbisdk/gi;->kG:[B

    invoke-static {v5, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v7, v3, v2

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    goto/16 :goto_4

    :cond_d
    and-int/lit8 v11, v5, 0x40

    if-nez v11, :cond_e

    add-int/lit8 v2, v2, 0x2

    aget v2, v16, v2

    add-int/2addr v2, v6

    sget-object v6, Lnbisdk/gj;->kJ:[I

    aget v5, v6, v5

    and-int/2addr v5, v4

    add-int v6, v2, v5

    add-int v2, v17, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, v16, v2

    goto/16 :goto_9

    :cond_e
    const-string v2, "invalid distance code"

    move-object/from16 v0, p2

    iput-object v2, v0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dq:I

    sub-int/2addr v2, v9

    shr-int/lit8 v5, v3, 0x3

    if-ge v5, v2, :cond_f

    shr-int/lit8 v2, v3, 0x3

    :cond_f
    add-int v5, v9, v2

    sub-int v6, v10, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v2, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v4, v0, Lnbisdk/cb;->dp:I

    sub-int v4, v6, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v6, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->is:I

    const/16 p3, -0x3

    goto/16 :goto_5

    :cond_10
    and-int/lit8 v11, v5, 0x40

    if-nez v11, :cond_11

    add-int/lit8 v2, v2, 0x2

    aget v2, v14, v2

    add-int/2addr v2, v6

    sget-object v6, Lnbisdk/gj;->kJ:[I

    aget v5, v6, v5

    and-int/2addr v5, v4

    add-int v6, v2, v5

    add-int v2, v15, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, v14, v2

    if-nez v5, :cond_5

    add-int/lit8 v5, v2, 0x1

    aget v5, v14, v5

    shr-int v6, v4, v5

    add-int/lit8 v4, v2, 0x1

    aget v4, v14, v4

    sub-int v5, v3, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v2, v2, 0x2

    aget v2, v14, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    add-int/lit8 v2, v8, -0x1

    move v7, v4

    move v3, v9

    move v4, v10

    goto/16 :goto_4

    :cond_11
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_13

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dq:I

    sub-int/2addr v2, v9

    shr-int/lit8 v5, v3, 0x3

    if-ge v5, v2, :cond_12

    shr-int/lit8 v2, v3, 0x3

    :cond_12
    add-int v5, v9, v2

    sub-int v6, v10, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v2, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v4, v0, Lnbisdk/cb;->dp:I

    sub-int v4, v6, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v6, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->is:I

    const/16 p3, 0x1

    goto/16 :goto_5

    :cond_13
    const-string v2, "invalid literal/length code"

    move-object/from16 v0, p2

    iput-object v2, v0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dq:I

    sub-int/2addr v2, v9

    shr-int/lit8 v5, v3, 0x3

    if-ge v5, v2, :cond_14

    shr-int/lit8 v2, v3, 0x3

    :cond_14
    add-int v5, v9, v2

    sub-int v6, v10, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    move-object/from16 v0, p1

    iput v4, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v2, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v2, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v4, v0, Lnbisdk/cb;->dp:I

    sub-int v4, v6, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v6, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->is:I

    const/16 p3, -0x3

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->dc:I

    sub-int/2addr v2, v3

    goto/16 :goto_6

    :cond_16
    const/16 v8, 0x9

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget-byte v8, v0, Lnbisdk/gj;->kK:B

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bE:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lnbisdk/gj;->kM:[I

    move-object/from16 v0, p0

    iput-object v8, v0, Lnbisdk/gj;->hC:[I

    move-object/from16 v0, p0

    iget v8, v0, Lnbisdk/gj;->da:I

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->cJ:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    :pswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gj;->bE:I

    move v8, v6

    :goto_f
    if-ge v8, v9, :cond_19

    if-eqz v4, :cond_18

    const/16 p3, 0x0

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p2

    iget-object v10, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    add-int/lit8 v5, v8, 0x8

    move v8, v5

    move v5, v6

    goto :goto_f

    :cond_18
    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v8, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p1 .. p3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    iget v6, v0, Lnbisdk/gj;->cJ:I

    sget-object v10, Lnbisdk/gj;->kJ:[I

    aget v9, v10, v9

    and-int/2addr v9, v7

    add-int/2addr v6, v9

    mul-int/lit8 v9, v6, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gj;->hC:[I

    add-int/lit8 v10, v9, 0x1

    aget v6, v6, v10

    ushr-int/2addr v7, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gj;->hC:[I

    add-int/lit8 v10, v9, 0x1

    aget v6, v6, v10

    sub-int v6, v8, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lnbisdk/gj;->hC:[I

    aget v8, v8, v9

    if-nez v8, :cond_1a

    move-object/from16 v0, p0

    iget-object v8, v0, Lnbisdk/gj;->hC:[I

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->cU:I

    const/4 v8, 0x6

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    goto/16 :goto_0

    :cond_1a
    and-int/lit8 v10, v8, 0x10

    if-eqz v10, :cond_1b

    and-int/lit8 v8, v8, 0xf

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bj:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lnbisdk/gj;->hC:[I

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->cT:I

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    goto/16 :goto_0

    :cond_1b
    and-int/lit8 v10, v8, 0x40

    if-nez v10, :cond_1c

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bE:I

    div-int/lit8 v8, v9, 0x3

    move-object/from16 v0, p0

    iget-object v10, v0, Lnbisdk/gj;->hC:[I

    add-int/lit8 v9, v9, 0x2

    aget v9, v10, v9

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->cJ:I

    goto/16 :goto_0

    :cond_1c
    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_1d

    const/4 v8, 0x7

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    goto/16 :goto_0

    :cond_1d
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/gj;->bx:I

    const-string v2, "invalid literal/length code"

    move-object/from16 v0, p2

    iput-object v2, v0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    const/4 v2, -0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gj;->bj:I

    move v8, v6

    :goto_10
    if-ge v8, v9, :cond_1f

    if-eqz v4, :cond_1e

    const/16 p3, 0x0

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p2

    iget-object v10, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    add-int/lit8 v5, v8, 0x8

    move v8, v5

    move v5, v6

    goto :goto_10

    :cond_1e
    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v8, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p1 .. p3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v0, p0

    iget v6, v0, Lnbisdk/gj;->cT:I

    sget-object v10, Lnbisdk/gj;->kJ:[I

    aget v10, v10, v9

    and-int/2addr v10, v7

    add-int/2addr v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Lnbisdk/gj;->cT:I

    shr-int/2addr v7, v9

    sub-int v6, v8, v9

    move-object/from16 v0, p0

    iget-byte v8, v0, Lnbisdk/gj;->kL:B

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bE:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lnbisdk/gj;->kF:[I

    move-object/from16 v0, p0

    iput-object v8, v0, Lnbisdk/gj;->hC:[I

    move-object/from16 v0, p0

    iget v8, v0, Lnbisdk/gj;->iq:I

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->cJ:I

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    :pswitch_3
    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gj;->bE:I

    move v8, v6

    :goto_11
    if-ge v8, v9, :cond_21

    if-eqz v4, :cond_20

    const/16 p3, 0x0

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p2

    iget-object v10, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    add-int/lit8 v5, v8, 0x8

    move v8, v5

    move v5, v6

    goto :goto_11

    :cond_20
    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v8, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p1 .. p3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :cond_21
    move-object/from16 v0, p0

    iget v6, v0, Lnbisdk/gj;->cJ:I

    sget-object v10, Lnbisdk/gj;->kJ:[I

    aget v9, v10, v9

    and-int/2addr v9, v7

    add-int/2addr v6, v9

    mul-int/lit8 v9, v6, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gj;->hC:[I

    add-int/lit8 v10, v9, 0x1

    aget v6, v6, v10

    shr-int/2addr v7, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/gj;->hC:[I

    add-int/lit8 v10, v9, 0x1

    aget v6, v6, v10

    sub-int v6, v8, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lnbisdk/gj;->hC:[I

    aget v8, v8, v9

    and-int/lit8 v10, v8, 0x10

    if-eqz v10, :cond_22

    and-int/lit8 v8, v8, 0xf

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bj:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lnbisdk/gj;->hC:[I

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->V:I

    const/4 v8, 0x4

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    goto/16 :goto_0

    :cond_22
    and-int/lit8 v10, v8, 0x40

    if-nez v10, :cond_23

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bE:I

    div-int/lit8 v8, v9, 0x3

    move-object/from16 v0, p0

    iget-object v10, v0, Lnbisdk/gj;->hC:[I

    add-int/lit8 v9, v9, 0x2

    aget v9, v10, v9

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->cJ:I

    goto/16 :goto_0

    :cond_23
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/gj;->bx:I

    const-string v2, "invalid distance code"

    move-object/from16 v0, p2

    iput-object v2, v0, Lnbisdk/cb;->dw:Ljava/lang/String;

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    const/4 v2, -0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gj;->bj:I

    move v8, v6

    :goto_12
    if-ge v8, v9, :cond_25

    if-eqz v4, :cond_24

    const/16 p3, 0x0

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p2

    iget-object v10, v0, Lnbisdk/cb;->do:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    add-int/lit8 v5, v8, 0x8

    move v8, v5

    move v5, v6

    goto :goto_12

    :cond_24
    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v8, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p1 .. p3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :cond_25
    move-object/from16 v0, p0

    iget v6, v0, Lnbisdk/gj;->V:I

    sget-object v10, Lnbisdk/gj;->kJ:[I

    aget v10, v10, v9

    and-int/2addr v10, v7

    add-int/2addr v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Lnbisdk/gj;->V:I

    shr-int/2addr v7, v9

    sub-int v6, v8, v9

    const/4 v8, 0x5

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    :pswitch_5
    move-object/from16 v0, p0

    iget v8, v0, Lnbisdk/gj;->V:I

    sub-int v8, v3, v8

    :goto_13
    if-gez v8, :cond_27

    move-object/from16 v0, p1

    iget v9, v0, Lnbisdk/gi;->dc:I

    add-int/2addr v8, v9

    goto :goto_13

    :cond_26
    move v9, v3

    move-object/from16 v0, p1

    iget-object v11, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v10, v8, 0x1

    aget-byte v8, v12, v8

    aput-byte v8, v11, v9

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    iget v8, v0, Lnbisdk/gi;->dc:I

    if-ne v10, v8, :cond_36

    const/4 v8, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gj;->cT:I

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iput v9, v0, Lnbisdk/gj;->cT:I

    :cond_27
    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/gj;->cT:I

    if-eqz v9, :cond_2d

    if-nez v2, :cond_26

    move-object/from16 v0, p1

    iget v9, v0, Lnbisdk/gi;->dc:I

    if-ne v3, v9, :cond_28

    move-object/from16 v0, p1

    iget v9, v0, Lnbisdk/gi;->ir:I

    if-eqz v9, :cond_28

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    if-lez v2, :cond_2a

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    add-int/lit8 v2, v2, -0x1

    :cond_28
    :goto_15
    if-nez v2, :cond_26

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p1 .. p3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result p3

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    if-ge v3, v2, :cond_2b

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_16
    move-object/from16 v0, p1

    iget v9, v0, Lnbisdk/gi;->dc:I

    if-ne v3, v9, :cond_29

    move-object/from16 v0, p1

    iget v9, v0, Lnbisdk/gi;->ir:I

    if-eqz v9, :cond_29

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    if-lez v2, :cond_2c

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    add-int/lit8 v2, v2, -0x1

    :cond_29
    :goto_17
    if-nez v2, :cond_26

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p1 .. p3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->dc:I

    goto :goto_15

    :cond_2b
    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->dc:I

    sub-int/2addr v2, v3

    goto :goto_16

    :cond_2c
    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->dc:I

    goto :goto_17

    :cond_2d
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    goto/16 :goto_0

    :pswitch_6
    if-nez v2, :cond_33

    move-object/from16 v0, p1

    iget v8, v0, Lnbisdk/gi;->dc:I

    if-ne v3, v8, :cond_2e

    move-object/from16 v0, p1

    iget v8, v0, Lnbisdk/gi;->ir:I

    if-eqz v8, :cond_2e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    if-lez v2, :cond_30

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    add-int/lit8 v2, v2, -0x1

    :cond_2e
    :goto_18
    if-nez v2, :cond_33

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p1 .. p3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v8

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    if-ge v3, v2, :cond_31

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_19
    move-object/from16 v0, p1

    iget v9, v0, Lnbisdk/gi;->dc:I

    if-ne v3, v9, :cond_2f

    move-object/from16 v0, p1

    iget v9, v0, Lnbisdk/gi;->ir:I

    if-eqz v9, :cond_2f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    if-lez v2, :cond_32

    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->ir:I

    add-int/lit8 v2, v2, -0x1

    :cond_2f
    :goto_1a
    if-nez v2, :cond_33

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v9, v2

    add-long/2addr v6, v9

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :cond_30
    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->dc:I

    goto :goto_18

    :cond_31
    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->dc:I

    sub-int/2addr v2, v3

    goto :goto_19

    :cond_32
    move-object/from16 v0, p1

    iget v2, v0, Lnbisdk/gi;->dc:I

    goto :goto_1a

    :cond_33
    move v8, v3

    const/16 p3, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lnbisdk/gi;->kG:[B

    add-int/lit8 v3, v8, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lnbisdk/gj;->cU:I

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    add-int/lit8 v2, v2, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lnbisdk/gj;->bx:I

    goto/16 :goto_0

    :pswitch_7
    const/4 v2, 0x7

    if-le v6, v2, :cond_34

    add-int/lit8 v6, v6, -0x8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    :cond_34
    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    invoke-virtual/range {p1 .. p3}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    move-object/from16 v0, p1

    iget v3, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p1

    iget v8, v0, Lnbisdk/gi;->ir:I

    move-object/from16 v0, p1

    iget v9, v0, Lnbisdk/gi;->is:I

    if-eq v8, v9, :cond_35

    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v4, v0, Lnbisdk/cb;->dp:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :cond_35
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/gj;->bx:I

    :pswitch_8
    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    iput v7, v0, Lnbisdk/gi;->da:I

    move-object/from16 v0, p1

    iput v6, v0, Lnbisdk/gi;->cZ:I

    move-object/from16 v0, p2

    iput v4, v0, Lnbisdk/cb;->dq:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iget v2, v0, Lnbisdk/cb;->dp:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lnbisdk/cb;->dr:J

    move-object/from16 v0, p2

    iput v5, v0, Lnbisdk/cb;->dp:I

    move-object/from16 v0, p1

    iput v3, v0, Lnbisdk/gi;->is:I

    const/4 v2, -0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lnbisdk/gi;->b(Lnbisdk/cb;I)I

    move-result v2

    goto/16 :goto_1

    :cond_36
    move v8, v10

    goto/16 :goto_14

    :cond_37
    move v8, v2

    move v9, v3

    move v10, v4

    move v3, v5

    move v4, v6

    goto/16 :goto_3

    :cond_38
    move v3, v4

    move v5, v6

    goto/16 :goto_c

    :cond_39
    move v4, v2

    move v5, v6

    move v2, v3

    goto/16 :goto_d

    :cond_3a
    move v3, v7

    move v4, v2

    move v2, v13

    goto/16 :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method final a(II[II[II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/gj;->bx:I

    int-to-byte v0, p1

    iput-byte v0, p0, Lnbisdk/gj;->kK:B

    int-to-byte v0, p2

    iput-byte v0, p0, Lnbisdk/gj;->kL:B

    iput-object p3, p0, Lnbisdk/gj;->kM:[I

    iput p4, p0, Lnbisdk/gj;->da:I

    iput-object p5, p0, Lnbisdk/gj;->kF:[I

    iput p6, p0, Lnbisdk/gj;->iq:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/gj;->hC:[I

    return-void
.end method

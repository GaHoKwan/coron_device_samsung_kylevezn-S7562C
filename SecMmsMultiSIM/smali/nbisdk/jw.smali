.class final Lnbisdk/jw;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/pd;


# instance fields
.field private final pk:[J

.field private pl:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnbisdk/jw;->pk:[J

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/jw;->pl:I

    return-void

    nop

    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public final a(Lnbisdk/ud;I)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p0, Lnbisdk/jw;->pl:I

    or-int/2addr v0, p2

    iput v0, p0, Lnbisdk/jw;->pl:I

    iget-object v0, p0, Lnbisdk/jw;->pk:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, v0, p2

    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lnbisdk/jw;->pk:[J

    aget-wide v0, v0, v3

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lnbisdk/jw;->pk:[J

    aget-wide v0, v0, v4

    iget-object v2, p0, Lnbisdk/jw;->pk:[J

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    new-instance v0, Lnbisdk/ks;

    invoke-direct {v0}, Lnbisdk/ks;-><init>()V

    invoke-virtual {p1, v0}, Lnbisdk/ud;->a(Lnbisdk/pd;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lnbisdk/jw;->pl:I

    invoke-static {v0}, Lnbisdk/qi;->bh(I)Lnbisdk/pd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/ud;->a(Lnbisdk/pd;)V

    goto :goto_0
.end method

.method public final b(Lnbisdk/ud;I)V
    .locals 2

    iget v0, p0, Lnbisdk/jw;->pl:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lnbisdk/jw;->pl:I

    iget v0, p0, Lnbisdk/jw;->pl:I

    invoke-static {v0}, Lnbisdk/qi;->bh(I)Lnbisdk/pd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/ud;->a(Lnbisdk/pd;)V

    return-void
.end method

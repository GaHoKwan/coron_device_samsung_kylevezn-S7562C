.class final Lnbisdk/ks;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/pd;


# instance fields
.field private pl:I

.field private final qi:J

.field private final qj:[J


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lnbisdk/ks;->pl:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/ks;->qi:J

    new-array v0, v2, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnbisdk/ks;->qj:[J

    return-void

    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public final a(Lnbisdk/ud;I)V
    .locals 1

    iget v0, p0, Lnbisdk/ks;->pl:I

    or-int/2addr v0, p2

    iput v0, p0, Lnbisdk/ks;->pl:I

    iget v0, p0, Lnbisdk/ks;->pl:I

    invoke-static {v0}, Lnbisdk/qi;->bh(I)Lnbisdk/pd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/ud;->a(Lnbisdk/pd;)V

    return-void
.end method

.method public final b(Lnbisdk/ud;I)V
    .locals 4

    iget v0, p0, Lnbisdk/ks;->pl:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lnbisdk/ks;->pl:I

    iget-object v0, p0, Lnbisdk/ks;->qj:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, v0, p2

    iget-object v0, p0, Lnbisdk/ks;->qj:[J

    aget-wide v0, v0, p2

    iget-wide v2, p0, Lnbisdk/ks;->qi:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lnbisdk/ks;->pl:I

    invoke-static {v0}, Lnbisdk/qi;->bh(I)Lnbisdk/pd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/ud;->a(Lnbisdk/pd;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lnbisdk/ks;->pl:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnbisdk/ud;->nf()V

    new-instance v0, Lnbisdk/jw;

    invoke-direct {v0}, Lnbisdk/jw;-><init>()V

    invoke-virtual {p1, v0}, Lnbisdk/ud;->a(Lnbisdk/pd;)V

    goto :goto_0
.end method

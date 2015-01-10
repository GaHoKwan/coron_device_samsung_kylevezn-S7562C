.class public final Lnbisdk/nv;
.super Lnbisdk/mv;


# instance fields
.field private buf:[B

.field private eJ:Z

.field private ug:Lnbisdk/cb;

.field private uh:I

.field private ui:I

.field private uj:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lnbisdk/mv;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lnbisdk/cb;

    invoke-direct {v0}, Lnbisdk/cb;-><init>()V

    iput-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    const/16 v0, 0x200

    iput v0, p0, Lnbisdk/nv;->uh:I

    iput v3, p0, Lnbisdk/nv;->ui:I

    iget v0, p0, Lnbisdk/nv;->uh:I

    new-array v0, v0, [B

    iput-object v0, p0, Lnbisdk/nv;->buf:[B

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnbisdk/nv;->uj:[B

    iput-boolean v3, p0, Lnbisdk/nv;->eJ:Z

    iput-object p1, p0, Lnbisdk/mv;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    new-instance v0, Lnbisdk/gm;

    invoke-direct {v0}, Lnbisdk/gm;-><init>()V

    iput-object v0, v1, Lnbisdk/cb;->dx:Lnbisdk/gm;

    iget-object v2, v1, Lnbisdk/cb;->dx:Lnbisdk/gm;

    if-eqz p2, :cond_0

    const/16 v0, -0xf

    :goto_0
    invoke-virtual {v2, v1, v0}, Lnbisdk/gm;->a(Lnbisdk/cb;I)I

    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iget-object v1, p0, Lnbisdk/nv;->buf:[B

    iput-object v1, v0, Lnbisdk/cb;->do:[B

    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iput v3, v0, Lnbisdk/cb;->dp:I

    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iput v3, v0, Lnbisdk/cb;->dq:I

    return-void

    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/mv;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lnbisdk/nv;->uj:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lnbisdk/nv;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/nv;->uj:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iput-object p1, v0, Lnbisdk/cb;->ds:[B

    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iput p2, v0, Lnbisdk/cb;->dt:I

    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iput p3, v0, Lnbisdk/cb;->du:I

    :cond_1
    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iget v0, v0, Lnbisdk/cb;->dq:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lnbisdk/nv;->eJ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iput v1, v0, Lnbisdk/cb;->dp:I

    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iget-object v3, p0, Lnbisdk/mv;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lnbisdk/nv;->buf:[B

    iget v5, p0, Lnbisdk/nv;->uh:I

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    iput v3, v0, Lnbisdk/cb;->dq:I

    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iget v0, v0, Lnbisdk/cb;->dq:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iput v1, v0, Lnbisdk/cb;->dq:I

    iput-boolean v6, p0, Lnbisdk/nv;->eJ:Z

    :cond_2
    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iget-object v3, v0, Lnbisdk/cb;->dx:Lnbisdk/gm;

    if-nez v3, :cond_3

    const/4 v0, -0x2

    :goto_1
    iget-boolean v3, p0, Lnbisdk/nv;->eJ:Z

    if-eqz v3, :cond_4

    const/4 v3, -0x5

    if-ne v0, v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lnbisdk/gm;->b(Lnbisdk/cb;I)I

    move-result v0

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_5

    new-instance v0, Lnbisdk/rv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iget-object v2, v2, Lnbisdk/cb;->dw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/rv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-boolean v3, p0, Lnbisdk/nv;->eJ:Z

    if-nez v3, :cond_6

    if-ne v0, v6, :cond_7

    :cond_6
    iget-object v3, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iget v3, v3, Lnbisdk/cb;->du:I

    if-ne v3, p3, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iget v3, v3, Lnbisdk/cb;->du:I

    if-ne v3, p3, :cond_8

    if-eqz v0, :cond_1

    :cond_8
    iget-object v0, p0, Lnbisdk/nv;->ug:Lnbisdk/cb;

    iget v0, v0, Lnbisdk/cb;->du:I

    sub-int v0, p3, v0

    goto/16 :goto_0
.end method

.method public final skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    const-wide/16 v1, 0x200

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    long-to-int v0, p1

    :cond_0
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lnbisdk/mv;->read([B)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.class Lnbisdk/qj;
.super Lnbisdk/wo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public final n([B)V
    .locals 2

    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lnbisdk/wo;->b(J)V

    invoke-virtual {p0, p1}, Lnbisdk/qj;->o([B)V

    return-void
.end method

.method protected o([B)V
    .locals 3

    iget-object v0, p0, Lnbisdk/wo;->BH:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

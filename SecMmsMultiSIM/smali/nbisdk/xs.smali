.class public final Lnbisdk/xs;
.super Ljava/lang/Object;


# instance fields
.field private cT:I

.field private jc:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/xs;->jc:[B

    iput p2, p0, Lnbisdk/xs;->cT:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/xs;->n([B)V

    return-void
.end method

.method public final n([B)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lnbisdk/xs;->jc:[B

    iget v3, p0, Lnbisdk/xs;->cT:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lnbisdk/xs;->cT:I

    add-int/2addr v0, v1

    iput v0, p0, Lnbisdk/xs;->cT:I

    return-void
.end method

.class public Lnbisdk/ih;
.super Lnbisdk/qa;


# static fields
.field private static final jc:[B


# instance fields
.field private P:[B

.field private bj:I

.field private mJ:Z

.field private mW:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lnbisdk/ih;->jc:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lnbisdk/qa;-><init>()V

    iput-byte v1, p0, Lnbisdk/ih;->mW:B

    sget-object v0, Lnbisdk/ih;->jc:[B

    iput-object v0, p0, Lnbisdk/ih;->P:[B

    const/16 v0, 0xa

    iput v0, p0, Lnbisdk/ih;->bj:I

    iput-boolean v1, p0, Lnbisdk/ih;->mJ:Z

    return-void
.end method


# virtual methods
.method public final H(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ih;->bj:I

    return-void
.end method

.method public final dU()I
    .locals 1

    iget v0, p0, Lnbisdk/ih;->bj:I

    return v0
.end method

.method public final dW()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/ih;->mW:B

    return v0
.end method

.method public final g(B)V
    .locals 0

    iput-byte p1, p0, Lnbisdk/ih;->mW:B

    return-void
.end method

.method public final hV()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/ih;->P:[B

    return-object v0
.end method

.method public final hW()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ih;->mJ:Z

    return v0
.end method

.method public final i([B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ih;->P:[B

    return-void
.end method

.class public final Lnbisdk/uv;
.super Ljava/lang/Object;


# static fields
.field public static AF:B


# instance fields
.field private aH:Z

.field private bq:B

.field private xZ:Lnbisdk/lc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput-byte v0, Lnbisdk/uv;->AF:B

    return-void
.end method

.method public constructor <init>(Lnbisdk/lc;BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/uv;->xZ:Lnbisdk/lc;

    iput-byte p2, p0, Lnbisdk/uv;->bq:B

    iput-boolean p3, p0, Lnbisdk/uv;->aH:Z

    return-void
.end method


# virtual methods
.method public final ba()Lnbisdk/lc;
    .locals 1

    iget-object v0, p0, Lnbisdk/uv;->xZ:Lnbisdk/lc;

    return-object v0
.end method

.method public final getAccuracy()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/uv;->bq:B

    return v0
.end method

.method public final isIncomplete()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/uv;->aH:Z

    return v0
.end method

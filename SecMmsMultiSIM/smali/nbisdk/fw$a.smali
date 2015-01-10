.class public Lnbisdk/fw$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/fw;-><init>(Lcom/nbi/common/NBIContext;Lnbisdk/au;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# instance fields
.field final synthetic jB:Lnbisdk/fw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lnbisdk/fw;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/fw$a;->jB:Lnbisdk/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnbisdk/ze;Ljava/lang/String;J)V
    .locals 5

    const/16 v4, 0x8

    new-array v1, v4, [B

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    ushr-long/2addr p2, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    return-void
.end method

.method public static f(Lnbisdk/ql;Ljava/lang/String;)J
    .locals 4

    invoke-virtual {p0, p1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    new-instance v1, Lnbisdk/xe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long attribute has incorrect length, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/xe;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Lnbisdk/fw$a;->f([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static f([B)J
    .locals 7

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    aget-byte v3, p0, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method


# virtual methods
.method public go()V
    .locals 1

    iget-object v0, p0, Lnbisdk/fw$a;->jB:Lnbisdk/fw;

    invoke-static {v0}, Lnbisdk/fw;->a(Lnbisdk/fw;)V

    return-void
.end method

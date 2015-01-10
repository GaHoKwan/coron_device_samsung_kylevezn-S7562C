.class Lnbisdk/vd;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/al;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final AL:Ljava/lang/String;

.field private final AM:Ljava/lang/String;

.field private AN:Ljava/io/InputStream;

.field private AO:Ljava/io/InputStream;

.field private final mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private final sU:Lnbisdk/cd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lnbisdk/vd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnbisdk/vd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnbisdk/vd;->AN:Ljava/io/InputStream;

    iput-object v0, p0, Lnbisdk/vd;->AO:Ljava/io/InputStream;

    iput-object p3, p0, Lnbisdk/vd;->mName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "directions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/vd;->AL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "directions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/vd;->AM:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/vd;->mContext:Landroid/content/Context;

    new-instance v0, Lnbisdk/cd;

    iget-object v1, p0, Lnbisdk/vd;->mContext:Landroid/content/Context;

    const-string v2, "respak.zip"

    invoke-direct {v0, v1, v2}, Lnbisdk/cd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnbisdk/vd;->sU:Lnbisdk/cd;

    return-void
.end method

.method private br(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    iget-object v1, p0, Lnbisdk/vd;->sU:Lnbisdk/cd;

    iget-object v2, p0, Lnbisdk/vd;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1}, Lnbisdk/cd;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t open resource `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnbisdk/vd;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method private static d(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final aP()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lnbisdk/vd;->AN:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/vd;->AL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnbisdk/vd;->br(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/vd;->AN:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lnbisdk/vd;->AN:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vd;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final nO()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lnbisdk/vd;->AO:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/vd;->AM:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnbisdk/vd;->br(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/vd;->AO:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lnbisdk/vd;->AO:Ljava/io/InputStream;

    return-object v0
.end method

.method public final reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/vd;->AN:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vd;->AN:Ljava/io/InputStream;

    invoke-static {v0}, Lnbisdk/vd;->d(Ljava/io/InputStream;)V

    iput-object v1, p0, Lnbisdk/vd;->AN:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lnbisdk/vd;->AO:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/vd;->AO:Ljava/io/InputStream;

    invoke-static {v0}, Lnbisdk/vd;->d(Ljava/io/InputStream;)V

    iput-object v1, p0, Lnbisdk/vd;->AO:Ljava/io/InputStream;

    :cond_1
    return-void
.end method

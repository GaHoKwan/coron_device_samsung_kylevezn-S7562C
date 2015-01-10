.class public final Lnbisdk/ez;
.super Ljava/lang/Object;


# static fields
.field private static io:Lnbisdk/ez;


# instance fields
.field private dc:I

.field private hX:I

.field private hZ:Z

.field private iA:I

.field private iB:Z

.field private iC:Z

.field private iD:Ljava/lang/String;

.field private iE:Z

.field private iF:Z

.field private ip:I

.field private iq:I

.field private ir:I

.field private is:I

.field private it:I

.field private iu:I

.field private iv:I

.field private iw:I

.field private ix:I

.field private iy:Ljava/lang/String;

.field private iz:Z

.field private mAGPSProvider:Lnbisdk/hv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/ez;->io:Lnbisdk/ez;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lnbisdk/ez;->ip:I

    iput v1, p0, Lnbisdk/ez;->iq:I

    iput v1, p0, Lnbisdk/ez;->dc:I

    iput v1, p0, Lnbisdk/ez;->ir:I

    iput v1, p0, Lnbisdk/ez;->is:I

    iput v1, p0, Lnbisdk/ez;->it:I

    iput v1, p0, Lnbisdk/ez;->iu:I

    iput v1, p0, Lnbisdk/ez;->iv:I

    iput v1, p0, Lnbisdk/ez;->iw:I

    iput v1, p0, Lnbisdk/ez;->hX:I

    iput v1, p0, Lnbisdk/ez;->ix:I

    iput-boolean v1, p0, Lnbisdk/ez;->hZ:Z

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/ez;->iy:Ljava/lang/String;

    iput-boolean v1, p0, Lnbisdk/ez;->iz:Z

    iput v1, p0, Lnbisdk/ez;->iA:I

    iput-boolean v2, p0, Lnbisdk/ez;->iB:Z

    iput-boolean v1, p0, Lnbisdk/ez;->iC:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ez;->mAGPSProvider:Lnbisdk/hv;

    iput-boolean v2, p0, Lnbisdk/ez;->iE:Z

    iput-boolean v1, p0, Lnbisdk/ez;->iF:Z

    invoke-direct {p0}, Lnbisdk/ez;->P()V

    return-void
.end method

.method private constructor <init>(Lnbisdk/ez;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lnbisdk/ez;->ip:I

    iput v1, p0, Lnbisdk/ez;->iq:I

    iput v1, p0, Lnbisdk/ez;->dc:I

    iput v1, p0, Lnbisdk/ez;->ir:I

    iput v1, p0, Lnbisdk/ez;->is:I

    iput v1, p0, Lnbisdk/ez;->it:I

    iput v1, p0, Lnbisdk/ez;->iu:I

    iput v1, p0, Lnbisdk/ez;->iv:I

    iput v1, p0, Lnbisdk/ez;->iw:I

    iput v1, p0, Lnbisdk/ez;->hX:I

    iput v1, p0, Lnbisdk/ez;->ix:I

    iput-boolean v1, p0, Lnbisdk/ez;->hZ:Z

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/ez;->iy:Ljava/lang/String;

    iput-boolean v1, p0, Lnbisdk/ez;->iz:Z

    iput v1, p0, Lnbisdk/ez;->iA:I

    iput-boolean v2, p0, Lnbisdk/ez;->iB:Z

    iput-boolean v1, p0, Lnbisdk/ez;->iC:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ez;->mAGPSProvider:Lnbisdk/hv;

    iput-boolean v2, p0, Lnbisdk/ez;->iE:Z

    iput-boolean v1, p0, Lnbisdk/ez;->iF:Z

    invoke-direct {p0}, Lnbisdk/ez;->P()V

    if-eqz p1, :cond_0

    iget v0, p1, Lnbisdk/ez;->ip:I

    if-lez v0, :cond_1

    iget v0, p1, Lnbisdk/ez;->ip:I

    :goto_0
    iput v0, p0, Lnbisdk/ez;->ip:I

    invoke-virtual {p1}, Lnbisdk/ez;->getNetworkLocationTimeout()I

    move-result v0

    iput v0, p0, Lnbisdk/ez;->iq:I

    iget v0, p1, Lnbisdk/ez;->dc:I

    if-lez v0, :cond_2

    iget v0, p1, Lnbisdk/ez;->dc:I

    :goto_1
    iput v0, p0, Lnbisdk/ez;->dc:I

    invoke-virtual {p1}, Lnbisdk/ez;->getMaxFastSGPSAge()I

    move-result v0

    iput v0, p0, Lnbisdk/ez;->ir:I

    invoke-virtual {p1}, Lnbisdk/ez;->getMaxNormalSGPSAge()I

    move-result v0

    iput v0, p0, Lnbisdk/ez;->is:I

    invoke-virtual {p1}, Lnbisdk/ez;->getFastSGPSFixTimeout()I

    move-result v0

    iput v0, p0, Lnbisdk/ez;->it:I

    invoke-virtual {p1}, Lnbisdk/ez;->getNormalSGPSFixTimeout()I

    move-result v0

    iput v0, p0, Lnbisdk/ez;->iu:I

    invoke-virtual {p1}, Lnbisdk/ez;->getAccurateSGPSFixTimeout()I

    move-result v0

    iput v0, p0, Lnbisdk/ez;->iv:I

    invoke-virtual {p1}, Lnbisdk/ez;->getCellIDRequestTimer()I

    move-result v0

    iput v0, p0, Lnbisdk/ez;->iw:I

    invoke-virtual {p1}, Lnbisdk/ez;->getwiFiScanTimer()I

    move-result v0

    iput v0, p0, Lnbisdk/ez;->hX:I

    invoke-virtual {p1}, Lnbisdk/ez;->getWarmupFixTimeout()I

    move-result v0

    iput v0, p0, Lnbisdk/ez;->ix:I

    iget-boolean v0, p1, Lnbisdk/ez;->hZ:Z

    iput-boolean v0, p0, Lnbisdk/ez;->hZ:Z

    iget-object v0, p1, Lnbisdk/ez;->iy:Ljava/lang/String;

    iput-object v0, p0, Lnbisdk/ez;->iy:Ljava/lang/String;

    iget-boolean v0, p1, Lnbisdk/ez;->iz:Z

    iput-boolean v0, p0, Lnbisdk/ez;->iz:Z

    iget v0, p1, Lnbisdk/ez;->iA:I

    iput v0, p0, Lnbisdk/ez;->iA:I

    iget-boolean v0, p1, Lnbisdk/ez;->iB:Z

    iput-boolean v0, p0, Lnbisdk/ez;->iB:Z

    iget-boolean v0, p1, Lnbisdk/ez;->iC:Z

    iput-boolean v0, p0, Lnbisdk/ez;->iC:Z

    iget-object v0, p1, Lnbisdk/ez;->mAGPSProvider:Lnbisdk/hv;

    iput-object v0, p0, Lnbisdk/ez;->mAGPSProvider:Lnbisdk/hv;

    iget-boolean v0, p1, Lnbisdk/ez;->iE:Z

    iput-boolean v0, p0, Lnbisdk/ez;->iE:Z

    iget-boolean v0, p1, Lnbisdk/ez;->iF:Z

    iput-boolean v0, p0, Lnbisdk/ez;->iF:Z

    iget-object v0, p0, Lnbisdk/ez;->iD:Ljava/lang/String;

    iput-object v0, p0, Lnbisdk/ez;->iD:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x2710

    goto :goto_0

    :cond_2
    const/16 v0, 0x1770

    goto :goto_1
.end method

.method private P()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/ez;->iz:Z

    iput v1, p0, Lnbisdk/ez;->iA:I

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/ez;->iy:Ljava/lang/String;

    iput-boolean v1, p0, Lnbisdk/ez;->iz:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ez;->mAGPSProvider:Lnbisdk/hv;

    return-void
.end method

.method public static a(Lnbisdk/ez;)Lnbisdk/ez;
    .locals 1

    sget-object v0, Lnbisdk/ez;->io:Lnbisdk/ez;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/ez;

    invoke-direct {v0, p0}, Lnbisdk/ez;-><init>(Lnbisdk/ez;)V

    sput-object v0, Lnbisdk/ez;->io:Lnbisdk/ez;

    :cond_0
    sget-object v0, Lnbisdk/ez;->io:Lnbisdk/ez;

    return-object v0
.end method

.method public static fC()Lnbisdk/ez;
    .locals 1

    sget-object v0, Lnbisdk/ez;->io:Lnbisdk/ez;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/ez;

    invoke-direct {v0}, Lnbisdk/ez;-><init>()V

    sput-object v0, Lnbisdk/ez;->io:Lnbisdk/ez;

    :cond_0
    sget-object v0, Lnbisdk/ez;->io:Lnbisdk/ez;

    return-object v0
.end method


# virtual methods
.method public final getAPIKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ez;->iD:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccurateSGPSFixTimeout()I
    .locals 1

    iget v0, p0, Lnbisdk/ez;->iv:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/ez;->iv:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x1d4c0

    goto :goto_0
.end method

.method public final getAllowMockLocation()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ez;->iF:Z

    return v0
.end method

.method public final getAlternateGPSLocationProvider()Lnbisdk/hv;
    .locals 1

    iget-object v0, p0, Lnbisdk/ez;->mAGPSProvider:Lnbisdk/hv;

    return-object v0
.end method

.method public final getCellIDRequestTimer()I
    .locals 1

    iget v0, p0, Lnbisdk/ez;->iw:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/ez;->iw:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3a98

    goto :goto_0
.end method

.method public final getCollectWiFiProbes()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ez;->iC:Z

    return v0
.end method

.method public final getFastSGPSFixTimeout()I
    .locals 1

    iget v0, p0, Lnbisdk/ez;->it:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/ez;->it:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public final getMaxFastSGPSAge()I
    .locals 1

    iget v0, p0, Lnbisdk/ez;->ir:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/ez;->ir:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3a98

    goto :goto_0
.end method

.method public final getMaxNormalSGPSAge()I
    .locals 1

    iget v0, p0, Lnbisdk/ez;->is:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/ez;->is:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method public final getNetworkLocationTimeout()I
    .locals 1

    iget v0, p0, Lnbisdk/ez;->iq:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/ez;->iq:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7530

    goto :goto_0
.end method

.method public final getNormalSGPSFixTimeout()I
    .locals 1

    iget v0, p0, Lnbisdk/ez;->iu:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/ez;->iu:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f40

    goto :goto_0
.end method

.method public final getUseOwnNetworkLocation()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ez;->iE:Z

    return v0
.end method

.method public final getWarmupFixTimeout()I
    .locals 1

    iget v0, p0, Lnbisdk/ez;->ix:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/ez;->ix:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x2bf20

    goto :goto_0
.end method

.method public final getwiFiScanTimer()I
    .locals 1

    iget v0, p0, Lnbisdk/ez;->hX:I

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/ez;->hX:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3a98

    goto :goto_0
.end method

.method public final isWarmUpFix()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ez;->iB:Z

    return v0
.end method

.method public final setAPIKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ez;->iD:Ljava/lang/String;

    return-void
.end method

.method public final setAccurateSGPSFixTimeout(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->iv:I

    return-void
.end method

.method public final setAllowMockLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ez;->iF:Z

    return-void
.end method

.method public final setAlternateGPSLocationProvider(Lnbisdk/hv;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ez;->mAGPSProvider:Lnbisdk/hv;

    return-void
.end method

.method public final setCellIDRequestTimer(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->iw:I

    return-void
.end method

.method public final setCollectWiFiProbes(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ez;->iC:Z

    return-void
.end method

.method public final setEmuPlayStart(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->iA:I

    return-void
.end method

.method public final setEmulationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ez;->hZ:Z

    return-void
.end method

.method public final setFastSGPSFixTimeout(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->it:I

    return-void
.end method

.method public final setLocationFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ez;->iy:Ljava/lang/String;

    return-void
.end method

.method public final setMaxFastSGPSAge(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->ir:I

    return-void
.end method

.method public final setMaxNormalSGPSAge(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->is:I

    return-void
.end method

.method public final setMaxWiFiAge(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->ip:I

    return-void
.end method

.method public final setNetworkLocationTimeout(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->iq:I

    return-void
.end method

.method public final setNormalSGPSFixTimeout(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->iu:I

    return-void
.end method

.method public final setRoaming(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ez;->iz:Z

    return-void
.end method

.method public final setUseOwnNetworkLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ez;->iE:Z

    return-void
.end method

.method public final setWarmUpFix(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ez;->iB:Z

    return-void
.end method

.method public final setWiFiNetworkScanTimeout(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->dc:I

    return-void
.end method

.method public final setWiFiScanTimer(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ez;->hX:I

    return-void
.end method

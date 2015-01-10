.class public Lcom/nbi/location/LocationConfig;
.super Ljava/lang/Object;


# static fields
.field private static wK:Lcom/nbi/location/LocationConfig;


# instance fields
.field private kc:Z

.field private kd:Ljava/lang/String;

.field private ke:Z

.field private kf:I

.field private kg:Z

.field private kh:Z

.field private ki:Z

.field private kj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nbi/location/LocationConfig;->wK:Lcom/nbi/location/LocationConfig;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nbi/location/LocationConfig;->kc:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nbi/location/LocationConfig;->kd:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nbi/location/LocationConfig;->ke:Z

    iput v1, p0, Lcom/nbi/location/LocationConfig;->kf:I

    iput-boolean v2, p0, Lcom/nbi/location/LocationConfig;->kg:Z

    iput-boolean v1, p0, Lcom/nbi/location/LocationConfig;->kh:Z

    iput-boolean v2, p0, Lcom/nbi/location/LocationConfig;->ki:Z

    iput-boolean v1, p0, Lcom/nbi/location/LocationConfig;->kj:Z

    iput-boolean v1, p0, Lcom/nbi/location/LocationConfig;->ke:Z

    iput v1, p0, Lcom/nbi/location/LocationConfig;->kf:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nbi/location/LocationConfig;->kd:Ljava/lang/String;

    return-void
.end method

.method public static createLocationConfig()Lcom/nbi/location/LocationConfig;
    .locals 1

    sget-object v0, Lcom/nbi/location/LocationConfig;->wK:Lcom/nbi/location/LocationConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nbi/location/LocationConfig;

    invoke-direct {v0}, Lcom/nbi/location/LocationConfig;-><init>()V

    sput-object v0, Lcom/nbi/location/LocationConfig;->wK:Lcom/nbi/location/LocationConfig;

    :cond_0
    sget-object v0, Lcom/nbi/location/LocationConfig;->wK:Lcom/nbi/location/LocationConfig;

    return-object v0
.end method


# virtual methods
.method public getAllowMockLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/location/LocationConfig;->kj:Z

    return v0
.end method

.method public getCollectWiFiProbes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/location/LocationConfig;->kh:Z

    return v0
.end method

.method public getEmuPlayStart()I
    .locals 1

    iget v0, p0, Lcom/nbi/location/LocationConfig;->kf:I

    return v0
.end method

.method public getLocationFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/location/LocationConfig;->kd:Ljava/lang/String;

    return-object v0
.end method

.method public getUseOwnNetworkLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/location/LocationConfig;->ki:Z

    return v0
.end method

.method public isEmulationMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/location/LocationConfig;->kc:Z

    return v0
.end method

.method public isRoaming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/location/LocationConfig;->ke:Z

    return v0
.end method

.method public isWarmUpFix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/location/LocationConfig;->kg:Z

    return v0
.end method

.method public setAllowMockLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/location/LocationConfig;->kj:Z

    return-void
.end method

.method public setCollectWiFiProbes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/location/LocationConfig;->kh:Z

    return-void
.end method

.method public setEmuPlayStart(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/location/LocationConfig;->kf:I

    return-void
.end method

.method public setEmulationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/location/LocationConfig;->kc:Z

    return-void
.end method

.method public setLocationFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/location/LocationConfig;->kd:Ljava/lang/String;

    return-void
.end method

.method public setRoaming(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/location/LocationConfig;->ke:Z

    return-void
.end method

.method public setUseOwnNetworkLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/location/LocationConfig;->ki:Z

    return-void
.end method

.method public setWarmUpFix(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/location/LocationConfig;->kg:Z

    return-void
.end method

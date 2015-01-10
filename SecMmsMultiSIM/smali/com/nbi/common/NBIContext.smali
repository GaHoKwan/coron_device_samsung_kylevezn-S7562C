.class public Lcom/nbi/common/NBIContext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final API_VERSION:Ljava/lang/String; = "3.2.2"

.field public static final BUILD_VERSION:Ljava/lang/String; = "7"

.field public static final LOCATION_KIT_VERSION:I = 0x1

.field public static final MAP_KIT_VERSION:I = 0x1


# instance fields
.field private dk:Lnbisdk/bt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nbi/common/NBIContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nbi/common/NBIContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/bt;

    invoke-direct {v0, p1, p2, p5}, Lnbisdk/bt;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    if-nez p3, :cond_1

    invoke-static {}, Lnbisdk/ci;->cL()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v1, v0}, Lnbisdk/bt;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {p3, p4}, Lnbisdk/ci;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lnbisdk/ci;->A(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported language and country data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p3}, Lnbisdk/ci;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->clearCache()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    :cond_0
    return-void
.end method

.method public getAPIKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/bt;->nB()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->getCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientGuid()[B
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->getClientGuid()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ci;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ci;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNbiVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2.2.7"

    return-object v0
.end method

.method public getServiceApplicationInstallLink()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    if-eqz v0, :cond_0

    const-string v0, "https://market.android.com/details?id=com.telecomsys.nbi.service"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isServiceApplicationAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nK()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchURL(Ljava/lang/String;ZLandroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0, p1, p2, p3}, Lnbisdk/bt;->launchURL(Ljava/lang/String;ZLandroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public setContextErrorListener(Lcom/nbi/common/NBIContextListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0, p1}, Lnbisdk/bt;->a(Lcom/nbi/common/NBIContextListener;)V

    :cond_0
    return-void
.end method

.method public setNetworkListener(Lcom/nbi/common/NBINetworkListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/common/NBIContext;->dk:Lnbisdk/bt;

    invoke-virtual {v0, p1}, Lnbisdk/bt;->setNetworkListener(Lcom/nbi/common/NBINetworkListener;)V

    :cond_0
    return-void
.end method

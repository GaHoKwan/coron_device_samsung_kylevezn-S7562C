.class Landroid/app/enterprise/license/EnterpriseLicenseManager$1;
.super Landroid/app/enterprise/license/IAgentCallback$Stub;
.source "EnterpriseLicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/license/EnterpriseLicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/enterprise/license/EnterpriseLicenseManager;


# direct methods
.method constructor <init>(Landroid/app/enterprise/license/EnterpriseLicenseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Landroid/app/enterprise/license/EnterpriseLicenseManager$1;->this$0:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    invoke-direct {p0}, Landroid/app/enterprise/license/IAgentCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestLicenseActivation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .parameter "packageVersion"
    .parameter "licenseKey"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/app/enterprise/license/EnterpriseLicenseManager$1;->this$0:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    iget-object v0, v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->mAgent:Landroid/app/enterprise/license/EnterpriseLicenseManager$AgentCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/enterprise/license/EnterpriseLicenseManager$AgentCallback;->requestLicenseActivation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

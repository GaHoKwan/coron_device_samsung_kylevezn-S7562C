.class Lcom/samsung/mms/location/LocationMapActivity$25;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->createLocWifiEnableDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$25;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 3109
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$25;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->mAutoWifiDialogHasDismissed:Z
    invoke-static {v1, v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$4902(Lcom/samsung/mms/location/LocationMapActivity;Z)Z

    .line 3110
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$25;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3111
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 3113
    return-void
.end method

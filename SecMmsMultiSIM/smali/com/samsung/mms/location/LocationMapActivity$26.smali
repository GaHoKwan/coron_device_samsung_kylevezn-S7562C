.class Lcom/samsung/mms/location/LocationMapActivity$26;
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
    .line 3101
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$26;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$26;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->mAutoWifiDialogHasDismissed:Z
    invoke-static {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$4902(Lcom/samsung/mms/location/LocationMapActivity;Z)Z

    .line 3105
    return-void
.end method

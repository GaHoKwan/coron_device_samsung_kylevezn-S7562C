.class Lcom/samsung/mms/location/LocationMapActivity$20;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->createLocSettingDialog()Landroid/app/Dialog;
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
    .line 3010
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$20;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$20;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3013
    return-void
.end method

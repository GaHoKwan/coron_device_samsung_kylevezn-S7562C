.class Lcom/android/phone/LGTNetworkSetting$1;
.super Ljava/lang/Object;
.source "LGTNetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSetting;->networkModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSetting$1;->this$0:Lcom/android/phone/LGTNetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 310
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] networkModeDialog onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting$1;->this$0:Lcom/android/phone/LGTNetworkSetting;

    #getter for: Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSetting;->access$000(Lcom/android/phone/LGTNetworkSetting;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting$1;->this$0:Lcom/android/phone/LGTNetworkSetting;

    #getter for: Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSetting;->access$000(Lcom/android/phone/LGTNetworkSetting;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 316
    :cond_0
    return-void
.end method
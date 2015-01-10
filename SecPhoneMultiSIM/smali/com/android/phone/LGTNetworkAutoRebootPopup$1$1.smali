.class Lcom/android/phone/LGTNetworkAutoRebootPopup$1$1;
.super Ljava/lang/Object;
.source "LGTNetworkAutoRebootPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkAutoRebootPopup$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/LGTNetworkAutoRebootPopup$1;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootPopup$1;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1$1;->this$1:Lcom/android/phone/LGTNetworkAutoRebootPopup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1$1;->this$1:Lcom/android/phone/LGTNetworkAutoRebootPopup$1;

    iget-object v1, v1, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 72
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 73
    return-void
.end method

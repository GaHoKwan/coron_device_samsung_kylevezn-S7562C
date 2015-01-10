.class Lcom/android/phone/LGTNetworkSelectMode$2;
.super Ljava/lang/Object;
.source "LGTNetworkSelectMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSelectMode;->networkSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSelectMode;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSelectMode;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMode$2;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 217
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "networkSelectDialog() - positivebtn click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode$2;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/LGTNetworkSelectMode;->mManualMode:Z
    invoke-static {v0, v1}, Lcom/android/phone/LGTNetworkSelectMode;->access$202(Lcom/android/phone/LGTNetworkSelectMode;Z)Z

    .line 219
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode$2;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    const-class v2, Lcom/android/phone/NetworkSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode$2;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

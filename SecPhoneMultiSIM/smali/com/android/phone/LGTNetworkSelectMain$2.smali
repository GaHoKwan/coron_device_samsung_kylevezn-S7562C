.class Lcom/android/phone/LGTNetworkSelectMain$2;
.super Ljava/lang/Object;
.source "LGTNetworkSelectMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSelectMain;->manualNetworkSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSelectMain;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSelectMain;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMain$2;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 271
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/LGTNetworkSelectMain;->access$802(I)I

    .line 272
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain$2;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->initState()V
    invoke-static {v1}, Lcom/android/phone/LGTNetworkSelectMain;->access$900(Lcom/android/phone/LGTNetworkSelectMain;)V

    .line 273
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain$2;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    const-class v2, Lcom/android/phone/LGTNetworkSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain$2;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

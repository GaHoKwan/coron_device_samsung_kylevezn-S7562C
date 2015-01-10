.class Lcom/android/phone/LGTNetworkSetting$4;
.super Ljava/lang/Object;
.source "LGTNetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 270
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSetting$4;->this$0:Lcom/android/phone/LGTNetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 273
    invoke-static {p2}, Lcom/android/phone/LGTNetworkSetting;->access$102(I)I

    .line 274
    invoke-static {}, Lcom/android/phone/LGTNetworkSetting;->access$100()I

    move-result v1

    int-to-byte v0, v1

    .line 275
    .local v0, bandValue:B
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bandValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting$4;->this$0:Lcom/android/phone/LGTNetworkSetting;

    #calls: Lcom/android/phone/LGTNetworkSetting;->setSelectedBandMode(B)V
    invoke-static {v1, v0}, Lcom/android/phone/LGTNetworkSetting;->access$200(Lcom/android/phone/LGTNetworkSetting;B)V

    .line 277
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 278
    return-void
.end method

.class Lcom/android/phone/LGTNetworkSelectMain$4;
.super Ljava/lang/Object;
.source "LGTNetworkSelectMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSelectMain;->rebootDialog()V
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
    .line 291
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMain$4;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$1002(I)I

    .line 294
    const-string v0, "mwcho"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$4;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$4;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #getter for: Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$500(Lcom/android/phone/LGTNetworkSelectMain;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x259

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    invoke-static {}, Lcom/android/phone/LGTNetworkSelectMain;->access$1100()I

    move-result v0

    if-gtz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$4;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->setIMSIAuto()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$1200(Lcom/android/phone/LGTNetworkSelectMain;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$4;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->networkSelectAuto()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$1300(Lcom/android/phone/LGTNetworkSelectMain;)V

    .line 304
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain$4;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->setAutoBandMode()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSelectMain;->access$1400(Lcom/android/phone/LGTNetworkSelectMain;)V

    .line 305
    return-void
.end method

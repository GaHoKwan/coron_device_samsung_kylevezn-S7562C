.class Lcom/android/phone/LGTServiceProvider$3;
.super Landroid/os/Handler;
.source "LGTServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTServiceProvider;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTServiceProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 366
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 368
    :sswitch_0
    const-string v0, "LGTServiceProvider"

    const-string v1, "EVENT_EF_WRITE_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    #getter for: Lcom/android/phone/LGTServiceProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/LGTServiceProvider;->access$000(Lcom/android/phone/LGTServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 372
    :sswitch_1
    const-string v0, "LGTServiceProvider"

    const-string v1, "EVENT_EF_WRITE_COMPLETED_DELAY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 374
    const-string v0, "gsm.sim.roaming"

    iget-object v1, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    #getter for: Lcom/android/phone/LGTServiceProvider;->mEfRoaming:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProvider;->access$100(Lcom/android/phone/LGTServiceProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e05e5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 376
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    #calls: Lcom/android/phone/LGTServiceProvider;->updateScreen()V
    invoke-static {v0}, Lcom/android/phone/LGTServiceProvider;->access$200(Lcom/android/phone/LGTServiceProvider;)V

    .line 377
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$3;->this$0:Lcom/android/phone/LGTServiceProvider;

    #calls: Lcom/android/phone/LGTServiceProvider;->reboot()V
    invoke-static {v0}, Lcom/android/phone/LGTServiceProvider;->access$300(Lcom/android/phone/LGTServiceProvider;)V

    goto :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

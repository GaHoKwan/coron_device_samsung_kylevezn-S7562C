.class Lcom/android/phone/LGTServiceProviderSelect$1;
.super Landroid/os/Handler;
.source "LGTServiceProviderSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTServiceProviderSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTServiceProviderSelect;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTServiceProviderSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 276
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 278
    :sswitch_0
    const-string v1, "LGTServiceProviderSelect"

    const-string v2, "EVENT_EF_WRITE_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v1, "kor_phone_via_chip"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$000(Lcom/android/phone/LGTServiceProviderSelect;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$100(Lcom/android/phone/LGTServiceProviderSelect;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm.sim.roaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #calls: Lcom/android/phone/LGTServiceProviderSelect;->sendImsiStatusChangeNoti()V
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$200(Lcom/android/phone/LGTServiceProviderSelect;)V

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$300(Lcom/android/phone/LGTServiceProviderSelect;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 289
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$300(Lcom/android/phone/LGTServiceProviderSelect;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 291
    const-string v1, "gsm.sim.roaming"

    iget-object v2, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/LGTServiceProviderSelect;->access$100(Lcom/android/phone/LGTServiceProviderSelect;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #calls: Lcom/android/phone/LGTServiceProviderSelect;->reboot()V
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$400(Lcom/android/phone/LGTServiceProviderSelect;)V

    goto :goto_0

    .line 297
    .end local v0           #message:Landroid/os/Message;
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    iget-object v1, v1, Lcom/android/phone/LGTServiceProviderSelect;->dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    iget-object v1, v1, Lcom/android/phone/LGTServiceProviderSelect;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    iget-object v1, v1, Lcom/android/phone/LGTServiceProviderSelect;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e05e5

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

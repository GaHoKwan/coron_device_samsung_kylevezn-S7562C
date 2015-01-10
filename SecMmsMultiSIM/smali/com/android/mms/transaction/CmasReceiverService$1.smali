.class Lcom/android/mms/transaction/CmasReceiverService$1;
.super Landroid/telephony/PhoneStateListener;
.source "CmasReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/CmasReceiverService;->checkCallState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/CmasReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/CmasReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/mms/transaction/CmasReceiverService$1;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 723
    const-string v0, "Mms/CmasReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in on call state changed, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    packed-switch p1, :pswitch_data_0

    .line 744
    :goto_0
    return-void

    .line 726
    :pswitch_0
    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "Call state idle"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sput-boolean v3, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    goto :goto_0

    .line 731
    :pswitch_1
    sput-boolean v4, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    goto :goto_0

    .line 735
    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    sput-boolean v3, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    goto :goto_0

    .line 738
    :cond_0
    sput-boolean v4, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    goto :goto_0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

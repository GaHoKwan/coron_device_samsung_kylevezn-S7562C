.class Lcom/android/phone/BluetoothHandsfree$32;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 4301
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4304
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Receiving AT+BCC from HF, sending OK to HF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4305
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4306
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4307
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4308
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    .line 4309
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 4310
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4311
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4312
    const-string v1, "+BCS:2"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4320
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :goto_0
    return-object v0

    .line 4315
    .restart local v0       #result:Landroid/bluetooth/AtCommandResult;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4316
    const-string v1, "+BCS:1"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 4320
    :cond_2
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

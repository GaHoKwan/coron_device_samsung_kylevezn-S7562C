.class Lcom/android/phone/BluetoothHandsfree$34;
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
    .line 4362
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 4366
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4367
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$3602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4368
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 4369
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 4370
    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4368
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4372
    :pswitch_0
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "HF supports CODEC_CVSD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2, v7}, Lcom/android/phone/BluetoothHandsfree;->access$3576(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_1

    .line 4376
    :pswitch_1
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "HF supports CODEC_MSBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    :cond_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2, v6}, Lcom/android/phone/BluetoothHandsfree;->access$3576(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_1

    .line 4383
    :cond_3
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Codec ID Format from HF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4386
    :cond_4
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4387
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4388
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$3602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4389
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4390
    .local v1, result:Landroid/bluetooth/AtCommandResult;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 4391
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v2, v6}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4392
    const-string v2, "+BCS:2"

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4400
    .end local v1           #result:Landroid/bluetooth/AtCommandResult;
    :goto_2
    return-object v1

    .line 4395
    .restart local v1       #result:Landroid/bluetooth/AtCommandResult;
    :cond_5
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$34;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v2, v7}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 4396
    const-string v2, "+BCS:1"

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_2

    .line 4400
    .end local v1           #result:Landroid/bluetooth/AtCommandResult;
    :cond_6
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_2

    .line 4370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

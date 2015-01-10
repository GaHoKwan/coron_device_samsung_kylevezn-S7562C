.class Lcom/android/phone/PhoneInterfaceManagerExt$2;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 99
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DOMESTIC PCSC HandleMessage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 228
    :pswitch_0
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v4, "Get Default"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    new-array v4, v6, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3, v4}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 232
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v4, -0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v4}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 235
    :goto_0
    return-void

    .line 104
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 105
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 106
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 107
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "90"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    const/4 v5, 0x2

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :goto_1
    :try_start_2
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM(TCash) : Get CONNECT_DONE event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 140
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM(TCash) : Value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v6

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 129
    .end local v2           #i:I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v5, "Exception in getting Logical Channel."

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_1

    .line 151
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 142
    .restart local v2       #i:I
    :cond_1
    :try_start_5
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect! Logical Ch is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v2           #i:I
    :goto_3
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    monitor-exit v4

    goto/16 :goto_0

    .line 145
    :cond_2
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 146
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v5, "SMARTCARD_IO_ERROR_CARD_NOT_EXIST"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 155
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 156
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 157
    :try_start_6
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 158
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 160
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "90"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 168
    :goto_4
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 169
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM(TCash) : Value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v6

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 164
    .end local v2           #i:I
    :cond_3
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_4

    .line 180
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 171
    .restart local v2       #i:I
    :cond_4
    :try_start_7
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disconnect! res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2           #i:I
    :goto_6
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    monitor-exit v4

    goto/16 :goto_0

    .line 174
    :cond_5
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 175
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v5, "SMARTCARD_IO_INVALID_CHANNEL"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 184
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 185
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 186
    :try_start_8
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 187
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 188
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v5

    array-length v5, v5

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 191
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 192
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v6

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 194
    :cond_6
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get TRANSMIT_DONE event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v2           #i:I
    :goto_8
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3

    .line 197
    :cond_7
    :try_start_9
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 198
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x4

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    .line 208
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 209
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 210
    :try_start_a
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 211
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v5, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 212
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 218
    :goto_9
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get POWERUP event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .line 214
    :cond_8
    :try_start_b
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v5, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_9

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

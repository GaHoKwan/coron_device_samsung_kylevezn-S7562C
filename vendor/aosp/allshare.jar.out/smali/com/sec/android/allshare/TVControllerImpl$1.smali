.class Lcom/sec/android/allshare/TVControllerImpl$1;
.super Landroid/os/Handler;
.source "TVControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/TVControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/TVControllerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/TVControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    const-string v1, "TVControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TVControl] Event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 152
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #setter for: Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z
    invoke-static {v1, v4}, Lcom/sec/android/allshare/TVControllerImpl;->access$002(Lcom/sec/android/allshare/TVControllerImpl;Z)Z

    .line 154
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 161
    :sswitch_1
    const-string v1, "TVControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TVControl] Event : IAPP_AUTHENTICATION arg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #setter for: Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z
    invoke-static {v1, v4}, Lcom/sec/android/allshare/TVControllerImpl;->access$002(Lcom/sec/android/allshare/TVControllerImpl;Z)Z

    .line 165
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 169
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v5, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #calls: Lcom/sec/android/allshare/TVControllerImpl;->requestTVInformation()V
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$200(Lcom/sec/android/allshare/TVControllerImpl;)V

    goto :goto_0

    .line 186
    :sswitch_2
    const-string v1, "TVControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TVControl] Event : IAPP_AUTHENTICATION_TIMEOUT arg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #setter for: Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z
    invoke-static {v1, v4}, Lcom/sec/android/allshare/TVControllerImpl;->access$002(Lcom/sec/android/allshare/TVControllerImpl;Z)Z

    .line 191
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mResponseListener:Lcom/sec/android/allshare/control/TVController$IResponseListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$100(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IResponseListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/allshare/control/TVController$IResponseListener;->onConnectResponseReceived(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 198
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, strKeyboardSync:Ljava/lang/String;
    const-string v1, "TVControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TVControl] Event : IAPP_KEYBOARD_SYNC arg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$300(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$300(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, v2, v0, v3}, Lcom/sec/android/allshare/control/TVController$IEventListener;->onStringChanged(Lcom/sec/android/allshare/control/TVController;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 209
    .end local v0           #strKeyboardSync:Ljava/lang/String;
    :sswitch_4
    const-string v1, "TVControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TVControl] Event : IAPP_EXIT arg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #setter for: Lcom/sec/android/allshare/TVControllerImpl;->mIsConnected:Z
    invoke-static {v1, v4}, Lcom/sec/android/allshare/TVControllerImpl;->access$002(Lcom/sec/android/allshare/TVControllerImpl;Z)Z

    .line 213
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$300(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$300(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/allshare/control/TVController$IEventListener;->onDisconnected(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 218
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_4

    .line 219
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$300(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$300(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    sget-object v3, Lcom/sec/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/allshare/control/TVController$IEventListener;->onDisconnected(Lcom/sec/android/allshare/control/TVController;Lcom/sec/android/allshare/ERROR;)V

    goto/16 :goto_0

    .line 223
    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_0

    .line 224
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$1;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    #getter for: Lcom/sec/android/allshare/TVControllerImpl;->mEventListener:Lcom/sec/android/allshare/control/TVController$IEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/TVControllerImpl;->access$300(Lcom/sec/android/allshare/TVControllerImpl;)Lcom/sec/android/allshare/control/TVController$IEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 233
    :sswitch_5
    const-string v1, "TVControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TVControl] Event : IAPP_REMOCON arg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :sswitch_6
    const-string v1, "TVControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TVControl] Event : IAPP_STATUS arg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :sswitch_7
    const-string v1, "TVControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TVControl] Event : IAPP_REMOTE_INPUT_TYPE arg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x3 -> :sswitch_3
        0xa -> :sswitch_7
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0xc8 -> :sswitch_6
        0x12c -> :sswitch_4
        0x270f -> :sswitch_0
    .end sparse-switch
.end method

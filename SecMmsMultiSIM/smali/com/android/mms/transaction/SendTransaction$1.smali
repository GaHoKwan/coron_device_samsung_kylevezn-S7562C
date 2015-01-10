.class Lcom/android/mms/transaction/SendTransaction$1;
.super Landroid/os/Handler;
.source "SendTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SendTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SendTransaction;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SendTransaction;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 96
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SendTransaction] msg.what : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 100
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    iget-object v2, v2, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/MmsRetryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v1, mmsRetryIntent:Landroid/content/Intent;
    const/high16 v2, 0x1800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    #getter for: Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/transaction/SendTransaction;->access$000(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    iget-object v2, v2, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    #getter for: Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-static {v2}, Lcom/android/mms/transaction/SendTransaction;->access$100(Lcom/android/mms/transaction/SendTransaction;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    const-string v2, "Mms:transaction"

    const-string v3, "[SendTransaction] abort post"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    #getter for: Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-static {v2}, Lcom/android/mms/transaction/SendTransaction;->access$100(Lcom/android/mms/transaction/SendTransaction;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    #getter for: Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v2}, Lcom/android/mms/transaction/SendTransaction;->access$200(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 111
    .local v0, clientMgr:Lorg/apache/http/conn/ClientConnectionManager;
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 112
    const-string v2, "Mms:transaction"

    const-string v3, "[SendTransaction] shutdown connection"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    #getter for: Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v2}, Lcom/android/mms/transaction/SendTransaction;->access$200(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 114
    const-string v2, "Mms:transaction"

    const-string v3, "[SendTransaction] close httpClient"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    #getter for: Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v2}, Lcom/android/mms/transaction/SendTransaction;->access$200(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 116
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v2, v3}, Lcom/android/mms/transaction/SendTransaction;->access$202(Lcom/android/mms/transaction/SendTransaction;Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient;

    .line 119
    :cond_1
    const-string v2, "Mms:transaction"

    const-string v3, "[SendTransaction] sending timeout"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

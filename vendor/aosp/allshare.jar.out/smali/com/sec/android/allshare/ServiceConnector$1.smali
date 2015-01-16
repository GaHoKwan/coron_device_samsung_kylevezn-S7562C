.class final Lcom/sec/android/allshare/ServiceConnector$1;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field private mServiceProvider:Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;

.field final synthetic val$connector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$l:Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;Landroid/content/Context;Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sec/android/allshare/ServiceConnector$1;->val$l:Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iput-object p2, p0, Lcom/sec/android/allshare/ServiceConnector$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/allshare/ServiceConnector$1;->val$connector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$1;->val$l:Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iput-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$1;->mListener:Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;

    .line 197
    new-instance v0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;

    iget-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$1;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/allshare/ServiceConnector$1;->val$connector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;-><init>(Landroid/content/Context;Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V

    iput-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    .line 202
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    if-nez v3, :cond_1

    .line 203
    :cond_0
    const/4 v3, 0x0

    .line 232
    :goto_0
    return v3

    .line 205
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    .line 207
    .local v2, state:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;
    sget-object v3, Lcom/sec/android/allshare/ServiceConnector$2;->$SwitchMap$com$sec$android$allshare$IAllShareConnector$AllShareServiceState:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 232
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 209
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;

    sget-object v4, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    iput-object v4, v3, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$1;->mListener:Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;

    sget-object v5, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    invoke-interface {v3, v4, v5}, Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;->onCreated(Lcom/sec/android/allshare/ServiceProvider;Lcom/sec/android/allshare/ServiceConnector$ServiceState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ServiceConnector"

    const-string v4, "handleMessage Exception"

    invoke-static {v3, v4, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 214
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Error;
    const-string v3, "ServiceConnector"

    const-string v4, "handleMessage Error"

    invoke-static {v3, v4, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_1

    .line 220
    .end local v0           #e:Ljava/lang/Error;
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;

    sget-object v4, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    iput-object v4, v3, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    .line 222
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/allshare/ServiceConnector$1;->mListener:Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iget-object v4, p0, Lcom/sec/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;

    invoke-interface {v3, v4}, Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;->onDeleted(Lcom/sec/android/allshare/ServiceProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 223
    :catch_2
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ServiceConnector"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 225
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 226
    .local v1, err:Ljava/lang/Error;
    const-string v3, "ServiceConnector"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

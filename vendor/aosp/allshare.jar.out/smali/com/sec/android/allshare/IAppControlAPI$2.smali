.class Lcom/sec/android/allshare/IAppControlAPI$2;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/IAppControlAPI;->startControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/IAppControlAPI;

.field final synthetic val$inet:Lcom/sec/android/allshare/NetworkSocketInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAppControlAPI;Lcom/sec/android/allshare/NetworkSocketInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/android/allshare/IAppControlAPI$2;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    iput-object p2, p0, Lcom/sec/android/allshare/IAppControlAPI$2;->val$inet:Lcom/sec/android/allshare/NetworkSocketInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$2;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    #getter for: Lcom/sec/android/allshare/IAppControlAPI;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/allshare/IAppControlAPI;->access$000(Lcom/sec/android/allshare/IAppControlAPI;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$2;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$2;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v2, p0, Lcom/sec/android/allshare/IAppControlAPI$2;->val$inet:Lcom/sec/android/allshare/NetworkSocketInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/TVMessageSender;->initSender(Lcom/sec/android/allshare/NetworkSocketInfo;)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$2;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    #calls: Lcom/sec/android/allshare/IAppControlAPI;->createControlReceiver()V
    invoke-static {v0}, Lcom/sec/android/allshare/IAppControlAPI;->access$100(Lcom/sec/android/allshare/IAppControlAPI;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$2;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendAuthentication()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$2;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/allshare/IAppControlAPI;->bIsRunningConnection:Z
    invoke-static {v0, v2}, Lcom/sec/android/allshare/IAppControlAPI;->access$202(Lcom/sec/android/allshare/IAppControlAPI;Z)Z

    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

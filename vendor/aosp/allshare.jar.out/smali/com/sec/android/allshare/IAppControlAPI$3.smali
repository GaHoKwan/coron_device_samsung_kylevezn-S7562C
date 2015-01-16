.class Lcom/sec/android/allshare/IAppControlAPI$3;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/IAppControlAPI;->startControlClient(Lcom/sec/android/allshare/NetworkSocketInfo;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/IAppControlAPI;

.field final synthetic val$netinfo:Lcom/sec/android/allshare/NetworkSocketInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAppControlAPI;Lcom/sec/android/allshare/NetworkSocketInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sec/android/allshare/IAppControlAPI$3;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    iput-object p2, p0, Lcom/sec/android/allshare/IAppControlAPI$3;->val$netinfo:Lcom/sec/android/allshare/NetworkSocketInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$3;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI$3;->val$netinfo:Lcom/sec/android/allshare/NetworkSocketInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/TVMessageSender;->initSender(Lcom/sec/android/allshare/NetworkSocketInfo;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$3;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI$3;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    #getter for: Lcom/sec/android/allshare/IAppControlAPI;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;
    invoke-static {v1}, Lcom/sec/android/allshare/IAppControlAPI;->access$300(Lcom/sec/android/allshare/IAppControlAPI;)Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/TVMessageListener;->setOnEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$3;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 312
    return-void
.end method

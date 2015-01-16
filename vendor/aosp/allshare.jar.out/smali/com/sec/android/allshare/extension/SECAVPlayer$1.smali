.class Lcom/sec/android/allshare/extension/SECAVPlayer$1;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/extension/SECAVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$1;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 212
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SECAVPLAYER] mNotifyStopRunnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$1;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;
    invoke-static {v2}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$400(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    move-result-object v2

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v2}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$500(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$1;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer;->mState:Lcom/sec/android/allshare/extension/SECAVPlayer$State;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->access$400(Lcom/sec/android/allshare/extension/SECAVPlayer;)Lcom/sec/android/allshare/extension/SECAVPlayer$State;

    move-result-object v0

    #getter for: Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->access$500(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$1;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/SECAVPlayer;->notifyOnStop()V

    .line 220
    :cond_0
    return-void
.end method

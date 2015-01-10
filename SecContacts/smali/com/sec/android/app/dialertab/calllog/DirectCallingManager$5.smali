.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 756
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 771
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 744
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void
.end method

.method public onError(I)V
    .locals 4
    .parameter "error"

    .prologue
    .line 748
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 749
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "recognition_error"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 750
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 751
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 752
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 753
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 766
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onEvent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3
    .parameter "partialResults"

    .prologue
    .line 760
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 761
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 762
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 763
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 739
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)V

    .line 741
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3
    .parameter "results"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 734
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 735
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 736
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .parameter "rmsdB"

    .prologue
    .line 730
    return-void
.end method

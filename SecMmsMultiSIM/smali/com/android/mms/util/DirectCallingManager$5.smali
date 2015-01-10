.class Lcom/android/mms/util/DirectCallingManager$5;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 855
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 873
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 841
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method public onError(I)V
    .locals 4
    .parameter "error"

    .prologue
    .line 846
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 847
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "recognition_error"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 848
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$1500(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 849
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 850
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$1500(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 851
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 867
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onEvent"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3
    .parameter "partialResults"

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$1500(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 861
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 862
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$1500(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 863
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 835
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x1

    #calls: Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->access$100(Lcom/android/mms/util/DirectCallingManager;Z)V

    .line 837
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3
    .parameter "results"

    .prologue
    .line 828
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$1500(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 829
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 830
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$1500(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 831
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .parameter "rmsdB"

    .prologue
    .line 824
    return-void
.end method

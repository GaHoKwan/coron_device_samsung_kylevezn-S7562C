.class Lcom/android/mms/util/DirectCallingManager$1;
.super Landroid/os/Handler;
.source "DirectCallingManager.java"


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
    .line 141
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$1;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 150
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 155
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$1;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->tryToCall()V
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$000(Lcom/android/mms/util/DirectCallingManager;)V

    goto :goto_0

    .line 159
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$1;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DirectCallingManager;->AnalizeRecorgnitionResult(Landroid/os/Bundle;)V

    .line 160
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$1;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v1, v3}, Lcom/android/mms/util/DirectCallingManager;->access$100(Lcom/android/mms/util/DirectCallingManager;Z)V

    goto :goto_0

    .line 163
    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$1;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DirectCallingManager;->AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V

    .line 164
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$1;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v1, v3}, Lcom/android/mms/util/DirectCallingManager;->access$100(Lcom/android/mms/util/DirectCallingManager;Z)V

    goto :goto_0

    .line 167
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "recognition_error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, error:I
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$1;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v1, v0}, Lcom/android/mms/util/DirectCallingManager;->onResultErrorCode(I)V

    goto :goto_0

    .line 172
    .end local v0           #error:I
    :sswitch_4
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$202(Z)Z

    .line 173
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$1;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->updateProximitySensorMode(I)V
    invoke-static {v1, v2}, Lcom/android/mms/util/DirectCallingManager;->access$300(Lcom/android/mms/util/DirectCallingManager;I)V

    goto :goto_0

    .line 176
    :sswitch_5
    invoke-static {v3}, Lcom/android/mms/util/DirectCallingManager;->access$202(Z)Z

    .line 177
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 178
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$1;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->updateProximitySensorMode(I)V
    invoke-static {v1, v3}, Lcom/android/mms/util/DirectCallingManager;->access$300(Lcom/android/mms/util/DirectCallingManager;I)V

    goto :goto_0

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
        0x50 -> :sswitch_3
        0x60 -> :sswitch_4
        0x70 -> :sswitch_5
    .end sparse-switch
.end method

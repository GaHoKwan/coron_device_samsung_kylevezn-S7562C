.class Lcom/android/phone/OutgoingCallBroadcaster$6;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;

.field final synthetic val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;Lcom/android/internal/telephony/ITelephony;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iput-object p2, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 1816
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 1818
    if-nez p2, :cond_1

    .line 1819
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    .line 1820
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    .line 1821
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simSlot"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1822
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1200(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1000(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1824
    :cond_1
    if-ne p2, v2, :cond_2

    .line 1825
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    .line 1826
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    .line 1827
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simSlot"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1828
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1200(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1000(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITelephony threw RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1831
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    .line 1832
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    .line 1833
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simSlot"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1834
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1200(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1000(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

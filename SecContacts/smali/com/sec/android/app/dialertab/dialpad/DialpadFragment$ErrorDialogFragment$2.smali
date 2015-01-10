.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 8656
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    .line 8658
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8660
    .local v3, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 8662
    .local v1, currSimId:I
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 8663
    .local v4, mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 8664
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 8670
    .end local v4           #mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkDualSim()Z

    move-result v0

    .line 8671
    .local v0, checkDualSim:Z
    if-eqz v0, :cond_1

    .line 8672
    const-string v5, "isVoiceMailServiceDualSim"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8673
    const-string v5, "isVoiceMailSettings"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8674
    if-ne v1, v7, :cond_4

    .line 8675
    const-string v5, "CallSettingTab"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8680
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8681
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.GsmUmtsAdditionalCallOptionsSim2"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8683
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8684
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {v5, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 8686
    :cond_3
    return-void

    .line 8666
    .end local v0           #checkDualSim:Z
    :catch_0
    move-exception v2

    .line 8667
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 8668
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4800()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8677
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #checkDualSim:Z
    :cond_4
    const-string v5, "CallSettingTab"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

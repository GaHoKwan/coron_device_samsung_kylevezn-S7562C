.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const v10, 0x7f0e0084

    const v9, 0x7f0e0140

    const v8, 0x7f0e013c

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 302
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    const-string v3, "FdnSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFDNHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg.what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 525
    :goto_0
    return-void

    .line 307
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 312
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 313
    const-string v3, "FdnSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAttempt in EVENT_PIN2_ENTRY_COMPLETE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 315
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 316
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v3, "FdnSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception case in mFDNHandler = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 317
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 319
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_3

    .line 320
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 321
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    .line 327
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    .local v2, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 330
    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 332
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0183

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 334
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0172

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 336
    const v3, 0x7f0e002a

    new-instance v4, Lcom/android/phone/FdnSetting$1$1;

    invoke-direct {v4, p0}, Lcom/android/phone/FdnSetting$1$1;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 345
    new-instance v3, Lcom/android/phone/FdnSetting$1$2;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$1$2;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 357
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 358
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 359
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 360
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0e0186

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 361
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0e0187

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 364
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 365
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 387
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :goto_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 368
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2

    .line 369
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e015a

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1

    .line 371
    :cond_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v10}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1

    .line 374
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v10}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1

    .line 377
    :cond_4
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 378
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 379
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v3, v7}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 380
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 381
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 383
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 395
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 396
    const-string v3, "FdnSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAttempt in EVENT_PIN2_CHANGE_COMPLETE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 398
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 399
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-string v3, "FdnSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception in EVENT_PIN2_CHANGE_COMPLETE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 401
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 402
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 403
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_5

    .line 407
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 409
    .restart local v2       #err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 410
    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 411
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0183

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 413
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0172

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 415
    const v3, 0x7f0e002a

    new-instance v4, Lcom/android/phone/FdnSetting$1$3;

    invoke-direct {v4, p0}, Lcom/android/phone/FdnSetting$1$3;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 425
    new-instance v3, Lcom/android/phone/FdnSetting$1$4;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$1$4;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 436
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 438
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 439
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 440
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 441
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0e0186

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 442
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0e0187

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 444
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 445
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 446
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 450
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v3, v4, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_7

    .line 453
    :cond_6
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v10}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    .line 455
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 456
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    .line 457
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)V

    .line 458
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 459
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 460
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 461
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 463
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1200(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 469
    :cond_7
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 470
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0177

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    .line 478
    :goto_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 479
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$1302(Lcom/android/phone/FdnSetting;I)I

    .line 481
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    .line 482
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)V

    .line 483
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 484
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 485
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v3, v7}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 486
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 487
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 490
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1400(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 472
    :cond_8
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0178

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    .line 473
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    goto :goto_2

    .line 495
    :cond_9
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 500
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_a
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-ne v3, v6, :cond_b

    .line 501
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0188

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    .line 506
    :goto_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 507
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v7}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 509
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 510
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 511
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v3, v7}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 512
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 513
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 515
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1500(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$1302(Lcom/android/phone/FdnSetting;I)I

    .line 519
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)V

    .line 520
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 504
    :cond_b
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e017c

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    goto :goto_3

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

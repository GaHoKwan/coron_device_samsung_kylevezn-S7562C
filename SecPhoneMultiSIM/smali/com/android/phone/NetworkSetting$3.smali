.class Lcom/android/phone/NetworkSetting$3;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x190

    const/16 v4, 0x12c

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 239
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 435
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 241
    :sswitch_1
    const-string v1, "phone"

    const-string v2, "EVENT_PLMN_REFRESH."

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 242
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->updatePLMNmode()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)V

    goto :goto_0

    .line 248
    :sswitch_2
    const-string v1, "phone"

    const-string v2, "Search completed."

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 249
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    .line 251
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    const-string v1, "1"

    invoke-static {}, Lcom/android/phone/NetworkSetting;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "0"

    #calls: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 254
    const-string v1, "phone"

    const-string v2, "EVENT_NETWORK_SCAN_COMPLETED, Set Automatic"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    const-string v1, "network_manual_selection_when_bootup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 261
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$802(Lcom/android/phone/NetworkSetting;Z)Z

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 274
    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 275
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 276
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 278
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "1"

    #calls: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 282
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 283
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 284
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "manual network selection: failed!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 286
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->handleManualFailCase()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)V

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 295
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->ManualSelectionFail:Z
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$1402(Lcom/android/phone/NetworkSetting;Z)Z

    .line 296
    const-string v1, "phone"

    const-string v2, "[NetworkSelection] Manual selection Failed."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 299
    :cond_5
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "manual network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 301
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 303
    :cond_6
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->handleManualSuccessCase()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1500(Lcom/android/phone/NetworkSetting;)V

    goto :goto_1

    .line 306
    :cond_7
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->ManualSelectionFail:Z
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1402(Lcom/android/phone/NetworkSetting;Z)Z

    .line 308
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1600(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_1

    .line 320
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 322
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 323
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "0"

    #calls: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 326
    :cond_8
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 327
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1702(Lcom/android/phone/NetworkSetting;Z)Z

    .line 328
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 334
    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_c

    .line 335
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 339
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 341
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 342
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 343
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "automatic network selection: failed!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 344
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 354
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 336
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_a

    .line 337
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_2

    .line 346
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_d
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "automatic network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 348
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_e

    .line 349
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1600(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_3

    .line 350
    :cond_e
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_b

    .line 351
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$1600(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_3

    .line 362
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->loadNetworksList()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1800(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 368
    :sswitch_6
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 369
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1902(Lcom/android/phone/NetworkSetting;Z)Z

    .line 371
    :cond_f
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$2000(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_0

    .line 377
    :sswitch_7
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$2000(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_0

    .line 383
    :sswitch_8
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectList()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2100(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 389
    :sswitch_9
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2200(Lcom/android/phone/NetworkSetting;)V

    .line 394
    :sswitch_a
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    .line 396
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/android/phone/NetworkSetting;->access$2300()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 398
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$1702(Lcom/android/phone/NetworkSetting;Z)Z

    .line 399
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$2000(Lcom/android/phone/NetworkSetting;I)V

    .line 400
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iput-boolean v3, v1, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    .line 410
    :goto_4
    :sswitch_b
    const-string v1, "network_selection_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 411
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "mHandler - SELECT_MANUAL_TIMEOUT"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$2400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "mHandler - updateDataState()"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$2400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler - ActionType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$2500(Lcom/android/phone/NetworkSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$2400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2600(Lcom/android/phone/NetworkSetting;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    if-nez v1, :cond_11

    .line 416
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->updateDataState()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;)V

    .line 417
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$2502(Lcom/android/phone/NetworkSetting;I)I

    goto/16 :goto_0

    .line 402
    :cond_10
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2bc

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 419
    :cond_11
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 422
    :cond_12
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2500(Lcom/android/phone/NetworkSetting;)I

    move-result v1

    const/16 v2, -0x2713

    if-ne v1, v2, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectList()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2100(Lcom/android/phone/NetworkSetting;)V

    .line 424
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$2502(Lcom/android/phone/NetworkSetting;I)I

    goto/16 :goto_0

    .line 431
    :sswitch_c
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->checkDataConnectionAutoSelect()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2700(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_c
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_0
        0x384 -> :sswitch_1
        0x7d0 -> :sswitch_5
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_8
        0x7d3 -> :sswitch_7
        0xbb9 -> :sswitch_b
    .end sparse-switch
.end method

.class Lcom/android/phone/DsaSetting$ActivateHandler;
.super Landroid/os/Handler;
.source "DsaSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DsaSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/DsaSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/DsaSetting;Lcom/android/phone/DsaSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;-><init>(Lcom/android/phone/DsaSetting;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x1f4

    const/16 v5, 0x64

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 194
    const-string v0, "DsaSetting"

    const-string v2, "handleGetCFResponse()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 198
    .local v6, ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCFResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/phone/DsaSetting;->setResultVariable(II)V
    invoke-static {v0, v4, v2}, Lcom/android/phone/DsaSetting;->access$100(Lcom/android/phone/DsaSetting;II)V

    .line 212
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber2:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v2}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 269
    :goto_1
    return-void

    .line 202
    :cond_0
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v7, v0

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 204
    .local v7, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v0, v7

    if-nez v0, :cond_1

    .line 205
    const-string v0, "DsaSetting"

    const-string v2, "handleGetCFResponse: cfInfoArray.length == 0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/phone/DsaSetting;->setResultVariable(II)V
    invoke-static {v0, v4, v2}, Lcom/android/phone/DsaSetting;->access$100(Lcom/android/phone/DsaSetting;II)V

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCFResponse: msg.arg1("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), msg.arg2("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v7           #cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_3

    .line 221
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v2}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v2

    const/16 v5, 0xc8

    const/16 v10, 0xc8

    invoke-virtual {v2, v5, v1, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 228
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_7

    .line 229
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v5, :cond_5

    .line 230
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->bDualSet:Z
    invoke-static {v0}, Lcom/android/phone/DsaSetting;->access$300(Lcom/android/phone/DsaSetting;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->bDualSet:Z
    invoke-static {v0}, Lcom/android/phone/DsaSetting;->access$300(Lcom/android/phone/DsaSetting;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 242
    :cond_6
    const-string v0, "DsaSetting"

    const-string v1, "end of DSA..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 245
    .local v9, mPhone:Lcom/android/internal/telephony/Phone;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.phone.dsacomplete"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v8, intent:Landroid/content/Intent;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 250
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #mPhone:Lcom/android/internal/telephony/Phone;
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v5, :cond_9

    .line 251
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->bDualSet:Z
    invoke-static {v0}, Lcom/android/phone/DsaSetting;->access$300(Lcom/android/phone/DsaSetting;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 252
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 259
    :cond_9
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->bDualSet:Z
    invoke-static {v0}, Lcom/android/phone/DsaSetting;->access$300(Lcom/android/phone/DsaSetting;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 260
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 263
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 264
    .restart local v9       #mPhone:Lcom/android/internal/telephony/Phone;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.phone.dsacomplete"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 301
    const-string v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCallWaitingResponse(), bDualSet("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->bDualSet:Z
    invoke-static {v3}, Lcom/android/phone/DsaSetting;->access$300(Lcom/android/phone/DsaSetting;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 305
    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v1, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 306
    const-string v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/DsaSetting;->setResultVariable(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/DsaSetting;->access$100(Lcom/android/phone/DsaSetting;II)V

    .line 312
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->bDualSet:Z
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$300(Lcom/android/phone/DsaSetting;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 313
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_3

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v6}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v6

    const/16 v13, 0x7d0

    const/4 v14, 0x0

    const/16 v15, 0x7d0

    invoke-virtual {v6, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 460
    :cond_0
    :goto_1
    return-void

    .line 309
    :cond_1
    const-string v1, "DsaSetting"

    const-string v2, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    const/4 v3, 0x3

    sget-object v4, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v6}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v6

    const/16 v13, 0xc8

    const/4 v14, 0x0

    const/16 v15, 0xc8

    invoke-virtual {v6, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 332
    :cond_3
    const-string v1, "DsaSetting"

    const-string v2, "end of DSA..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/DsaSetting;->bDualSet:Z
    invoke-static {v1, v2}, Lcom/android/phone/DsaSetting;->access$302(Lcom/android/phone/DsaSetting;Z)Z

    .line 337
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 338
    .local v10, mPhone:Lcom/android/internal/telephony/Phone;
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.android.phone.dsacomplete"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v9, intent:Landroid/content/Intent;
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    new-instance v8, Lcom/android/phone/DsaResult;

    invoke-direct {v8}, Lcom/android/phone/DsaResult;-><init>()V

    .line 343
    .local v8, dsaResult:Lcom/android/phone/DsaResult;
    invoke-virtual {v8}, Lcom/android/phone/DsaResult;->CheckDsaResult()Z

    move-result v12

    .line 345
    .local v12, result:Z
    if-eqz v12, :cond_4

    .line 347
    const-string v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End of DSA [Success] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v3}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 349
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 353
    :cond_4
    const-string v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End of DSA [Fail] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v3}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 355
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 358
    :cond_5
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SelectSimStatus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 359
    .local v11, pref:Landroid/content/SharedPreferences;
    const-string v1, "SimStatus"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 361
    :pswitch_0
    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v1, :cond_0

    .line 364
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 369
    :pswitch_1
    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v1, :cond_0

    .line 371
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 376
    :pswitch_2
    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v1, :cond_0

    .line 378
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 388
    .end local v8           #dsaResult:Lcom/android/phone/DsaResult;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #mPhone:Lcom/android/internal/telephony/Phone;
    .end local v11           #pref:Landroid/content/SharedPreferences;
    .end local v12           #result:Z
    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/16 v2, 0x258

    if-ne v1, v2, :cond_8

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x3

    const/4 v3, 0x3

    sget-object v4, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v6}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v6

    const/16 v13, 0xc8

    const/4 v14, 0x3

    const/16 v15, 0xc8

    invoke-virtual {v6, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 398
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    const/4 v3, 0x3

    sget-object v4, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;
    invoke-static {v6}, Lcom/android/phone/DsaSetting;->access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v6

    const/16 v13, 0xc8

    const/4 v14, 0x0

    const/16 v15, 0xc8

    invoke-virtual {v6, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 407
    :cond_8
    const-string v1, "DsaSetting"

    const-string v2, "end of DSA..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 410
    .restart local v10       #mPhone:Lcom/android/internal/telephony/Phone;
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.android.phone.dsacomplete"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .restart local v9       #intent:Landroid/content/Intent;
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    new-instance v8, Lcom/android/phone/DsaResult;

    invoke-direct {v8}, Lcom/android/phone/DsaResult;-><init>()V

    .line 415
    .restart local v8       #dsaResult:Lcom/android/phone/DsaResult;
    invoke-virtual {v8}, Lcom/android/phone/DsaResult;->CheckDsaResult()Z

    move-result v12

    .line 417
    .restart local v12       #result:Z
    if-eqz v12, :cond_9

    .line 419
    const-string v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End of DSA [Success] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v3}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 421
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 425
    :cond_9
    const-string v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End of DSA [Fail] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v3}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 427
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 430
    :cond_a
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SelectSimStatus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 431
    .restart local v11       #pref:Landroid/content/SharedPreferences;
    const-string v1, "SimStatus"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 433
    :pswitch_3
    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v1, :cond_0

    .line 436
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 441
    :pswitch_4
    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v1, :cond_0

    .line 443
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 448
    :pswitch_5
    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v1, :cond_0

    .line 450
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_is_activate"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 431
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x7d0

    const/16 v7, 0x3e8

    const/16 v5, 0x64

    const/4 v6, 0x3

    .line 272
    const-string v1, "DsaSetting"

    const-string v2, "handleSetCFResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 276
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCFResponse: ar.exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/phone/DsaSetting;->setResultVariable(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/DsaSetting;->access$100(Lcom/android/phone/DsaSetting;II)V

    .line 285
    :goto_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v7, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0xbb8

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v3, v7, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 298
    :goto_1
    return-void

    .line 279
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    const/4 v2, 0x1

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/phone/DsaSetting;->setResultVariable(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/DsaSetting;->access$100(Lcom/android/phone/DsaSetting;II)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/phone/DsaSetting;->setResultVariable(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/DsaSetting;->access$100(Lcom/android/phone/DsaSetting;II)V

    goto :goto_0

    .line 288
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v8, :cond_3

    .line 289
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0xfa0

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v3, v8, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_1

    .line 291
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_4

    .line 292
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x12c

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_1

    .line 295
    :cond_4
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x190

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xc8

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x320

    const/16 v6, 0x2bc

    const/16 v5, 0x258

    const/16 v4, 0x1f4

    .line 463
    const-string v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCallWaitingResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 467
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 468
    const-string v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/DsaSetting;->setResultVariable(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/DsaSetting;->access$100(Lcom/android/phone/DsaSetting;II)V

    .line 474
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_2

    .line 475
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->bDualSet:Z
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$300(Lcom/android/phone/DsaSetting;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 491
    :goto_1
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->resultValue:I
    invoke-static {v2}, Lcom/android/phone/DsaSetting;->access$400(Lcom/android/phone/DsaSetting;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/DsaSetting;->setResultVariable(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/DsaSetting;->access$100(Lcom/android/phone/DsaSetting;II)V

    goto :goto_0

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_1

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    #getter for: Lcom/android/phone/DsaSetting;->bDualSet:Z
    invoke-static {v1}, Lcom/android/phone/DsaSetting;->access$300(Lcom/android/phone/DsaSetting;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v7, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_1

    .line 487
    :cond_3
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v7, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 164
    const-string v0, "DsaSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 171
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 178
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 183
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 188
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_2
        0x2bc -> :sswitch_3
        0x320 -> :sswitch_3
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0xbb8 -> :sswitch_1
        0xfa0 -> :sswitch_1
    .end sparse-switch
.end method

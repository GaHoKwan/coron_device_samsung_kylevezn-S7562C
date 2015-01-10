.class public Lcom/android/phone/CallCardCovered;
.super Landroid/widget/FrameLayout;
.source "CallCardCovered.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCardCovered$1;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mHelpTextLine1:Landroid/widget/TextView;

.field private mHelpTextLine2:Landroid/widget/TextView;

.field private mHelpTextLine3:Landroid/widget/TextView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

.field private mName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-object p1, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    .line 83
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 26
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMainCallStatus(call "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 176
    if-nez p2, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :goto_0
    return-void

    .line 181
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    .line 184
    .local v21, state:Lcom/android/internal/telephony/Call$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - call.state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 186
    sget-object v2, Lcom/android/phone/CallCardCovered$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 210
    const-string v2, "CallCardCovered"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 214
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCardCovered;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 216
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "support_lgt_multi_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const v4, 0x7f0e0199

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 191
    :pswitch_0
    const-string v2, "displayMainCallStatus: start periodicUpdateTimer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    goto :goto_1

    .line 202
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 206
    :pswitch_2
    const-string v2, "CallCardCovered"

    const-string v4, "displayMainCallStatus: IDLE call in the main call card!"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 222
    :cond_1
    const/4 v8, 0x0

    .line 223
    .local v8, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    .line 224
    .local v19, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:[Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "support_lgt_multi_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 229
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    .line 239
    :goto_2
    if-nez v8, :cond_6

    .line 240
    const-string v2, "displayMainCallStatus: connection is null, using default values."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 242
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 231
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_2

    .line 233
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    .line 234
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_2

    .line 236
    :cond_5
    const-string v2, "CallCardCovered"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2

    .line 245
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - CONN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v11

    .line 247
    .local v11, numPresentation:I
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v12

    .line 248
    .local v12, namPresentation:I
    const/16 v20, 0x1

    .line 249
    .local v20, runQuery:Z
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v17

    .line 250
    .local v17, o:Ljava/lang/Object;
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    .line 251
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v18

    .line 252
    .local v18, obj:Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v25

    .line 253
    .local v25, updatedNumber:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v23

    .line 254
    .local v23, updatedCnapName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 255
    .restart local v3       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_e

    move-object/from16 v2, v17

    .line 256
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 261
    :cond_7
    :goto_3
    const-string v2, "usa_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 262
    if-eqz v25, :cond_9

    .line 263
    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v16

    .line 264
    .local v16, cnapSpecialCase:I
    if-eqz v3, :cond_9

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_8

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 266
    :cond_8
    move/from16 v0, v16

    iput v0, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 271
    .end local v16           #cnapSpecialCase:I
    :cond_9
    if-eqz v3, :cond_b

    .line 272
    if-eqz v25, :cond_a

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 273
    const/16 v20, 0x1

    .line 275
    :cond_a
    if-eqz v23, :cond_b

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 276
    const/16 v20, 0x1

    .line 281
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v18           #obj:Ljava/lang/Object;
    .end local v23           #updatedCnapName:Ljava/lang/String;
    .end local v25           #updatedNumber:Ljava/lang/String;
    :cond_b
    if-eqz v20, :cond_10

    .line 282
    const-string v2, "- displayMainCallStatus: starting CallerInfo query..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v8, v0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 285
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v24

    .line 286
    .local v24, updatedNum:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v22

    .line 287
    .local v22, updatedCnapNam:Ljava/lang/String;
    if-eqz v22, :cond_c

    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 288
    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 289
    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 290
    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 293
    :cond_c
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v23

    .line 294
    .restart local v23       #updatedCnapName:Ljava/lang/String;
    const-string v2, "updated_calling_name_presentation"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v23, :cond_d

    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 298
    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 300
    :cond_d
    iget-object v10, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_f

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v9, p0

    move-object/from16 v14, p2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 257
    .end local v22           #updatedCnapNam:Ljava/lang/String;
    .end local v24           #updatedNum:Ljava/lang/String;
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v18       #obj:Ljava/lang/Object;
    .restart local v25       #updatedNumber:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_7

    move-object/from16 v3, v17

    .line 258
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_3

    .line 300
    .end local v18           #obj:Ljava/lang/Object;
    .end local v25           #updatedNumber:Ljava/lang/String;
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v22       #updatedCnapNam:Ljava/lang/String;
    .restart local v24       #updatedNum:Ljava/lang/String;
    :cond_f
    const/4 v13, 0x0

    goto :goto_4

    .line 303
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v22           #updatedCnapNam:Ljava/lang/String;
    .end local v23           #updatedCnapName:Ljava/lang/String;
    .end local v24           #updatedNum:Ljava/lang/String;
    :cond_10
    const-string v2, "- displayMainCallStatus: using data we already have..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_11

    move-object/from16 v10, v17

    .line 305
    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    .line 306
    .local v10, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 307
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 308
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 309
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v10, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: CNAP data from Connection: , CNAP name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", CDNIP number="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Number/Name Presentation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 314
    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v14, p2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 316
    .end local v10           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_11
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_12

    .line 317
    check-cast v17, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v17           #o:Ljava/lang/Object;
    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 318
    .restart local v10       #ci:Lcom/android/internal/telephony/CallerInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", CDNIP number="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Number Presentation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Name Presentation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v10, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 323
    const/4 v13, 0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 326
    .end local v10           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v17       #o:Ljava/lang/Object;
    :cond_12
    const-string v2, "CallCardCovered"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 658
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 661
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 662
    const-string v3, "getCallFailedString: connection is null, using default values."

    invoke-direct {p0, v3}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 663
    const v2, 0x7f0e019c

    .line 730
    .local v2, resID:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 665
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 666
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCardCovered$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 726
    const v2, 0x7f0e019c

    .restart local v2       #resID:I
    goto :goto_0

    .line 668
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f0e000a

    .line 669
    .restart local v2       #resID:I
    goto :goto_0

    .line 672
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f0e000b

    .line 673
    .restart local v2       #resID:I
    goto :goto_0

    .line 676
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f0e000c

    .line 677
    .restart local v2       #resID:I
    goto :goto_0

    .line 680
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f0e000d

    .line 681
    .restart local v2       #resID:I
    goto :goto_0

    .line 684
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f0e000e

    .line 685
    .restart local v2       #resID:I
    goto :goto_0

    .line 688
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f0e000f

    .line 689
    .restart local v2       #resID:I
    goto :goto_0

    .line 692
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f0e0011

    .line 693
    .restart local v2       #resID:I
    goto :goto_0

    .line 696
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f0e0010

    .line 697
    .restart local v2       #resID:I
    goto :goto_0

    .line 701
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f0e0012

    .line 702
    .restart local v2       #resID:I
    goto :goto_0

    .line 705
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f0e0013

    .line 706
    .restart local v2       #resID:I
    goto :goto_0

    .line 709
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f0e0014

    .line 710
    .restart local v2       #resID:I
    goto :goto_0

    .line 713
    .end local v2           #resID:I
    :pswitch_b
    const v2, 0x7f0e0015

    .line 714
    .restart local v2       #resID:I
    goto :goto_0

    .line 717
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f0e0016

    .line 718
    .restart local v2       #resID:I
    goto :goto_0

    .line 722
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f0e0025

    .line 723
    .restart local v2       #resID:I
    goto :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 767
    const-string v0, "CallCardCovered"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 771
    const-string v0, "CallCardCovered"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 772
    return-void
.end method

.method private okToShowInCallControls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 2
    .parameter "cm"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 16
    .parameter "call"

    .prologue
    .line 378
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateCallStateWidgets(call "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    .line 380
    .local v12, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 381
    .local v4, context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 382
    .local v10, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    .line 384
    .local v11, phoneType:I
    const/4 v3, 0x0

    .line 385
    .local v3, callStateLabel:Ljava/lang/String;
    const/4 v6, 0x0

    .line 386
    .local v6, hintText1:Ljava/lang/String;
    const/4 v7, 0x0

    .line 387
    .local v7, hintText2:Ljava/lang/String;
    const/4 v8, 0x0

    .line 389
    .local v8, hintText3:Ljava/lang/String;
    sget-object v13, Lcom/android/phone/CallCardCovered$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 458
    const-string v13, "CallCardCovered"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 462
    :cond_0
    :goto_0
    :pswitch_0
    const-string v13, "display_alerting_title"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 463
    sget-object v13, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_1

    .line 464
    const v13, 0x7f0e0197

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 467
    :cond_1
    const/4 v13, 0x2

    if-ne v11, v13, :cond_8

    .line 468
    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:[Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 470
    const v13, 0x7f0e0196

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 482
    :cond_2
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "==> callStateLabel: \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 484
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallCardCovered;->mHelpTextLine2:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallCardCovered;->mHelpTextLine3:Landroid/widget/TextView;

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    return-void

    .line 396
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 397
    .local v2, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v13, v14, :cond_5

    .line 398
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0e0026

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 401
    :cond_4
    const-string v1, "%s"

    .line 402
    .local v1, SRC_TAGS:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 405
    .local v9, name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e07dc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%s"

    invoke-virtual {v13, v14, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 407
    goto/16 :goto_0

    .line 409
    .end local v1           #SRC_TAGS:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "incall_power_button_behavior"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 413
    .local v5, endcallbutton:I
    const/4 v13, 0x2

    if-ne v5, v13, :cond_0

    .line 414
    const v13, 0x7f0e07da

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 421
    .end local v2           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v5           #endcallbutton:I
    :pswitch_2
    const v13, 0x7f0e019d

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 422
    goto/16 :goto_0

    .line 426
    :pswitch_3
    const v13, 0x7f0e0196

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 427
    goto/16 :goto_0

    .line 431
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v13

    if-eqz v13, :cond_6

    const v13, 0x7f0e02c8

    :goto_2
    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 447
    goto/16 :goto_0

    .line 431
    :cond_6
    const v13, 0x7f0e02c7

    goto :goto_2

    .line 450
    :pswitch_5
    const v13, 0x7f0e019e

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 451
    goto/16 :goto_0

    .line 454
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallCardCovered;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v3

    .line 455
    goto/16 :goto_0

    .line 471
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->notifier:[Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 472
    const v13, 0x7f0e0198

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 474
    :cond_8
    const/4 v13, 0x1

    if-eq v11, v13, :cond_9

    const/4 v13, 0x3

    if-ne v11, v13, :cond_a

    .line 475
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->notifier:[Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 476
    const v13, 0x7f0e0198

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 479
    :cond_a
    const-string v13, "CallCardCovered"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected phone type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_1

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 9
    .parameter "info"
    .parameter "numPresentation"
    .parameter "namPresentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "conn"

    .prologue
    const/4 v8, 0x0

    .line 524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDisplayForPerson("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\nnumberPresentation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " namePresentation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isTemporary:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 526
    if-nez p5, :cond_0

    .line 527
    const-string v6, "CallCard.updateDisplayForPerson : call is null"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 655
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 534
    .local v0, callstate:Lcom/android/internal/telephony/Call$State;
    const/4 v3, 0x0

    .line 536
    .local v3, displayNumber:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "country_detector"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 539
    .local v1, detector:Landroid/location/CountryDetector;
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 540
    .local v5, state:Lcom/android/internal/telephony/Phone$State;
    if-eqz p1, :cond_17

    .line 541
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 543
    .local v4, number:Ljava/lang/String;
    const-string v6, "usa_gsm_update_2nd_number"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 544
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    if-nez v6, :cond_1

    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p2, v6, :cond_1

    .line 546
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 547
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 548
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 553
    :cond_1
    if-eqz v4, :cond_2

    const-string v6, "sip:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 554
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 557
    :cond_2
    const-string v6, "cnap_supplementary_service"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 558
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    if-nez v6, :cond_3

    .line 559
    const-string v6, "updateDisplayForPerson : exist invalid cnapName in the CallerInfo"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 560
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 564
    :cond_3
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 565
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, displayName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ==> no name *or* number! displayName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 641
    .end local v4           #number:Ljava/lang/String;
    :goto_1
    invoke-static {p5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 642
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const v7, 0x7f0e0199

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 646
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 648
    if-eqz v3, :cond_19

    .line 649
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 568
    .end local v2           #displayName:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    :cond_4
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v6, :cond_5

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 570
    .restart local v2       #displayName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 571
    .end local v2           #displayName:Ljava/lang/String;
    :cond_5
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 573
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 574
    .restart local v2       #displayName:Ljava/lang/String;
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 575
    const-string v6, "disable_format_number"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 576
    move-object v3, v4

    .line 589
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ==> cnapName available: displayName \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', displayNumber \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 578
    :cond_6
    const-string v6, "number_format_with_country_iso"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 579
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 580
    :cond_7
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 582
    :cond_8
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 586
    :cond_9
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 592
    .end local v2           #displayName:Ljava/lang/String;
    :cond_a
    const-string v6, "disable_format_number"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 595
    :cond_b
    move-object v2, v4

    .restart local v2       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 597
    .end local v2           #displayName:Ljava/lang/String;
    :cond_c
    const-string v6, "number_format_with_country_iso"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 598
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 599
    :cond_d
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 601
    .end local v2           #displayName:Ljava/lang/String;
    :cond_e
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 605
    .end local v2           #displayName:Ljava/lang/String;
    :cond_f
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 610
    .end local v2           #displayName:Ljava/lang/String;
    :cond_10
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v6, :cond_11

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 612
    .restart local v2       #displayName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 618
    :goto_4
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 619
    move-object v3, v4

    goto/16 :goto_1

    .line 615
    .end local v2           #displayName:Ljava/lang/String;
    :cond_11
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .restart local v2       #displayName:Ljava/lang/String;
    goto :goto_4

    .line 621
    :cond_12
    const-string v6, "disable_format_number"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 622
    move-object v3, v4

    goto/16 :goto_1

    .line 624
    :cond_13
    const-string v6, "number_format_with_country_iso"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 625
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 626
    :cond_14
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 628
    :cond_15
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 632
    :cond_16
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 638
    .end local v2           #displayName:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 644
    :cond_18
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 652
    :cond_19
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 3
    .parameter "timeElapsed"

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, elapsedTimeView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    .line 515
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 516
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 102
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine2:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine3:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    .line 111
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V

    .line 113
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    .line 114
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 764
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v4, 0x0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 342
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_4

    .line 343
    const-string v0, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    move-object v6, p2

    .line 344
    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 345
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 346
    .local v5, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 347
    .local v8, phoneType:I
    const/4 v0, 0x2

    if-ne v8, v0, :cond_0

    .line 348
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 351
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 354
    .local v7, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 355
    .local v2, numPresentation:I
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 356
    .local v3, namPresentation:I
    if-eqz v6, :cond_1

    .line 357
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 358
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    .line 360
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onQueryComplete: NumberPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "namPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 363
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_3

    .line 364
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .end local v2           #numPresentation:I
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .end local v3           #namPresentation:I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 375
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v8           #phoneType:I
    .end local p2
    :cond_2
    :goto_0
    return-void

    .line 367
    .restart local v2       #numPresentation:I
    .restart local v3       #namPresentation:I
    .restart local v5       #call:Lcom/android/internal/telephony/Call;
    .restart local v6       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v7       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v8       #phoneType:I
    .restart local p2
    :cond_3
    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 371
    .end local v2           #numPresentation:I
    .end local v3           #namPresentation:I
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v8           #phoneType:I
    :cond_4
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 372
    const-string v0, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 373
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCardCovered;->updateElapsedTimeWidget(J)V

    .line 89
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "whichHandle"

    .prologue
    const/4 v2, 0x1

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 741
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 759
    :goto_0
    return-void

    .line 745
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 747
    :pswitch_0
    const-string v0, "ANSWER_CALL_ID: answer!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 748
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 752
    :pswitch_1
    const-string v0, "DECLINE_CALL_ID: reject!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 753
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 8
    .parameter "cm"

    .prologue
    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateState("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 127
    const/4 v3, 0x0

    .line 129
    .local v3, showIncomingCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 130
    .local v5, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 131
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 132
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 133
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v4, 0x0

    .line 134
    .local v4, showingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_2

    .line 135
    move-object v4, v2

    .line 136
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    const/4 v3, 0x1

    .line 150
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCardCovered;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 152
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 154
    if-eqz v3, :cond_5

    .line 155
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 139
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    .line 140
    move-object v4, v1

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    .line 142
    move-object v4, v0

    goto :goto_0

    .line 144
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v6, v6, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-nez v6, :cond_0

    .line 147
    const/4 v4, 0x0

    goto :goto_0

    .line 156
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->okToShowInCallControls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 160
    const-string v6, "There are no controls."

    invoke-direct {p0, v6}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

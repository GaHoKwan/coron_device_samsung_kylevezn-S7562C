.class public Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# instance fields
.field private final mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private final mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;

.field private mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V
    .locals 0
    .parameter "resources"
    .parameter "callTypeHelper"
    .parameter "phoneNumberHelper"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 112
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 113
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 114
    return-void
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 6
    .parameter "nameView"
    .parameter "details"

    .prologue
    .line 667
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d0322

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 670
    .local v0, displayNumber:Ljava/lang/CharSequence;
    iget-object v2, p2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    move-object v1, v0

    .line 676
    .local v1, nameText:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    return-void

    .line 673
    .end local v1           #nameText:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v1       #nameText:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .parameter "currentTimeMillis"

    .prologue
    .line 680
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 681
    return-void
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .parameter "mContext"
    .parameter "views"
    .parameter "details"
    .parameter "isHighlighted"
    .parameter "listGroupSize"
    .parameter "cnapName"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "bussName"
    .parameter "cityId"

    .prologue
    .line 120
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v9, v0

    .line 122
    .local v9, count:I
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 123
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 125
    const-string v24, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    .line 130
    :cond_0
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 131
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    sparse-switch v24, :sswitch_data_0

    .line 172
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205b2

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x6

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    :goto_0
    const/16 v24, 0x3

    move/from16 v0, v24

    if-le v9, v0, :cond_18

    .line 205
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 210
    .local v7, callCount:Ljava/lang/Integer;
    :goto_1
    if-eqz p4, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v13

    .line 223
    .local v13, highlightColor:Ljava/lang/Integer;
    :goto_2
    const/16 v21, 0x0

    .line 225
    .local v21, numberFormattedLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v25, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 234
    :cond_1
    const/4 v12, 0x0

    .line 237
    .local v12, getDisplayNumber:Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    .line 238
    .local v23, tempNumber:Ljava/lang/CharSequence;
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    if-eqz v23, :cond_3

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x12c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 241
    const-string v23, "-5"

    .line 245
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 246
    :cond_4
    if-eqz v23, :cond_5

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 253
    :cond_5
    :goto_3
    move-object v10, v12

    .line 255
    .local v10, displayNumber:Ljava/lang/CharSequence;
    const/16 v20, 0x0

    .line 257
    .local v20, nameWithSize:Ljava/lang/StringBuffer;
    move-object/from16 v22, v10

    .line 258
    .local v22, numberText:Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_29

    .line 259
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_26

    .line 261
    const/16 v16, 0x0

    .line 262
    .local v16, isEmergencyNumber:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 263
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v16

    .line 266
    :cond_6
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    const-string v25, "114"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 268
    const/16 v16, 0x0

    .line 271
    :cond_7
    const-string v24, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    const-string v25, "120"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 273
    const/16 v16, 0x1

    .line 276
    :cond_8
    if-eqz v16, :cond_1b

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d0349

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 425
    .end local v16           #isEmergencyNumber:Z
    .local v19, nameText:Ljava/lang/CharSequence;
    :cond_9
    :goto_4
    const-string v24, "feature_common_dsds_support "

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 426
    const-string v24, "DSDS"

    invoke-static/range {v24 .. v24}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/plugin/dsds/PlugInDsdsService;

    .line 427
    .local v11, dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/plugin/dsds/PlugInDsdsService;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    .line 430
    .end local v11           #dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d0098

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 432
    const-string v24, "feature_spr"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2d

    .line 433
    const-string v22, ""

    .line 440
    :cond_b
    :goto_5
    const-string v24, "feature_cnam"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_32

    .line 442
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_e

    .line 443
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v14, v24, v25

    .line 444
    .local v14, iCallType:I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v14, v0, :cond_30

    if-eqz p7, :cond_c

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_d

    :cond_c
    if-eqz p8, :cond_30

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_30

    .line 446
    :cond_d
    if-eqz p7, :cond_2e

    if-nez p8, :cond_2e

    .line 447
    move-object/from16 v19, p7

    .line 472
    .end local v14           #iCallType:I
    :cond_e
    :goto_6
    const-string v24, "feature_spr"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    sget-object v24, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    if-eqz v24, :cond_f

    .line 473
    sget-object v24, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialADCCheckNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 474
    .local v18, mADCService:Ljava/lang/String;
    if-eqz v18, :cond_f

    .line 475
    move-object/from16 v19, v18

    .line 476
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    .line 480
    .end local v18           #mADCService:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-3"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "P"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_11

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-4"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 486
    :cond_10
    move-object/from16 v19, v10

    .line 487
    const-string v22, ""

    .line 491
    :cond_11
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 493
    const-string v8, ""

    .line 495
    .local v8, callService:Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_12

    .line 496
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 499
    :cond_12
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_33

    .line 501
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d038f

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 511
    :cond_13
    :goto_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_3b

    .line 512
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82263439000"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_36

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d03bb

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 514
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    .line 544
    .end local v8           #callService:Ljava/lang/String;
    :cond_14
    :goto_8
    const-string v24, "PhoneCallDetailsHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "nameText : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", numberText : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v24, "PhoneCallDetailsHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "listGroupSize : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/16 v24, 0x1

    move/from16 v0, p5

    move/from16 v1, v24

    if-le v0, v1, :cond_15

    .line 549
    new-instance v20, Ljava/lang/StringBuffer;

    .end local v20           #nameWithSize:Ljava/lang/StringBuffer;
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 550
    .restart local v20       #nameWithSize:Ljava/lang/StringBuffer;
    const-string v24, "("

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    const-string v24, ")"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_15
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 559
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 560
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 565
    const-string v24, "ctc_roaming_timezone"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3d

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isNetworkRoaming()Z

    move-result v24

    if-eqz v24, :cond_3d

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v24

    if-nez v24, :cond_3d

    .line 568
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v25, v0

    const/16 v27, 0x101

    const-string v28, "Asia/Shanghai"

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :goto_9
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_1

    .line 662
    :cond_16
    :goto_a
    return-void

    .line 134
    .end local v7           #callCount:Ljava/lang/Integer;
    .end local v10           #displayNumber:Ljava/lang/CharSequence;
    .end local v12           #getDisplayNumber:Ljava/lang/CharSequence;
    .end local v13           #highlightColor:Ljava/lang/Integer;
    .end local v19           #nameText:Ljava/lang/CharSequence;
    .end local v20           #nameWithSize:Ljava/lang/StringBuffer;
    .end local v21           #numberFormattedLabel:Ljava/lang/CharSequence;
    .end local v22           #numberText:Ljava/lang/CharSequence;
    .end local v23           #tempNumber:Ljava/lang/CharSequence;
    :sswitch_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c6

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 138
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 142
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c5

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 146
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c7

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 150
    :sswitch_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c6

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0xd

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    :sswitch_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0xb

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 159
    :sswitch_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x32

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 163
    :sswitch_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c5

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0xe

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 167
    :sswitch_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c7

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0xf

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 180
    :cond_17
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 196
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205b2

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 183
    :pswitch_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c6

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 186
    :pswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 189
    :pswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c5

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 192
    :pswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205c7

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 207
    :cond_18
    const/4 v7, 0x0

    .restart local v7       #callCount:Ljava/lang/Integer;
    goto/16 :goto_1

    .line 210
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 250
    .restart local v12       #getDisplayNumber:Ljava/lang/CharSequence;
    .restart local v13       #highlightColor:Ljava/lang/Integer;
    .restart local v21       #numberFormattedLabel:Ljava/lang/CharSequence;
    .restart local v23       #tempNumber:Ljava/lang/CharSequence;
    :cond_1a
    if-eqz v23, :cond_5

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    goto/16 :goto_3

    .line 280
    .restart local v10       #displayNumber:Ljava/lang/CharSequence;
    .restart local v16       #isEmergencyNumber:Z
    .restart local v20       #nameWithSize:Ljava/lang/StringBuffer;
    .restart local v22       #numberText:Ljava/lang/CharSequence;
    :cond_1b
    move-object/from16 v19, v10

    .line 283
    .restart local v19       #nameText:Ljava/lang/CharSequence;
    const-string v24, "feature_cnam"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 284
    const/4 v15, 0x0

    .line 286
    .local v15, isDisableCityID:Z
    const-string v24, "feature_vzw"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 287
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1f

    if-eqz p7, :cond_1c

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_1d

    :cond_1c
    if-eqz p8, :cond_1f

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_1f

    .line 288
    :cond_1d
    const/4 v15, 0x1

    .line 298
    :cond_1e
    :goto_b
    if-nez v15, :cond_9

    .line 299
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_21

    .line 300
    move-object/from16 v22, p10

    .line 302
    const-string v24, "PhoneCallDetailsHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setText:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 290
    :cond_1f
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_20

    if-eqz p9, :cond_20

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_20

    .line 291
    const/4 v15, 0x1

    goto :goto_b

    .line 293
    :cond_20
    if-eqz p6, :cond_1e

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_1e

    .line 294
    const/4 v15, 0x1

    goto :goto_b

    .line 327
    :cond_21
    const-string v24, "feature_usa_regional"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_22

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d0099

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 330
    :cond_22
    const-string v24, "PhoneCallDetailsHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setText:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 333
    .end local v15           #isDisableCityID:Z
    :cond_23
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 334
    move-object/from16 v22, v10

    goto/16 :goto_4

    .line 337
    :cond_24
    const-string v22, ""

    .line 338
    const-string v24, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 339
    .local v6, am:Landroid/app/ActivityManager;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v17

    .line 340
    .local v17, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, ClassName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_25

    const-string v24, "com.android.contacts.activities.DialtactsActivity"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_25

    .line 342
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_2

    goto/16 :goto_4

    .line 348
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d03f7

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 349
    goto/16 :goto_4

    .line 352
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d03f8

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_4

    .line 356
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d0348

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_4

    .line 363
    .end local v5           #ClassName:Ljava/lang/String;
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v16           #isEmergencyNumber:Z
    .end local v17           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19           #nameText:Ljava/lang/CharSequence;
    :cond_26
    move-object/from16 v19, v10

    .line 364
    .restart local v19       #nameText:Ljava/lang/CharSequence;
    const-string v24, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 365
    .restart local v6       #am:Landroid/app/ActivityManager;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v17

    .line 366
    .restart local v17       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 367
    .restart local v5       #ClassName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_28

    const-string v24, "com.android.contacts.activities.DialtactsActivity"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 368
    const/16 v24, 0x1

    move/from16 v0, p5

    move/from16 v1, v24

    if-le v0, v1, :cond_27

    .line 369
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_3

    goto/16 :goto_4

    .line 375
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d03f7

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 376
    goto/16 :goto_4

    .line 379
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d03f8

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_4

    .line 383
    :cond_27
    const-string v22, ""

    goto/16 :goto_4

    .line 386
    :cond_28
    move-object/from16 v22, v10

    goto/16 :goto_4

    .line 390
    .end local v5           #ClassName:Ljava/lang/String;
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v17           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19           #nameText:Ljava/lang/CharSequence;
    :cond_29
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2a

    .line 391
    move-object/from16 v19, v10

    .line 392
    .restart local v19       #nameText:Ljava/lang/CharSequence;
    move-object/from16 v22, v10

    goto/16 :goto_4

    .line 394
    .end local v19           #nameText:Ljava/lang/CharSequence;
    :cond_2a
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    .line 395
    .restart local v19       #nameText:Ljava/lang/CharSequence;
    const-string v24, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 396
    .restart local v6       #am:Landroid/app/ActivityManager;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v17

    .line 397
    .restart local v17       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 398
    .restart local v5       #ClassName:Ljava/lang/String;
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2c

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_2c

    const-string v24, "com.android.contacts.activities.DialtactsActivity"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2c

    .line 401
    const/16 v24, 0x1

    move/from16 v0, p5

    move/from16 v1, v24

    if-le v0, v1, :cond_2b

    .line 402
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_4

    goto/16 :goto_4

    .line 408
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d03f7

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 409
    goto/16 :goto_4

    .line 412
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d03f8

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_4

    .line 416
    :cond_2b
    const-string v22, ""

    goto/16 :goto_4

    .line 419
    :cond_2c
    move-object/from16 v22, v10

    goto/16 :goto_4

    .line 435
    .end local v5           #ClassName:Ljava/lang/String;
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v17           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2d
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    goto/16 :goto_5

    .line 448
    .restart local v14       #iCallType:I
    :cond_2e
    if-nez p7, :cond_2f

    if-eqz p8, :cond_2f

    .line 449
    move-object/from16 v19, p8

    goto/16 :goto_6

    .line 451
    :cond_2f
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_6

    .line 454
    :cond_30
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v14, v0, :cond_31

    if-eqz p9, :cond_31

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_31

    .line 455
    move-object/from16 v19, p9

    goto/16 :goto_6

    .line 458
    :cond_31
    if-eqz p6, :cond_e

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_e

    .line 459
    move-object/from16 v19, p6

    goto/16 :goto_6

    .line 462
    .end local v14           #iCallType:I
    :cond_32
    const-string v24, "feature_cnap"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 463
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_e

    .line 464
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v14, v24, v25

    .line 466
    .restart local v14       #iCallType:I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v14, v0, :cond_e

    if-eqz p6, :cond_e

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_e

    .line 467
    move-object/from16 v19, p6

    goto/16 :goto_6

    .line 502
    .end local v14           #iCallType:I
    .restart local v8       #callService:Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_34

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_35

    :cond_34
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_35

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d03b9

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    .line 506
    :cond_35
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x1f4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d03ba

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    .line 515
    :cond_36
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82232100404"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_38

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0d03bc

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 517
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_37

    .line 518
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82"

    const-string v26, "0"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_8

    .line 520
    :cond_37
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    goto/16 :goto_8

    .line 523
    :cond_38
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3a

    .line 524
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82234167010"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_39

    .line 525
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82"

    const-string v26, "0"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 526
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82"

    const-string v26, "0"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_8

    .line 528
    :cond_39
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_8

    .line 531
    :cond_3a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_8

    .line 535
    :cond_3b
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3c

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3c

    .line 536
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_8

    .line 538
    :cond_3c
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_8

    .line 570
    .end local v8           #callService:Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v25, v0

    const/16 v27, 0x101

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 575
    :sswitch_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d9

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 577
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 578
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    sparse-switch v24, :sswitch_data_5

    goto/16 :goto_a

    .line 584
    :sswitch_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x64

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 589
    :sswitch_11
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205cd

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x64

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 597
    :sswitch_12
    const-string v24, "feature_skt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3e

    .line 598
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 599
    :cond_3e
    const-string v24, "feature_kt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3f

    .line 600
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d6

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 601
    :cond_3f
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_40

    .line 602
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d7

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 604
    :cond_40
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d5

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 608
    :sswitch_13
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205ce

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 611
    :sswitch_14
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205de

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 614
    :sswitch_15
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205cb

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 617
    :sswitch_16
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205cc

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 620
    :sswitch_17
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205cf

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 623
    :sswitch_18
    const-string v24, "feature_cdma_layout"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_41

    const-string v24, "feature_gsm_layout"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_44

    .line 624
    :cond_41
    const-string v24, "feature_vzw_message_icon"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_42

    .line 625
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 627
    :cond_42
    const-string v24, "feature_usa_message_icon"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_43

    .line 628
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d3

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 631
    :cond_43
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d2

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 635
    :cond_44
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d2

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 638
    :sswitch_19
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_IMS_EnableRCSe"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 639
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205d1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 643
    :sswitch_1a
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_48

    .line 644
    const-string v24, "feature_skt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_46

    .line 645
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205dd

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 656
    :cond_45
    :goto_c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x3e8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 647
    :cond_46
    const-string v24, "feature_kt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_47

    .line 648
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205da

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 650
    :cond_47
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_45

    .line 651
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205db

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 654
    :cond_48
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f0205dc

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 573
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_f
        0x78 -> :sswitch_15
        0xc8 -> :sswitch_17
        0x12c -> :sswitch_18
        0x1f4 -> :sswitch_12
        0x1fe -> :sswitch_16
        0x320 -> :sswitch_13
        0x384 -> :sswitch_14
        0x3e8 -> :sswitch_1a
        0x44c -> :sswitch_19
    .end sparse-switch

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 342
    :sswitch_data_2
    .sparse-switch
        0x64 -> :sswitch_9
        0x78 -> :sswitch_9
        0xc8 -> :sswitch_a
        0x12c -> :sswitch_a
        0x1f4 -> :sswitch_9
        0x1fe -> :sswitch_9
        0x320 -> :sswitch_9
    .end sparse-switch

    .line 369
    :sswitch_data_3
    .sparse-switch
        0x64 -> :sswitch_b
        0x78 -> :sswitch_b
        0xc8 -> :sswitch_c
        0x12c -> :sswitch_c
        0x1f4 -> :sswitch_b
        0x1fe -> :sswitch_b
        0x320 -> :sswitch_b
    .end sparse-switch

    .line 402
    :sswitch_data_4
    .sparse-switch
        0x64 -> :sswitch_d
        0x78 -> :sswitch_d
        0xc8 -> :sswitch_e
        0x12c -> :sswitch_e
        0x1f4 -> :sswitch_d
        0x1fe -> :sswitch_d
        0x320 -> :sswitch_d
    .end sparse-switch

    .line 578
    :sswitch_data_5
    .sparse-switch
        0xb -> :sswitch_10
        0xc -> :sswitch_10
        0xd -> :sswitch_10
        0xe -> :sswitch_10
        0xf -> :sswitch_10
        0x32 -> :sswitch_11
    .end sparse-switch
.end method

.method protected setScrollState(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->setScrollState(I)V

    .line 730
    return-void
.end method

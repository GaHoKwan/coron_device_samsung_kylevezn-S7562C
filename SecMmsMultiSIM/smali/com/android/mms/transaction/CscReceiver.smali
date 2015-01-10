.class public Lcom/android/mms/transaction/CscReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CscReceiver.java"


# static fields
.field static final KEY_PRFS:[Ljava/lang/String; = null

.field static final KEY_PRFS_TYPE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/CscReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "csc_pref_key_enable_push_message"

    aput-object v1, v0, v3

    const-string v1, "csc_pref_key_service_loading_action"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_sms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_threshold"

    aput-object v1, v0, v6

    const-string v1, "csc_pref_key_threshold_Type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "csc_pref_key_max_recipient"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csc_pref_key_sms_input_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csc_pref_key_sms_email_gateway"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csc_pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "csc_pref_key_cb_settings_channel"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "csc_pref_key_mms_image_resize_resolution"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "csc_pref_key_mms_delivery_reports"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "csc_pref_key_mms_read_reports"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "csc_pref_key_mms_expiry"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "csc_pref_key_mms_max_size"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "csc_pref_key_mms_creation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "csc_pref_key_mms_max_recipient"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "csc_pref_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "csc_pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "csc_pref_key_msgtone_repeat_interval"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "csc_pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "csc_pref_key_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "csc_pref_key_sms_text_template"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "csc_pref_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "csc_pref_key_split_view"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "csc_pref_key_font_size_by_volume_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "csc_pref_key_mms_slide_max_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "csc_pref_key_enable_preview_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    .line 63
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "type_key_enable_push_message"

    aput-object v1, v0, v3

    const-string v1, "type_key_service_loading_action"

    aput-object v1, v0, v4

    const-string v1, "type_key_sms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "type_key_threshold"

    aput-object v1, v0, v6

    const-string v1, "type_key_threshold_Type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "type_key_max_recipient"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type_key_sms_input_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type_key_sms_email_gateway"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type_key_cb_settings_activation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type_key_cb_settings_channel"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "type_key_mms_image_resize_resolution"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "type_key_mms_delivery_reports"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "type_key_mms_read_reports"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "type_key_mms_expiry"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "type_key_mms_max_size"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type_key_mms_creation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "type_key_mms_max_recipient"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "type_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "type_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "type_key_msgtone_repeat_interval"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "type_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "type_key_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "type_key_sms_text_template"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "type_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "type_key_split_view"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "type_key_font_size_by_volume_key"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "type_key_mms_slide_max_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "type_key_enable_preview_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private storeCscValue(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 108
    .local v9, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 115
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_10

    .line 117
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS_TYPE:[Ljava/lang/String;

    aget-object v14, v14, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 119
    .local v13, type:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 121
    const-string v14, "STRING"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 122
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 123
    .local v11, stringValue:Ljava/lang/String;
    const-string v14, "Mms/CscReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "type="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " stringValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz v11, :cond_1

    .line 126
    const-string v14, "csc_pref_key_ringtone"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/android/mms/transaction/CscReceiver;->getCscRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, tempStringValue:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 129
    move-object v11, v12

    .line 132
    .end local v12           #tempStringValue:Ljava/lang/String;
    :cond_0
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-interface {v4, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-static {v14}, Lcom/android/mms/util/MessagingCscSetting;->findStringPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, prefKey:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 136
    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    .end local v8           #prefKey:Ljava/lang/String;
    .end local v11           #stringValue:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 138
    .restart local v8       #prefKey:Ljava/lang/String;
    .restart local v11       #stringValue:Ljava/lang/String;
    :cond_2
    const-string v14, "csc_pref_key_sms_email_gateway"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 139
    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setEmailGateway(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_3
    const-string v14, "csc_pref_key_mms_image_resize_resolution"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 141
    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setImageResolution(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_4
    const-string v14, "csc_pref_key_mms_max_size"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 143
    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_5
    const-string v14, "csc_pref_key_cb_settings_channel"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 145
    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setCBChannel(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_6
    const-string v14, "csc_pref_key_mms_expiry"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 147
    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setMmsExpiry(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_7
    const-string v14, "csc_pref_key_msgtone_repeat_interval"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 149
    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setMsgtoneRepeatInterval(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v8           #prefKey:Ljava/lang/String;
    .end local v11           #stringValue:Ljava/lang/String;
    :cond_8
    const-string v14, "INT"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 154
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 155
    .local v6, intValue:I
    const-string v14, "Mms/CscReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " intValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-interface {v4, v14, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 159
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-static {v14}, Lcom/android/mms/util/MessagingCscSetting;->findIntegerPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 160
    .restart local v8       #prefKey:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 161
    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 163
    :cond_9
    const-string v14, "csc_pref_key_threshold"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 164
    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setSmsMmsThreshold(I)V

    goto/16 :goto_1

    .line 165
    :cond_a
    const-string v14, "csc_pref_key_max_recipient"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 166
    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setRecipientLimit(I)V

    goto/16 :goto_1

    .line 167
    :cond_b
    const-string v14, "csc_pref_key_mms_max_recipient"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 168
    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setMmsMaxRecipient(I)V

    goto/16 :goto_1

    .line 169
    :cond_c
    const-string v14, "csc_pref_key_mms_slide_max_count"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 170
    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setMmsSlideMaxCount(I)V

    goto/16 :goto_1

    .line 173
    .end local v6           #intValue:I
    .end local v8           #prefKey:Ljava/lang/String;
    :cond_d
    const-string v14, "BOOLEAN"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 174
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 175
    .local v3, booleanValue:Z
    const-string v14, "Mms/CscReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mBooleanValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-interface {v4, v14, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-static {v14}, Lcom/android/mms/util/MessagingCscSetting;->findBooleanPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 179
    .restart local v8       #prefKey:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 180
    invoke-interface {v4, v8, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 184
    .end local v3           #booleanValue:Z
    .end local v8           #prefKey:Ljava/lang/String;
    :cond_e
    const-string v14, "STRINGARRAY"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 185
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, stringArrayValue:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v2, CSCTemplate:Ljava/lang/StringBuilder;
    const-string v14, "Mms/CscReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "type="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " stringArrayValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz v10, :cond_1

    .line 190
    const-string v14, "csc_pref_key_sms_text_template"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 192
    const/4 v7, 0x0

    .local v7, k:I
    :goto_2
    array-length v14, v10

    if-ge v7, v14, :cond_f

    .line 193
    aget-object v14, v10, v7

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v14, ";"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 196
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/mms/MmsConfig;->SetPreloadTextTemplate(Ljava/lang/String;)V

    .line 197
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 204
    .end local v2           #CSCTemplate:Ljava/lang/StringBuilder;
    .end local v7           #k:I
    .end local v10           #stringArrayValue:[Ljava/lang/String;
    .end local v13           #type:Ljava/lang/String;
    :cond_10
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void
.end method


# virtual methods
.method getCscRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 210
    if-nez p2, :cond_0

    .line 242
    :goto_0
    return-object v6

    .line 213
    :cond_0
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 215
    .local v2, rm:Landroid/media/RingtoneManager;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/media/RingtoneManager;->setType(I)V

    .line 216
    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 217
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "title"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 220
    .local v4, titleIndex:I
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, position:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 224
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 231
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lt v1, v7, :cond_4

    .line 232
    :cond_2
    const-string v7, "Mms/CscReceiver"

    const-string v8, "No matched ringtones."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 227
    .restart local v3       #title:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 228
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 242
    .end local v1           #position:I
    .end local v3           #title:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 235
    .restart local v1       #position:I
    :cond_4
    :try_start_2
    invoke-virtual {v2, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 236
    .local v5, uri:Landroid/net/Uri;
    if-nez v5, :cond_5

    .line 242
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 239
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 242
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/CscReceiver;->storeCscValue(Landroid/content/Context;Landroid/content/Intent;)V

    .line 104
    return-void
.end method

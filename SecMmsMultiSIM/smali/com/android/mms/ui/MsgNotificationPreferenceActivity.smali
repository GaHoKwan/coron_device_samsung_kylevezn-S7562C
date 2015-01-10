.class public Lcom/android/mms/ui/MsgNotificationPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MsgNotificationPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MsgNotificationPreferenceActivity"

.field private static final multiSimNum:I


# instance fields
.field private mActivePhone:I

.field private mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->multiSimNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MsgNotificationPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MsgNotificationPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setVibrateMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MsgNotificationPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setPreferenceSummary()V

    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 210
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :cond_0
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 3

    .prologue
    .line 144
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 149
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/mms/csc/CscLoader;->update(Landroid/content/Context;Z)Z

    .line 152
    iget v1, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mActivePhone:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 153
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 159
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setNotiPreferences()V

    .line 161
    invoke-direct {p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setPreferenceSummary()V

    .line 162
    return-void

    .line 155
    :cond_0
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method private setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V
    .locals 11
    .parameter "sharedPrefs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 216
    const-string v4, "pref_key_msg_reminder_alert"

    .line 218
    .local v4, preference_reminder:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, simSlotNum:I
    :goto_0
    sget v7, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->multiSimNum:I

    if-ge v5, v7, :cond_5

    .line 220
    if-eqz v5, :cond_0

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 226
    .local v0, aInt:I
    const/4 v2, 0x0

    .line 228
    .local v2, msg_reminder_alert_summary:Ljava/lang/String;
    const-string v7, "0"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, value:Ljava/lang/String;
    const/4 v3, 0x0

    .line 230
    .local v3, msg_repetition_alert_name:[Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 231
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 234
    if-ne v0, v9, :cond_3

    .line 235
    const/4 v7, 0x0

    aget-object v2, v3, v7

    .line 243
    :cond_1
    :goto_1
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 244
    .local v1, alerRepetitionPreference:Landroid/preference/Preference;
    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    .end local v1           #alerRepetitionPreference:Landroid/preference/Preference;
    :cond_3
    if-ne v0, v10, :cond_4

    .line 237
    aget-object v2, v3, v9

    goto :goto_1

    .line 238
    :cond_4
    const/16 v7, 0xa

    if-ne v0, v7, :cond_1

    .line 239
    aget-object v2, v3, v10

    goto :goto_1

    .line 248
    .end local v0           #aInt:I
    .end local v2           #msg_reminder_alert_summary:Ljava/lang/String;
    .end local v3           #msg_repetition_alert_name:[Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private setNotiPreferences()V
    .locals 5

    .prologue
    .line 187
    const-string v0, "pref_key_backlight"

    .line 188
    .local v0, preference_backlight:Ljava/lang/String;
    const-string v2, "pref_key_vibrateWhen_checkbox"

    .line 189
    .local v2, preference_vibrate:Ljava/lang/String;
    const-string v1, "pref_key_msg_reminder_alert"

    .line 192
    .local v1, preference_reminder:Ljava/lang/String;
    iget v3, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mActivePhone:I

    if-eqz v3, :cond_0

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mActivePhone:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mActivePhone:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mActivePhone:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationBacklight()Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 201
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v3

    if-nez v3, :cond_2

    .line 202
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 203
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v3

    if-nez v3, :cond_3

    .line 204
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 206
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setVibrateMenu()V

    .line 207
    return-void
.end method

.method private setPreferenceSummary()V
    .locals 2

    .prologue
    .line 308
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setRingtoneStyleSummary(Landroid/content/SharedPreferences;)V

    .line 312
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    .line 315
    :cond_0
    return-void
.end method

.method private setRingtoneStyleSummary(Landroid/content/SharedPreferences;)V
    .locals 16
    .parameter "sharedPrefs"

    .prologue
    .line 251
    const-string v10, "pref_key_ringtone"

    .line 253
    .local v10, preference_ringtone:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, simSlotNum:I
    :goto_0
    sget v1, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->multiSimNum:I

    if-ge v13, v1, :cond_8

    .line 255
    if-eqz v13, :cond_0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_sim"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 260
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 261
    .local v12, ringtonePreference:Landroid/preference/Preference;
    if-eqz v12, :cond_3

    .line 262
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, ringtoneIndex:Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 264
    .local v2, ringtoneUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x104057a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 267
    .local v15, summary:Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 268
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x104057c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 301
    :cond_2
    :goto_2
    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    .end local v2           #ringtoneUri:Landroid/net/Uri;
    .end local v11           #ringtoneIndex:Ljava/lang/String;
    .end local v15           #summary:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 263
    .restart local v11       #ringtoneIndex:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 273
    .restart local v2       #ringtoneUri:Landroid/net/Uri;
    .restart local v15       #summary:Ljava/lang/CharSequence;
    :cond_5
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 290
    .local v9, cursor:Landroid/database/Cursor;
    :goto_3
    if-eqz v9, :cond_2

    .line 291
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 292
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 294
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 296
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 298
    .local v14, sqle:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Mms/MsgNotificationPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when query ringtone title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 282
    .end local v14           #sqle:Landroid/database/sqlite/SQLiteException;
    :cond_7
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "title"

    aput-object v6, v5, v1

    const-string v6, "_data=?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .restart local v9       #cursor:Landroid/database/Cursor;
    goto :goto_3

    .line 305
    .end local v2           #ringtoneUri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #ringtoneIndex:Ljava/lang/String;
    .end local v12           #ringtonePreference:Landroid/preference/Preference;
    .end local v15           #summary:Ljava/lang/CharSequence;
    :cond_8
    return-void
.end method

.method private setVibrateMenu()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 318
    const-string v1, "pref_key_ringtone"

    .line 319
    .local v1, preference_ringtone:Ljava/lang/String;
    const-string v2, "pref_key_vibrateWhen_checkbox"

    .line 321
    .local v2, preference_vibrate:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, simSlotNum:I
    :goto_0
    sget v6, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->multiSimNum:I

    if-ge v4, v6, :cond_5

    .line 323
    if-eqz v4, :cond_0

    .line 324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    :cond_0
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 330
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 331
    .local v3, ringtonePreference:Landroid/preference/Preference;
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 333
    .local v5, vbrateWhenPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-nez v6, :cond_3

    .line 335
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 336
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 344
    :cond_1
    if-eqz v3, :cond_2

    .line 345
    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 321
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 348
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 349
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 354
    :cond_4
    if-eqz v3, :cond_2

    .line 355
    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 360
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #ringtonePreference:Landroid/preference/Preference;
    .end local v5           #vbrateWhenPref:Landroid/preference/CheckBoxPreference;
    :cond_5
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 87
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const-string v2, "Mms/MsgNotificationPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multiSimNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->multiSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 93
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "simSlot"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "simSlot"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mActivePhone:I

    .line 95
    const-string v2, "Mms/MsgNotificationPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActivePhone : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mActivePhone:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget v2, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mActivePhone:I

    if-ne v2, v5, :cond_2

    .line 99
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 106
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setNotiPreferences()V

    .line 111
    iget-object v2, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void

    .line 101
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    const v2, 0x7f050007

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 134
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 364
    packed-switch p1, :pswitch_data_0

    .line 370
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 367
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setVibrateMenu()V

    .line 368
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 375
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 382
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 379
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 380
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setVibrateMenu()V

    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setPreferenceSummary()V

    .line 122
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 165
    const-string v2, "Mms/MsgNotificationPreferenceActivity"

    const-string v3, "[MsgNoti] onSharedPreferenceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "pref_key_msg_reminder_alert"

    .line 169
    .local v0, preference_reminder:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, simSlotNum:I
    :goto_0
    sget v2, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->multiSimNum:I

    if-ge v1, v2, :cond_2

    .line 171
    if-eqz v1, :cond_0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setRingtoneStyleSummary(Landroid/content/SharedPreferences;)V

    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    .line 169
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_2
    return-void
.end method

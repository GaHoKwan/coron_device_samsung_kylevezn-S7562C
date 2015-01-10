.class public Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;
.super Ljava/lang/Object;
.source "AABFlagInfo.java"


# static fields
.field private static aabFlagObject:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

.field public static ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->aabFlagObject:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sput-object p1, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->ctx:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->aabFlagObject:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->aabFlagObject:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    .line 54
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->aabFlagObject:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    return-object v0
.end method

.method private resetAABEnabledFlag()V
    .locals 5

    .prologue
    .line 162
    new-instance v1, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo$1;-><init>(Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;)V

    .line 170
    .local v1, th:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 171
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "AABFlagInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while execution of thread...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private simChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "storedIMSI"
    .parameter "storedSerial"
    .parameter "currentIMSI"
    .parameter "currentSerial"

    .prologue
    const/4 v0, 0x1

    .line 133
    if-nez p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz p4, :cond_2

    .line 135
    :cond_1
    const-string v1, "AABFlagInfo"

    const-string v2, "SIM change : true 1 "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return v0

    .line 139
    :cond_2
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 141
    :cond_3
    const-string v1, "AABFlagInfo"

    const-string v2, "SIM change : true 2 "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_4
    const-string v0, "AABFlagInfo"

    const-string v1, "SIM change : false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private storeSIMDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "sim_imsi"
    .parameter "sim_serial"
    .parameter "IMSI"
    .parameter "SIM_SERIAL"

    .prologue
    .line 151
    sget-object v2, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->ctx:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 152
    .local v1, spref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AABFlagInfo"

    const-string v3, "Storing SIM IMSI"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-interface {v0, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0, p4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method


# virtual methods
.method public addRegistrationCountFlag(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 221
    const-string v3, "AABFlagInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRegistrationCountFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getRegistrationCountFlag()I

    move-result v1

    .line 224
    .local v1, registrationCount:I
    if-nez p1, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 230
    :goto_0
    sget-object v3, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->ctx:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 231
    .local v2, spref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 232
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "REGISTRATION_COUNT_FLAG"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    return-void

    .line 227
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #spref:Landroid/content/SharedPreferences;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public checkAABStatus()Z
    .locals 13

    .prologue
    .line 89
    sget-object v10, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->ctx:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 90
    .local v6, spref:Landroid/content/SharedPreferences;
    const-string v10, "REGISTRATION_COMPLETE_FLAG"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 92
    .local v3, registration_complete_flag:Z
    const-string v0, "IMSI"

    .line 93
    .local v0, IMSI:Ljava/lang/String;
    const-string v1, "SIMSERIAL"

    .line 94
    .local v1, SIM_SERIAL:Ljava/lang/String;
    const/4 v5, 0x0

    .line 95
    .local v5, sim_serial:Ljava/lang/String;
    const/4 v4, 0x0

    .line 97
    .local v4, sim_imsi:Ljava/lang/String;
    :try_start_0
    sget-object v10, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->ctx:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 98
    .local v9, tmanager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 108
    .end local v9           #tmanager:Landroid/telephony/TelephonyManager;
    :goto_0
    const/4 v10, 0x0

    invoke-interface {v6, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, stored_imsi:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v6, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, stored_sim_serialId:Ljava/lang/String;
    const-string v10, "AABFlagInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "REGISTRATION_COMPLETE_FLAG: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez v4, :cond_0

    if-eqz v5, :cond_2

    .line 116
    :cond_0
    invoke-direct {p0, v7, v8, v4, v5}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->simChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 117
    const-string v10, "AABFlagInfo"

    const-string v11, "SIM has changed"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->storeSIMDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->resetAABEnabledFlag()V

    .line 120
    const/4 v10, 0x1

    .line 128
    :goto_1
    return v10

    .line 100
    .end local v7           #stored_imsi:Ljava/lang/String;
    .end local v8           #stored_sim_serialId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 101
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "AABFlagInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error came while reading SIM: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v10, "AABFlagInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No SIM detected"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    goto :goto_0

    .line 121
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v7       #stored_imsi:Ljava/lang/String;
    .restart local v8       #stored_sim_serialId:Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_3

    .line 122
    const-string v10, "AABFlagInfo"

    const-string v11, "Registration is not completed"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v10, 0x1

    goto :goto_1

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->resetAABEnabledFlag()V

    .line 128
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public getRegistrationCountFlag()I
    .locals 3

    .prologue
    .line 237
    sget-object v1, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    .local v0, spref:Landroid/content/SharedPreferences;
    const-string v1, "REGISTRATION_COUNT_FLAG"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public initSyncFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 185
    return-void
.end method

.method public resetAllFlags(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "aab_enabled_flag,setImport_flag"

    const-string v1, "Resetting all Flags..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->setAABEnabledFlag(Z)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->setImportFlag(Z)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->initSyncFlag(Z)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->setRegistrationCompleteFlag(Z)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->addRegistrationCountFlag(I)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public setAABEnabledFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 182
    return-void
.end method

.method public setImportFlag(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 191
    const-string v2, "AABFlagInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source: Storing SIM Import Flag.. to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v2, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->ctx:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 193
    .local v1, spref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SIM_IMPORT_FLAG"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    return-void
.end method

.method public setRegistrationCompleteFlag(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 213
    const-string v2, "AABFlagInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRegistrationCompleteFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v2, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->ctx:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 215
    .local v1, spref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "REGISTRATION_COMPLETE_FLAG"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    return-void
.end method

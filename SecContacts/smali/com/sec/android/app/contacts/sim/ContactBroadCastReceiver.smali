.class public Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactBroadCastReceiver.java"


# static fields
.field private static bFirstBoot:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isFirstBootTime()Z
    .locals 6

    .prologue
    .line 188
    const-string v3, "ro.runtime.firstboot"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, firstBootTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "runtime_firstboot_time"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, runtimeBootTime:Ljava/lang/String;
    const-string v3, "ContactBroadCastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ firstBootTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " runtimeBootTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    :cond_0
    const/4 v3, 0x1

    .line 197
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSim1DBInitializeNeeded()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 203
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "sim_db_ready"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 204
    .local v2, simDbReady:I
    const-string v4, "ContactBroadCastReceiver_Sim2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ isSim1DBInitializeNeeded :  bFirstBoot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simDbReady : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-boolean v4, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    if-eqz v4, :cond_1

    .line 207
    if-eqz v2, :cond_0

    .line 208
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "sim_db_ready"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 210
    const-string v4, "adn_editable"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v3, 0x1

    .line 216
    :cond_1
    return v3
.end method

.method private isSim2DBInitializeNeeded()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 221
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "sim2_db_ready"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 222
    .local v2, simDbReady:I
    const-string v4, "ContactBroadCastReceiver_Sim2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ isSim2DBInitializeNeeded :  bFirstBoot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simDbReady : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-boolean v4, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    if-eqz v4, :cond_1

    .line 225
    if-eqz v2, :cond_0

    .line 226
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "sim2_db_ready"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v4, "adn2_editable"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v3, 0x1

    .line 234
    :cond_1
    return v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x270f

    const/16 v6, 0x1e61

    const/16 v5, 0x1a0a

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 53
    :goto_0
    const-string v3, "ContactBroadCastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ AirPlane mode changed!! Enable ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const-string v3, "op"

    const/16 v4, 0x22b8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 66
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 67
    const-string v4, "AIRPLANE_MODE_DB_UPDATED"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    const-string v2, "AIRPLANE_MODE_CHANGED"

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 167
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 51
    goto :goto_0

    .line 95
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isSimDbSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isFirstBootTime()Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    .line 101
    const-string v2, "com.samsung.intent.action.SIM_DB_INIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isSim1DBInitializeNeeded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string v3, "op"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    :cond_3
    :goto_2
    const-string v2, "com.samsung.intent.action.SIM2_DB_INIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isSim2DBInitializeNeeded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v1, "op"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 106
    :cond_4
    const-string v2, "com.samsung.intent.action.PB_SYNC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v3, "op"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    goto :goto_2

    .line 111
    :cond_5
    const-string v2, "android.intent.action.FDN_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    const-string v3, "op"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 122
    :cond_6
    const-string v2, "com.samsung.intent.action.PB2_SYNC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v2, "op"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    goto/16 :goto_1

    .line 127
    :cond_7
    const-string v1, "android.intent.action.FDN2_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const-string v1, "op"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1
.end method

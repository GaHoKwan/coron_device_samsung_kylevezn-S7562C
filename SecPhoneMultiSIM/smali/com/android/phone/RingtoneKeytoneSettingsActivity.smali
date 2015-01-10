.class public Lcom/android/phone/RingtoneKeytoneSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "RingtoneKeytoneSettingsActivity.java"


# instance fields
.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSimSlot:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/RingtoneKeytoneSettingsActivity$1;-><init>(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)V

    iput-object v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mSimSlot:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mSimSlot:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/RingtoneKeytoneSettingsActivity;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 132
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 8
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 103
    if-nez p2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x104057e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 108
    const v0, 0x104057c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 112
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getCurrentSimSlot()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mSimSlot:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CallSettingTab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mSimSlot:I

    .line 67
    const-string v1, "RingtoneKeytoneSettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----mSimId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const v1, 0x7f06002d

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 71
    const-string v1, "callsettings_device_ringtone"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtonePreference:Landroid/preference/Preference;

    .line 73
    new-instance v1, Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;-><init>(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)V

    iput-object v1, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->lookupRingtoneName()V

    .line 95
    return-void
.end method

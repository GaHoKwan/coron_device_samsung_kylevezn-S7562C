.class public Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "VerizonBackupAssistantActivity.java"


# static fields
.field private static final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static neverShowVZWBackupAssistantAgain(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showVerizonBackupAssistant"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    return-void
.end method

.method private static regiterBroadcastReceiver(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.BackupAssistant.action.PROVISION_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public static shouldShowVZWBackupAssistant(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "showVerizonBackupAssistant"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startVZWBackupAssistantActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->regiterBroadcastReceiver(Landroid/app/Activity;)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.BackupAssistant.action.CHECK_PROVISION_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 101
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->neverShowVZWBackupAssistantAgain(Landroid/content/Context;)V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f040186

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    return-void
.end method

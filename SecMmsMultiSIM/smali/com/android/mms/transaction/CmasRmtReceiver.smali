.class public Lcom/android/mms/transaction/CmasRmtReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CmasRmtReceiver.java"


# static fields
.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    const-string v0, "CMAS/CMASRMTReceiver"

    iput-object v0, p0, Lcom/android/mms/transaction/CmasRmtReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 30
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v4, i:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, host:Ljava/lang/String;
    const-string v6, "com.android.samsung.rmt_exercise"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    const-string v6, "CMAS/CMASRMTReceiver"

    const-string v7, "RMT/Excercise boradcast Received"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    .local v0, Prefs:Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 38
    .local v5, turn_on_off:Z
    const-string v6, "#cmas#type##exercise#enabled"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    const/4 v5, 0x0

    .line 43
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 44
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "#cmas#type##exercise#enabled"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    invoke-static {p1}, Lcom/android/mms/ui/CMASPreferenceActivity;->setCMASConfig(Landroid/content/Context;)V

    .line 47
    if-eqz v5, :cond_2

    .line 48
    const v6, 0x7f0a0286

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 52
    :goto_1
    const-string v6, "CMAS/CMASRMTReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "turn_on_off "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #i:Landroid/content/Intent;
    .end local v5           #turn_on_off:Z
    :cond_0
    :goto_2
    return-void

    .line 41
    .restart local v0       #Prefs:Landroid/content/SharedPreferences;
    .restart local v3       #host:Ljava/lang/String;
    .restart local v4       #i:Landroid/content/Intent;
    .restart local v5       #turn_on_off:Z
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 50
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const v6, 0x7f0a0287

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 53
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #turn_on_off:Z
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.class public Lcom/android/phone/DsaMainParser;
.super Landroid/app/Activity;
.source "DsaMainParser.java"


# static fields
.field public static mEdit:Landroid/content/SharedPreferences$Editor;

.field private static mIsFirst:Z

.field public static mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/android/phone/DsaMainParser;->mPref:Landroid/content/SharedPreferences;

    .line 34
    sput-object v0, Lcom/android/phone/DsaMainParser;->mEdit:Landroid/content/SharedPreferences$Editor;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/DsaMainParser;->mIsFirst:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static resetDsaInitial()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/DsaMainParser;->setDsaInitial(Z)V

    .line 148
    return-void
.end method

.method public static setDsaInitial(Z)V
    .locals 3
    .parameter "isFirst"

    .prologue
    .line 138
    sget-object v0, Lcom/android/phone/DsaMainParser;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dsa_IsFirst"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    sget-object v0, Lcom/android/phone/DsaMainParser;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    const-string v0, "DsaMainParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 43
    const-string v7, "DsaMainParser"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v7, "dsa_Initial"

    invoke-virtual {p0, v7, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    sput-object v7, Lcom/android/phone/DsaMainParser;->mPref:Landroid/content/SharedPreferences;

    .line 48
    sget-object v7, Lcom/android/phone/DsaMainParser;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    sput-object v7, Lcom/android/phone/DsaMainParser;->mEdit:Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 53
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "extra_changed_imsi"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 55
    const-string v7, "DsaMainParser"

    const-string v8, "EXTRA_CHANGED_IMSI"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/android/phone/DsaMainParser;->resetDsaInitial()V

    .line 59
    const-string v7, "dsa_phone_number"

    invoke-virtual {p0, v7, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 60
    .local v6, pref:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 61
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v7, "dsa_phone_number_sim1"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    const-string v7, "dsa_phone_number_sim2"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    const-string v7, "dsa_main"

    invoke-virtual {p0, v7, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 66
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 67
    const-string v7, "dsa_result_dialog_success_is_checked"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v7, v9

    .line 72
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dsa_is_activate"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dsa_is_first"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dsa_inter_change"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 79
    const-string v7, "dsa_phone_number"

    invoke-virtual {p0, v7, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 80
    .restart local v6       #pref:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 81
    .restart local v1       #edit:Landroid/content/SharedPreferences$Editor;
    const-string v7, "dsa_phone_number_sim2"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, phoneNB1:Ljava/lang/String;
    const-string v7, "dsa_phone_number_sim1"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, phoneNB2:Ljava/lang/String;
    const-string v7, "dsa_phone_number_sim1"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v7, "dsa_phone_number_sim2"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    const-string v7, "SelectSimStatus"

    invoke-virtual {p0, v7, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 89
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 90
    const-string v7, "SimStatus"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, dsaStatus:I
    if-ne v0, v11, :cond_3

    .line 93
    const/4 v0, 0x2

    .line 99
    :cond_1
    :goto_0
    const-string v7, "SimStatus"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dsa_inter_change"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    .end local v0           #dsaStatus:I
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v4           #phoneNB1:Ljava/lang/String;
    .end local v5           #phoneNB2:Ljava/lang/String;
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 95
    .restart local v0       #dsaStatus:I
    .restart local v1       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #phoneNB1:Ljava/lang/String;
    .restart local v5       #phoneNB2:Ljava/lang/String;
    .restart local v6       #pref:Landroid/content/SharedPreferences;
    :cond_3
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 107
    const-string v2, "DsaMainParser"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    sget-object v2, Lcom/android/phone/DsaMainParser;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "dsa_IsFirst"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/DsaMainParser;->mIsFirst:Z

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v1, myIntent:Landroid/content/Intent;
    sget-boolean v2, Lcom/android/phone/DsaMainParser;->mIsFirst:Z

    if-eqz v2, :cond_1

    .line 117
    const-string v2, "DsaExtraInitial"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    const-string v2, "com.android.phone.DsaPhoneNumber"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_init_dialog"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "extra_init_dialog"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void

    .line 129
    :cond_1
    const-string v2, "com.android.phone.DsaMain"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

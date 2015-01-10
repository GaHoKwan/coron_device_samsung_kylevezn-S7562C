.class Lcom/android/phone/CallFeaturesSetting$14;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 3046
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 3049
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3050
    .local v0, action:Ljava/lang/String;
    const-string v8, "CallFeaturesSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3052
    const-string v8, "state"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 3053
    .local v7, state:Ljava/lang/Boolean;
    const-string v8, "CallFeaturesSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3055
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const-string v9, "sip_settings_category_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 3056
    .local v6, sipSettings:Landroid/preference/Preference;
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v8}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 3057
    .local v4, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 3058
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3059
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 3060
    .local v3, pref:Landroid/preference/Preference;
    if-eq v3, v6, :cond_0

    .line 3061
    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 3058
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3064
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #screen:Landroid/preference/PreferenceScreen;
    .end local v6           #sipSettings:Landroid/preference/Preference;
    :cond_1
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v8}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 3076
    .end local v7           #state:Ljava/lang/Boolean;
    :cond_2
    :goto_1
    return-void

    .line 3066
    :cond_3
    const-string v8, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3067
    const-string v8, "feature_att"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3068
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$2800(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_tty_mode"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3070
    .local v5, settingsTtyMode:I
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForeground:Z
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$2900(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3071
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 3072
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V
    invoke-static {v8, v5}, Lcom/android/phone/CallFeaturesSetting;->access$3100(Lcom/android/phone/CallFeaturesSetting;I)V

    goto :goto_1
.end method

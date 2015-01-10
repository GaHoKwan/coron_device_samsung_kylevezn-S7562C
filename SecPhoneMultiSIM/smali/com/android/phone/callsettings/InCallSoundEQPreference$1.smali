.class Lcom/android/phone/callsettings/InCallSoundEQPreference$1;
.super Ljava/lang/Object;
.source "InCallSoundEQPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/InCallSoundEQPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    .line 65
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, value:I
    packed-switch v2, :pswitch_data_0

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 95
    .local v1, eqListValue:I
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, eqListEntries:[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 98
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    #getter for: Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v3

    const v4, 0x7f0e0391

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 103
    :goto_1
    const/4 v3, 0x1

    .end local v0           #eqListEntries:[Ljava/lang/String;
    :goto_2
    return v3

    .line 70
    .end local v1           #eqListValue:I
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_direction"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_diagnosis"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 80
    .restart local v1       #eqListValue:I
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    #getter for: Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    const/16 v5, 0x1f7

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_2

    .line 84
    .end local v1           #eqListValue:I
    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_direction"

    add-int/lit8 v6, v2, -0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 100
    .restart local v0       #eqListEntries:[Ljava/lang/String;
    .restart local v1       #eqListValue:I
    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    #getter for: Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

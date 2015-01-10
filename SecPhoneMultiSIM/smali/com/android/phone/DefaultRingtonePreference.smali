.class public Lcom/android/phone/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private mSimSlot:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    move-object v1, v0

    .line 42
    .local v1, RingtoneActivity:Lcom/android/phone/RingtoneKeytoneSettingsActivity;
    invoke-virtual {v1}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->getCurrentSimSlot()I

    move-result v3

    iput v3, p0, Lcom/android/phone/DefaultRingtonePreference;->mSimSlot:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #RingtoneActivity:Lcom/android/phone/RingtoneKeytoneSettingsActivity;
    :goto_0
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v3

    iget v4, p0, Lcom/android/phone/DefaultRingtonePreference;->mSimSlot:I

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->convertSettingForType(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 49
    return-void

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, ex:Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/DefaultRingtonePreference;->mSimSlot:I

    goto :goto_0
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 59
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 65
    return-void
.end method

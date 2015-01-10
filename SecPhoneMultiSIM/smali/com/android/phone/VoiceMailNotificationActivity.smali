.class public Lcom/android/phone/VoiceMailNotificationActivity;
.super Landroid/preference/PreferenceActivity;
.source "VoiceMailNotificationActivity.java"


# instance fields
.field private mSimSlot:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/VoiceMailNotificationActivity;->mSimSlot:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const-string v0, "VoiceMailNotificationActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CallSettingTab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/VoiceMailNotificationActivity;->mSimSlot:I

    .line 22
    iget v0, p0, Lcom/android/phone/VoiceMailNotificationActivity;->mSimSlot:I

    if-nez v0, :cond_0

    .line 23
    const v0, 0x7f060042

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

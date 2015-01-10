.class Lcom/android/phone/CallFeaturesSetting$15;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->initGeneralSetting(Z)V
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
    .line 3519
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3523
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 3526
    .local v1, newIntValue:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$3200(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "area_code_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3530
    .local v2, value:I
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$3300(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "area_code_value"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3532
    .local v0, data:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange newValue : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", getValue : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Ljava/lang/String;)V

    .line 3534
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$3400(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "area_code_enabled"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3537
    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateSummaryAutoAreaCode(ILjava/lang/String;)V
    invoke-static {v3, v1, v0}, Lcom/android/phone/CallFeaturesSetting;->access$3500(Lcom/android/phone/CallFeaturesSetting;ILjava/lang/String;)V

    .line 3538
    :cond_0
    return v4

    .end local v0           #data:Ljava/lang/String;
    .end local v1           #newIntValue:I
    .end local v2           #value:I
    .restart local p2
    :cond_1
    move v1, v5

    .line 3523
    goto :goto_0
.end method

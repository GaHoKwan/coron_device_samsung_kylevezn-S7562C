.class public Lcom/android/phone/InCallScreenShowActivation;
.super Landroid/app/Activity;
.source "InCallScreenShowActivation.java"


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 47
    sget v2, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v2, v0, :cond_0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 55
    .local v3, intent:Landroid/content/Intent;
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate: intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 57
    .local v2, extras:Landroid/os/Bundle;
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 58
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      - has extras: size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      - extras = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 63
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {v9}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 64
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 65
    const-string v6, "InCallScreenShowActivation"

    const-string v7, "CDMA Provisioning not supported on this device"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 140
    :goto_0
    return-void

    .line 71
    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 75
    sget-boolean v4, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 76
    .local v4, interactiveMode:Z
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_PERFORM_CDMA_PROVISIONING (interactiveMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v6, "ota_override_interactive_mode"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ro.debuggable"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 85
    const-string v6, "ota_override_interactive_mode"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 87
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===> MANUALLY OVERRIDING interactiveMode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_3
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    const-string v6, "otasp_result_code_pending_intent"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    iput-object v6, v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    .line 101
    if-eqz v4, :cond_5

    .line 107
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "InCallScreenShowActivation"

    const-string v7, "==> Starting interactive CDMA provisioning..."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startInteractiveOtasp(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0, v10}, Landroid/app/Activity;->setResult(I)V

    .line 139
    .end local v4           #interactiveMode:Z
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 122
    .restart local v4       #interactiveMode:Z
    :cond_5
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "InCallScreenShowActivation"

    const-string v7, "==> Starting non-interactive CDMA provisioning..."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_6
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startNonInteractiveOtasp(Landroid/content/Context;)I

    move-result v1

    .line 125
    .local v1, callStatus:I
    if-nez v1, :cond_8

    .line 126
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> successful result from startNonInteractiveOtasp(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_7
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 130
    :cond_8
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure code from startNonInteractiveOtasp(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 135
    .end local v1           #callStatus:I
    .end local v4           #interactiveMode:Z
    :cond_9
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected intent action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0, v9}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method

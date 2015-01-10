.class public Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;
.super Ljava/lang/Object;
.source "SettingsReservationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SettingsReservationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "settingStateReserver"
.end annotation


# instance fields
.field private isBackUp:Z

.field private isDataBntFocused:Z

.field private isOriginalCheckState:Z

.field private isTimeBntFocused:Z

.field private mSendTimeBakupReserver:J

.field private mState:Landroid/os/Bundle;

.field private settingSwitch:Z

.field final synthetic this$0:Lcom/android/mms/ui/SettingsReservationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SettingsReservationActivity;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter "State"

    .prologue
    const/4 v1, 0x0

    .line 63
    iput-object p1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->settingSwitch:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isDataBntFocused:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isTimeBntFocused:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isOriginalCheckState:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mSendTimeBakupReserver:J

    .line 70
    return-void
.end method


# virtual methods
.method initSettingStateReserver()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isDataBntFocused:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isTimeBntFocused:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isBackUp:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mSendTimeBakupReserver:J

    .line 78
    return-void
.end method

.method reStoreSettingState()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$000(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v2, "buttonDateState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$100(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v2, "buttonTimeState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v2, "SendTimeBakup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    #setter for: Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->access$202(Lcom/android/mms/ui/SettingsReservationActivity;J)J

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->initSettingStateReserver()V

    .line 99
    return-void
.end method

.method reserveSettingState()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$000(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isDataBntFocused:Z

    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$100(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isTimeBntFocused:Z

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/SettingsReservationActivity;->bOriginalCheckState:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isOriginalCheckState:Z

    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    #getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$200(Lcom/android/mms/ui/SettingsReservationActivity;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mSendTimeBakupReserver:J

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isBackUp:Z

    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "CheckBoxState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->settingSwitch:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "buttonDateState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isDataBntFocused:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "buttonTimeState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isTimeBntFocused:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "OriginalCheckState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isOriginalCheckState:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "SendTimeBakup"

    iget-wide v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mSendTimeBakupReserver:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->mState:Landroid/os/Bundle;

    const-string v1, "isBackUpUIState"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;->isBackUp:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

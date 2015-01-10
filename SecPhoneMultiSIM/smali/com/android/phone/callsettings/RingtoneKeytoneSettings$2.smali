.class Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;
.super Ljava/lang/Object;
.source "RingtoneKeytoneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    #getter for: Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->access$000(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    #getter for: Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->access$000(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->access$100(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;ILandroid/preference/Preference;I)V

    .line 134
    :cond_0
    return-void
.end method

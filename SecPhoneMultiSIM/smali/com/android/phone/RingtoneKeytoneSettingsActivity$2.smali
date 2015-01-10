.class Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;
.super Ljava/lang/Object;
.source "RingtoneKeytoneSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RingtoneKeytoneSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;->this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;->this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    #getter for: Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->access$000(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;->this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    #getter for: Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mSimSlot:I
    invoke-static {v0}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->access$100(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;->this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    iget-object v1, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;->this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    #getter for: Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->access$000(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/phone/RingtoneKeytoneSettingsActivity;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->access$200(Lcom/android/phone/RingtoneKeytoneSettingsActivity;ILandroid/preference/Preference;I)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;->this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$2;->this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    #getter for: Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->access$000(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)Landroid/preference/Preference;

    move-result-object v2

    #calls: Lcom/android/phone/RingtoneKeytoneSettingsActivity;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->access$200(Lcom/android/phone/RingtoneKeytoneSettingsActivity;ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

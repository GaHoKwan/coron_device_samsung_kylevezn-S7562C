.class Lcom/android/phone/RingtoneKeytoneSettingsActivity$1;
.super Landroid/os/Handler;
.source "RingtoneKeytoneSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RingtoneKeytoneSettingsActivity;
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
    .line 47
    iput-object p1, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$1;->this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 52
    :pswitch_0
    const-string v0, "RingtoneKeytoneSettingsActivity"

    const-string v1, "MSG_UPDATE_RINGTONE_SUMMARY : "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/phone/RingtoneKeytoneSettingsActivity$1;->this$0:Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    #getter for: Lcom/android/phone/RingtoneKeytoneSettingsActivity;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/RingtoneKeytoneSettingsActivity;->access$000(Lcom/android/phone/RingtoneKeytoneSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

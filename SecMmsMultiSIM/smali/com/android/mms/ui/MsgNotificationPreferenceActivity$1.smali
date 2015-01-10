.class Lcom/android/mms/ui/MsgNotificationPreferenceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MsgNotificationPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MsgNotificationPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MsgNotificationPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MsgNotificationPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MsgNotificationPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MsgNotificationPreferenceActivity;

    #calls: Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setVibrateMenu()V
    invoke-static {v0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->access$000(Lcom/android/mms/ui/MsgNotificationPreferenceActivity;)V

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/MsgNotificationPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MsgNotificationPreferenceActivity;

    #calls: Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->setPreferenceSummary()V
    invoke-static {v0}, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;->access$100(Lcom/android/mms/ui/MsgNotificationPreferenceActivity;)V

    .line 82
    :cond_0
    return-void
.end method

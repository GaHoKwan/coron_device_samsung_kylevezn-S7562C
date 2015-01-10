.class public Lcom/android/mms/transaction/SmsRejectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsRejectedReceiver.java"


# static fields
.field public static final SMS_REJECTED_NOTIFICATION_ID:I = 0xef

.field private static final TAG:Ljava/lang/String; = "Mms/SmsRejectedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 44
    const-string v9, "Mms/SmsRejectedReceiver"

    const-string v10, "onReceive"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "device_provisioned"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v3, :cond_0

    const-string v9, "android.provider.Telephony.SMS_REJECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 50
    const-string v9, "result"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 51
    .local v5, reason:I
    const/4 v9, 0x3

    if-ne v5, v9, :cond_1

    .line 52
    .local v3, outOfMemory:Z
    :goto_0
    if-nez v3, :cond_2

    .line 96
    .end local v3           #outOfMemory:Z
    .end local v5           #reason:I
    :cond_0
    :goto_1
    return-void

    .restart local v5       #reason:I
    :cond_1
    move v3, v8

    .line 51
    goto :goto_0

    .line 57
    .restart local v3       #outOfMemory:Z
    :cond_2
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 60
    .local v1, nm:Landroid/app/NotificationManager;
    new-instance v7, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v7, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v7, viewConvIntent:Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/high16 v9, 0x3400

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    invoke-static {p1, v8, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 66
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 69
    .local v2, notification:Landroid/app/Notification;
    const v8, 0x7f020325

    iput v8, v2, Landroid/app/Notification;->icon:I

    .line 72
    if-eqz v3, :cond_3

    .line 73
    const v6, 0x7f0a00e4

    .line 74
    .local v6, titleId:I
    const v0, 0x7f0a00e5

    .line 79
    .local v0, bodyId:I
    :goto_2
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 80
    iput v11, v2, Landroid/app/Notification;->defaults:I

    .line 86
    iget v8, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v8, v8, -0x3

    iput v8, v2, Landroid/app/Notification;->defaults:I

    .line 87
    const/16 v8, 0x11

    iput v8, v2, Landroid/app/Notification;->haptic:I

    .line 90
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, p1, v8, v9, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 92
    const/16 v8, 0xef

    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 94
    const-string v8, "Mms/SmsRejectedReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notify outOfMemory="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v0           #bodyId:I
    .end local v6           #titleId:I
    :cond_3
    const v6, 0x7f0a00e6

    .line 77
    .restart local v6       #titleId:I
    const v0, 0x7f0a00e7

    .restart local v0       #bodyId:I
    goto :goto_2
.end method

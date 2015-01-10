.class public Lcom/android/mms/transaction/CmasAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CmasAlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/CmasAlarmReceiver"

.field private static mTMOreminderCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getReminderCount()I
    .locals 3

    .prologue
    .line 45
    const-string v0, "Mms/CmasAlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetReminderCount as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget v0, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    return v0
.end method

.method public static setReminderCount(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 50
    const-string v0, "Mms/CmasAlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetReminderCount as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sput p0, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    .line 52
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    const-string v1, "Mms/CmasAlarmReceiver"

    const-string v2, "Alarm Fire"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    if-eqz v0, :cond_0

    const-string v1, "ONCECMAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    .line 25
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->updateCMASRepeatNotifications(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    .line 42
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "TMOCMAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    const-string v1, "Mms/CmasAlarmReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTMOreminderCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget v1, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 32
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    .line 33
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->updateCMASRepeatNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 39
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    .line 40
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->updateCMASRepeatNotifications(Landroid/content/Context;)V

    goto :goto_0
.end method

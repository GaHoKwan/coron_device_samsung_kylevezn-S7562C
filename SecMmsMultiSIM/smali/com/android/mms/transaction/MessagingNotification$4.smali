.class final Lcom/android/mms/transaction/MessagingNotification$4;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->updateAlertNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3571
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0294

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3573
    .local v1, presidentialCMAS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I
    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->access$400(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$500()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3575
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$500()Landroid/app/Notification;

    move-result-object v2

    iput-object v4, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3576
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$500()Landroid/app/Notification;

    move-result-object v2

    iput-object v4, v2, Landroid/app/Notification;->vibrate:[J

    .line 3577
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$500()Landroid/app/Notification;

    move-result-object v2

    const v3, 0x7f020031

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 3579
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3581
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v2, 0x41c

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$500()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3583
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

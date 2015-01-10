.class final Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsSmsDeliveryInfo"
.end annotation


# instance fields
.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;J)V
    .locals 0
    .parameter "ticker"
    .parameter "timeMillis"

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    .line 728
    iput-wide p2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    .line 729
    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;ZI)V
    .locals 6
    .parameter "context"
    .parameter "isStatusMessage"
    .parameter "simSlot"

    .prologue
    .line 732
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    iget-wide v3, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    move-object v0, p1

    move v1, p2

    move v5, p3

    #calls: Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;JI)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->access$200(Landroid/content/Context;ZLjava/lang/CharSequence;JI)V

    .line 733
    return-void
.end method

.class public Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
.super Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AlertNotificationInfo"
.end annotation


# direct methods
.method public constructor <init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJI)V
    .locals 16
    .parameter "isSms"
    .parameter "clickIntent"
    .parameter "message"
    .parameter "subject"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "attachmentBitmap"
    .parameter "sender"
    .parameter "attachmentType"
    .parameter "threadId"
    .parameter "priority"

    .prologue
    .line 2975
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    invoke-direct/range {v0 .. v15}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJII)V

    .line 2977
    return-void
.end method

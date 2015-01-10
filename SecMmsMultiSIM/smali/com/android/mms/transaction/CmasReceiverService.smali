.class public Lcom/android/mms/transaction/CmasReceiverService;
.super Landroid/app/Service;
.source "CmasReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/CmasReceiverService$HeadsetEventReceiver;,
        Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;,
        Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final CB_ALL_CMAS_ALL:I = 0xb0

.field public static final CB_ALL_CMAS_SOME:I = 0x90

.field public static final CB_SOME_CMAS_ALL:I = 0xa0

.field public static final CB_SOME_CMAS_SOME:I = 0x80

.field public static final CMAS_EXERCISE:Ljava/lang/String; = "Exercise Alert"

.field public static final CMAS_MESSAGE_AMBER:Ljava/lang/String; = "AMBER Alert"

.field public static final CMAS_MESSAGE_AMBER_SPR:Ljava/lang/String; = "Amber Alert"

.field public static final CMAS_MESSAGE_CMASTEST:Ljava/lang/String; = "Emergency Test Alert"

.field public static final CMAS_MESSAGE_EXTREME:Ljava/lang/String; = "Extreme Alert"

.field public static final CMAS_MESSAGE_FONT_SIZE:Ljava/lang/String; = "#cmas#pref##font#size"

.field public static final CMAS_MESSAGE_PRESIDENTIAL:Ljava/lang/String; = "Presidential Alert"

.field public static final CMAS_MESSAGE_SETTING_AMBER:Ljava/lang/String; = "#cmas#type##amber#enabled"

.field public static final CMAS_MESSAGE_SETTING_EXERCISE:Ljava/lang/String; = "#cmas#type##exercise#enabled"

.field public static final CMAS_MESSAGE_SETTING_EXTREME:Ljava/lang/String; = "#cmas#type##extreme#enabled"

.field public static final CMAS_MESSAGE_SETTING_PRESIDENTIAL:Ljava/lang/String; = "#cmas#type##presidential#enabled"

.field public static final CMAS_MESSAGE_SETTING_SEVERE:Ljava/lang/String; = "#cmas#type##severe#enabled"

.field public static final CMAS_MESSAGE_SETTING_TEST:Ljava/lang/String; = "#cmas#type##test#enabled"

.field public static final CMAS_MESSAGE_SEVERE:Ljava/lang/String; = "Severe Alert"

.field public static final CMAS_MESSAGE_TMO_EXTREME:Ljava/lang/String; = "Imminent extreme alert"

.field public static final CMAS_MESSAGE_TMO_SEVERE:Ljava/lang/String; = "Imminent severe alert"

.field public static final CMAS_NOTIFICATION_ID:I = 0x90

.field public static final CMAS_OPERATOR_SERVICE:Ljava/lang/String; = "Operator Specific"

.field public static final CMAS_PREF:Ljava/lang/String; = "cmas_preferences"

.field public static final CMAS_RMT:Ljava/lang/String; = "RMT Alert"

.field public static final CMAS_UNDEFINED:Ljava/lang/String; = "Other Alerts"

.field private static final SYSTEM_PROP_HIDDENMENU_ENABLE_KEY:Ljava/lang/String; = "sys.hiddenmenu.enable"

.field private static final TAG:Ljava/lang/String; = "Mms/CmasReceiverService"

.field public static cmasDataVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;",
            ">;"
        }
    .end annotation
.end field

.field public static inCall:Z

.field public static isResetCMASPending:Z

.field private static mCmasIdList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mEnableHapticFeedbackFeature:Z


# instance fields
.field private listener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceCategory:I

.field private mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    sput-boolean v0, Lcom/android/mms/transaction/CmasReceiverService;->mEnableHapticFeedbackFeature:Z

    .line 134
    sput-boolean v0, Lcom/android/mms/transaction/CmasReceiverService;->isResetCMASPending:Z

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 138
    new-instance v0, Lcom/android/mms/transaction/CmasReceiverService$HeadsetEventReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/CmasReceiverService$HeadsetEventReceiver;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Lcom/android/mms/transaction/CmasReceiverService$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1522
    return-void
.end method

.method private CheckDuplicateCDMACMAS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z
    .locals 14
    .parameter "context"
    .parameter "msgs"

    .prologue
    .line 622
    const/4 v7, 0x0

    .line 623
    .local v7, bIsduplicate:Z
    const/4 v0, 0x0

    aget-object v13, p2, v0

    .line 624
    .local v13, sms:Landroid/telephony/SmsMessage;
    const/4 v12, 0x0

    .line 626
    .local v12, nMsgID:I
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v12

    .line 631
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASMessageID()I

    move-result v12

    .line 634
    :cond_0
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateCDMACMAS:Msg ID = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    if-nez v12, :cond_2

    move v8, v7

    .line 674
    .end local v7           #bIsduplicate:Z
    .local v8, bIsduplicate:I
    :goto_1
    return v8

    .line 629
    .end local v8           #bIsduplicate:I
    .restart local v7       #bIsduplicate:Z
    :cond_1
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v12

    goto :goto_0

    .line 639
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 642
    :cond_3
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 643
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCMAS:Duplicate Found in Cached List"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/4 v7, 0x1

    :cond_4
    :goto_2
    move v8, v7

    .line 674
    .restart local v8       #bIsduplicate:I
    goto :goto_1

    .line 647
    .end local v8           #bIsduplicate:I
    :cond_5
    const-string v4, "identifier = ?"

    .line 648
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 649
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 650
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v0

    .line 652
    .local v3, CMAS_PROJECTION:[Ljava/lang/String;
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCDMACMAS:Running the Query"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const/4 v10, 0x0

    .line 655
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 656
    if-eqz v10, :cond_7

    .line 657
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 658
    .local v9, count:I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 659
    if-eqz v9, :cond_6

    .line 660
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCDMACMAS:Duplicate Found"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    const/4 v7, 0x1

    .line 669
    .end local v9           #count:I
    :cond_6
    :goto_3
    if-eqz v10, :cond_4

    .line 670
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 664
    :cond_7
    :try_start_1
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCDMACMAS:NO Duplicate"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 666
    :catch_0
    move-exception v11

    .line 667
    .local v11, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateCDMACMAS:Caught Exception = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 669
    if-eqz v10, :cond_4

    .line 670
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 669
    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_8

    .line 670
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private CheckDuplicateGSMCMAS(Landroid/content/Context;II)Z
    .locals 12
    .parameter "context"
    .parameter "mMessageIdentifier"
    .parameter "mUpdateNumber"

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 678
    const/4 v7, 0x0

    .line 680
    .local v7, bIsduplicate:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessageDuplicateMessageCheckFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    const-string v2, "Mms/CmasReceiverService"

    const-string v6, "CheckDuplicateGSMCMAS: No Need"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :goto_0
    return v0

    .line 685
    :cond_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CheckDuplicateGSMCMAS: mMessageIdentifier = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    if-eqz p2, :cond_5

    .line 688
    const-string v4, "service_category = ? AND response_type = ?"

    .line 689
    .local v4, selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v11

    .line 690
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 691
    .local v1, resolver:Landroid/content/ContentResolver;
    new-array v3, v11, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v3, v0

    .line 693
    .local v3, CMAS_PROJECTION:[Ljava/lang/String;
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateGSMCMAS:Running the Query"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v8, 0x0

    .line 696
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 699
    if-eqz v8, :cond_3

    .line 700
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateGSMCMAS:Duplicate Found"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    const/4 v7, 0x1

    .line 710
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 711
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #CMAS_PROJECTION:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    move v0, v7

    .line 716
    goto :goto_0

    .line 705
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #CMAS_PROJECTION:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateGSMCMAS:NO Duplicate"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 707
    :catch_0
    move-exception v9

    .line 708
    .local v9, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateGSMCMAS:Caught Exception = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 710
    if-eqz v8, :cond_2

    .line 711
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 710
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 711
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 714
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #CMAS_PROJECTION:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_5
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateGSMCMAS: mMessageIdentifier is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", This must be test only!"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "source"

    .prologue
    .line 1023
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 1024
    .local v1, i:I
    const/4 v0, 0x0

    .line 1025
    .local v0, count:I
    add-int/lit8 v3, v1, 0x1

    .line 1027
    .local v3, total:I
    :goto_0
    if-lez v1, :cond_1

    .line 1028
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1029
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1032
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1035
    :cond_1
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1036
    .local v2, ret:Ljava/lang/String;
    return-object v2
.end method

.method private SetScptMessage(IZLandroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter "operation_code"
    .parameter "value"
    .parameter "prefs"
    .parameter "key"
    .parameter "OriginatingAddress"
    .parameter "ServiceCartegory"

    .prologue
    .line 1362
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1363
    .local v9, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    .line 1364
    .local v8, bTemp:Z
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1366
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const-string v1, "Mms/CmasReceiverService"

    const-string v2, "handleSmsReceived: SCPT = TRUE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsReceived: OPERATION_CODE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    if-nez p1, :cond_2

    .line 1371
    if-eqz p2, :cond_1

    .line 1372
    const/4 v1, 0x0

    invoke-interface {v9, p4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1373
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1375
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1385
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 1386
    if-nez p2, :cond_3

    .line 1387
    const/4 v1, 0x1

    invoke-interface {v9, p4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1388
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1390
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1395
    :cond_3
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1399
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1401
    const-string v1, "#cmas#type##extreme#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1402
    const-string v1, "#cmas#type##severe#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1403
    const-string v1, "#cmas#type##amber#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1405
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1406
    const-string v1, "#cmas#type##exercise#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1409
    :goto_1
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1411
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1408
    :cond_5
    const-string v1, "#cmas#type##test#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->handleGSMCMASReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->handleCDMACMASReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService;->handlScptReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method private checkCallState()V
    .locals 1

    .prologue
    .line 720
    new-instance v0, Lcom/android/mms/transaction/CmasReceiverService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/CmasReceiverService$1;-><init>(Lcom/android/mms/transaction/CmasReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->listener:Landroid/telephony/PhoneStateListener;

    .line 746
    return-void
.end method

.method private checkForSettings(I)Z
    .locals 8
    .parameter "msgId"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 927
    const-string v6, "Mms/CmasReceiverService"

    const-string v7, "checkForSettings()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const/4 v3, 0x0

    .line 931
    .local v3, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 935
    :goto_0
    sparse-switch p1, :sswitch_data_0

    move v4, v5

    .line 965
    :cond_0
    :goto_1
    :sswitch_0
    return v4

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 937
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    .line 938
    :cond_1
    const-string v6, "gsm.operator.numeric"

    invoke-static {v6, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, operator1:Ljava/lang/String;
    const-string v6, "gsm.operator.numeric"

    invoke-static {v6, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, operator2:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v6, "730"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    if-eqz v2, :cond_3

    const-string v6, "730"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .end local v1           #operator1:Ljava/lang/String;
    .end local v2           #operator2:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 944
    goto :goto_1

    .line 949
    :sswitch_2
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v4

    goto :goto_1

    .line 956
    :sswitch_3
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v4

    goto :goto_1

    .line 958
    :sswitch_4
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v4

    goto :goto_1

    .line 963
    :sswitch_5
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v4

    goto :goto_1

    .line 935
    :sswitch_data_0
    .sparse-switch
        0x397 -> :sswitch_1
        0x1112 -> :sswitch_0
        0x1113 -> :sswitch_2
        0x1114 -> :sswitch_2
        0x1115 -> :sswitch_3
        0x1116 -> :sswitch_3
        0x1117 -> :sswitch_3
        0x1118 -> :sswitch_3
        0x1119 -> :sswitch_3
        0x111a -> :sswitch_3
        0x111b -> :sswitch_4
        0x111c -> :sswitch_5
        0x111d -> :sswitch_5
        0x111e -> :sswitch_5
        0x111f -> :sswitch_5
    .end sparse-switch
.end method

.method private extractCmasContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 13
    .parameter "sms"

    .prologue
    const/4 v10, 0x1

    .line 514
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v3

    .line 520
    .local v3, nServiceCategory:I
    :try_start_0
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS specific fields."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v7, "service_category"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Service Cat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASRecordTypeFirstExists()Z

    move-result v7

    if-eq v7, v10, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 526
    :cond_0
    const-string v7, "category"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCategory()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Category="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v7, "response_type"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASResponseType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:ResponseType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASResponseType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v7, "severity"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASSeverity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Severity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASSeverity()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v7, "urgency"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASUrgency()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Urgency="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASUrgency()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v7, "certainty"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCertainty()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Certainity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCertainty()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v7

    if-eqz v7, :cond_2

    .line 550
    const-string v7, "identifier"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS: getCMASMessageID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_1
    const-string v7, "alert_handling"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASAlertHandling()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Alert Handling="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASAlertHandling()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-wide/16 v7, 0x0

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 567
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v4

    .line 572
    .local v4, recMillis:J
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 573
    .local v0, curDate:Landroid/text/format/Time;
    const-wide/16 v1, 0x0

    .line 575
    .local v1, finalTime:J
    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 576
    move-wide v1, v4

    .line 578
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMAS:GMT off val = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v7, "expires"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Expiry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Cur time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/16 v7, 0x1000

    if-ne v7, v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_3

    .line 591
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS fields: CMAS expiry=0"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v7, "expired"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    .end local v0           #curDate:Landroid/text/format/Time;
    .end local v1           #finalTime:J
    .end local v4           #recMillis:J
    :goto_2
    const-string v7, "language"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASLanguage()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Language="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASLanguage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_3
    return-object v6

    .line 541
    :cond_1
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Store Record Type One Default "

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v7, "category"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    const-string v7, "response_type"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string v7, "severity"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v7, "urgency"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    const-string v7, "certainty"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 608
    :catch_0
    move-exception v7

    goto :goto_3

    .line 553
    :cond_2
    const-string v7, "identifier"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS: getMessageIdentifier ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 594
    .restart local v0       #curDate:Landroid/text/format/Time;
    .restart local v1       #finalTime:J
    .restart local v4       #recMillis:J
    :cond_3
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS fields: CMAS expiry=1"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v7, "expired"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 599
    .end local v0           #curDate:Landroid/text/format/Time;
    .end local v1           #finalTime:J
    .end local v4           #recMillis:J
    :cond_4
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS fields: CMAS expiry=1"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v7, "expired"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method

.method private extractTestCmasContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 4
    .parameter "sms"

    .prologue
    .line 1420
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1422
    .local v1, values:Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASServiceCategory()I

    move-result v0

    .line 1425
    .local v0, nServiceCategory:I
    :try_start_0
    const-string v2, "Mms/CmasReceiverService"

    const-string v3, "Persisting CMAS specific fields."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const-string v2, "service_category"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    const-string v2, "category"

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASCategory()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1428
    const-string v2, "response_type"

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASResponseType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1429
    const-string v2, "severity"

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASSeverity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1430
    const-string v2, "urgency"

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASUrgency()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    const-string v2, "certainty"

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASCertainty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1432
    const-string v2, "identifier"

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1433
    const-string v2, "alert_handling"

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASAlertHandling()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    const-string v2, "expires"

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASExpires()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1435
    const-string v2, "language"

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASLanguage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1436
    const-string v2, "expired"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :goto_0
    return-object v1

    .line 1437
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getCmasDialogCount()I
    .locals 1

    .prologue
    .line 1509
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private getCmasPresidentialAddressWithCurrentTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 616
    .local v1, curTime:J
    const-string v0, "#CMAS#Presidential_"

    .line 617
    .local v0, CmasPresidentialAddress:Ljava/lang/String;
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCmasPresidentialAddressWithCurrentTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getInsertedSmsID(Landroid/net/Uri;)I
    .locals 6
    .parameter "SmsUri"

    .prologue
    .line 448
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInsertedSmsID returned SmsUri is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, SmsId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, SmsUriwithRowId:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 455
    .local v2, idx:I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInsertedSmsID SmsId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static getServiceCategory(I)Ljava/lang/String;
    .locals 4
    .parameter "msgId"

    .prologue
    .line 1207
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageIdentifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v0, ""

    .line 1209
    .local v0, mAddress:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1247
    :cond_0
    :goto_0
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromAddress() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    return-object v0

    .line 1211
    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1213
    :cond_1
    const-string v0, "Presidential Alert"

    goto :goto_0

    .line 1217
    :sswitch_1
    const-string v0, "Presidential Alert"

    .line 1218
    goto :goto_0

    .line 1221
    :sswitch_2
    const-string v0, "Extreme Alert"

    .line 1222
    goto :goto_0

    .line 1229
    :sswitch_3
    const-string v0, "Severe Alert"

    .line 1230
    goto :goto_0

    .line 1232
    :sswitch_4
    const-string v0, "AMBER Alert"

    .line 1233
    goto :goto_0

    .line 1235
    :sswitch_5
    const-string v0, "RMT Alert"

    .line 1236
    goto :goto_0

    .line 1238
    :sswitch_6
    const-string v0, "Exercise Alert"

    .line 1239
    goto :goto_0

    .line 1241
    :sswitch_7
    const-string v0, "Operator Specific"

    .line 1242
    goto :goto_0

    .line 1244
    :sswitch_8
    const-string v0, "Other Alerts"

    goto :goto_0

    .line 1209
    nop

    :sswitch_data_0
    .sparse-switch
        0x397 -> :sswitch_0
        0x1112 -> :sswitch_1
        0x1113 -> :sswitch_2
        0x1114 -> :sswitch_2
        0x1115 -> :sswitch_3
        0x1116 -> :sswitch_3
        0x1117 -> :sswitch_3
        0x1118 -> :sswitch_3
        0x1119 -> :sswitch_3
        0x111a -> :sswitch_3
        0x111b -> :sswitch_4
        0x111c -> :sswitch_5
        0x111d -> :sswitch_6
        0x111e -> :sswitch_7
        0x111f -> :sswitch_8
    .end sparse-switch
.end method

.method private getSmsAddressValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 6
    .parameter "sms"

    .prologue
    .line 461
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 463
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v1

    .line 466
    .local v1, nServiceCategory:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASServiceCategory()I

    move-result v1

    .line 469
    :cond_0
    const-string v3, "Mms/CmasReceiverService"

    const-string v4, "CMAS, putting address in DB"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMAS, service category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/16 v3, 0x1000

    if-ne v3, v1, :cond_2

    .line 473
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    const-string v3, "Mms/CmasReceiverService"

    const-string v4, "getSmsAddressValues: Presidential alert will be saved in single thread"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasPresidentialAddressWithCurrentTime()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, CmasAddress:Ljava/lang/String;
    const-string v3, "address"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1, v0}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    .line 510
    .end local v0           #CmasAddress:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 480
    :cond_1
    const-string v3, "address"

    const-string v4, "#CMAS#Presidential"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v3, "#CMAS#Presidential"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_2
    const/16 v3, 0x1001

    if-ne v3, v1, :cond_3

    .line 487
    const-string v3, "address"

    const-string v4, "#CMAS#Extreme"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v3, "#CMAS#Extreme"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_3
    const/16 v3, 0x1002

    if-ne v3, v1, :cond_4

    .line 493
    const-string v3, "address"

    const-string v4, "#CMAS#Severe"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v3, "#CMAS#Severe"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_4
    const/16 v3, 0x1003

    if-ne v3, v1, :cond_5

    .line 499
    const-string v3, "address"

    const-string v4, "#CMAS#Amber"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v3, "#CMAS#Amber"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_5
    const-string v3, "address"

    const-string v4, "#CMAS#Test"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v3, "#CMAS#Test"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTestCMASAlertHandling()I
    .locals 1

    .prologue
    .line 1452
    const/4 v0, 0x0

    return v0
.end method

.method private getTestCMASCategory()I
    .locals 1

    .prologue
    .line 1465
    const/4 v0, 0x1

    return v0
.end method

.method private getTestCMASCertainty()I
    .locals 1

    .prologue
    .line 1459
    const/4 v0, 0x1

    return v0
.end method

.method private getTestCMASExpires()Ljava/lang/Long;
    .locals 5

    .prologue
    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1445
    .local v0, expireTime:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0xc350

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1446
    return-object v0
.end method

.method private getTestCMASLanguage()I
    .locals 1

    .prologue
    .line 1449
    const/4 v0, 0x0

    return v0
.end method

.method private getTestCMASMessageID()I
    .locals 5

    .prologue
    .line 1455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x186a0

    rem-long/2addr v1, v3

    long-to-int v0, v1

    .line 1456
    .local v0, msgID:I
    return v0
.end method

.method private getTestCMASResponseType()I
    .locals 1

    .prologue
    .line 1471
    const/4 v0, 0x1

    return v0
.end method

.method private getTestCMASServiceCategory()I
    .locals 1

    .prologue
    .line 1492
    iget v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceCategory:I

    return v0
.end method

.method private getTestCMASSeverity()I
    .locals 1

    .prologue
    .line 1468
    const/4 v0, 0x1

    return v0
.end method

.method private getTestCMASUrgency()I
    .locals 1

    .prologue
    .line 1462
    const/4 v0, 0x1

    return v0
.end method

.method public static getTmoServiceCategory(I)Ljava/lang/String;
    .locals 4
    .parameter "msgId"

    .prologue
    .line 1252
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageIdentifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v0, ""

    .line 1254
    .local v0, mAddress:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1286
    :goto_0
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromAddress() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    return-object v0

    .line 1256
    :pswitch_0
    const-string v0, "Presidential Alert"

    .line 1257
    goto :goto_0

    .line 1260
    :pswitch_1
    const-string v0, "Imminent extreme alert"

    .line 1261
    goto :goto_0

    .line 1268
    :pswitch_2
    const-string v0, "Imminent severe alert"

    .line 1269
    goto :goto_0

    .line 1271
    :pswitch_3
    const-string v0, "AMBER Alert"

    .line 1272
    goto :goto_0

    .line 1274
    :pswitch_4
    const-string v0, "RMT Alert"

    .line 1275
    goto :goto_0

    .line 1277
    :pswitch_5
    const-string v0, "Exercise Alert"

    .line 1278
    goto :goto_0

    .line 1280
    :pswitch_6
    const-string v0, "Operator Specific"

    .line 1281
    goto :goto_0

    .line 1283
    :pswitch_7
    const-string v0, "Other Alerts"

    goto :goto_0

    .line 1254
    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handlScptReceived(Landroid/content/Intent;I)V
    .locals 12
    .parameter "intent"
    .parameter "error"

    .prologue
    const/4 v11, 0x1

    .line 870
    const-string v0, "Mms/CmasReceiverService"

    const-string v9, "SMS SCPT RECEIVED ACTION Handle"

    invoke-static {v0, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 873
    .local v7, msgs:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    aget-object v8, v7, v0

    .line 875
    .local v8, sms:Landroid/telephony/SmsMessage;
    if-nez v8, :cond_1

    .line 876
    const-string v0, "Mms/CmasReceiverService"

    const-string v9, "NULL SMS RECEIVED"

    invoke-static {v0, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    const-string v0, "Mms/CmasReceiverService"

    const-string v9, "handleSmsReceived: CMAS = TRUE"

    invoke-static {v0, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getScptCategory()I

    move-result v6

    .line 884
    .local v6, ScptCategory:I
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 890
    .local v5, OriginatingAddress:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 892
    .local v3, sharedpref:Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    .line 893
    .local v2, bTemp:Z
    const/4 v4, 0x0

    .line 895
    .local v4, key_string:Ljava/lang/String;
    const-string v0, "Mms/CmasReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSmsReceived: Category = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const/16 v0, 0x1001

    if-ne v0, v6, :cond_3

    .line 898
    const-string v4, "#cmas#type##extreme#enabled"

    .line 899
    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 915
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 917
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getScptOperationCode()I

    move-result v1

    .local v1, operation_code:I
    move-object v0, p0

    .line 919
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/CmasReceiverService;->SetScptMessage(IZLandroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 900
    .end local v1           #operation_code:I
    :cond_3
    const/16 v0, 0x1002

    if-ne v0, v6, :cond_4

    .line 901
    const-string v4, "#cmas#type##severe#enabled"

    .line 902
    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    .line 903
    :cond_4
    const/16 v0, 0x1003

    if-ne v0, v6, :cond_5

    .line 904
    const-string v4, "#cmas#type##amber#enabled"

    .line 905
    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    .line 906
    :cond_5
    const/16 v0, 0x1004

    if-ne v0, v6, :cond_2

    .line 907
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-ne v0, v11, :cond_6

    .line 908
    const-string v4, "#cmas#type##testmessage#enabled"

    .line 912
    :goto_2
    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    .line 910
    :cond_6
    const-string v4, "#cmas#type##test#enabled"

    goto :goto_2
.end method

.method private handleCDMACMASReceived(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 812
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 813
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    aget-object v6, v3, v12

    .line 814
    .local v6, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v5

    .line 815
    .local v5, nMsgID:I
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v4

    .line 817
    .local v4, nIndetifier:I
    const-string v9, "errorCode"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 819
    .local v1, error:I
    const-string v9, "Mms/CmasReceiverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleCmasReceived: address = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v9, "Mms/CmasReceiverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleCmasReceived nMsgID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  nIndetifier = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/CmasReceiverService;->checkThisAlertIsSetOn(Landroid/telephony/SmsMessage;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 828
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "handleSmsReceived: Pref not Enbaled"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "handleSmsReceived: CMAS duplication check"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const/4 v9, 0x1

    invoke-direct {p0, p0, v3}, Lcom/android/mms/transaction/CmasReceiverService;->CheckDuplicateCDMACMAS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z

    move-result v10

    if-ne v9, v10, :cond_2

    .line 834
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "handleSmsReceived: CMAS Duplicate, returning"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_2
    invoke-direct {p0, p0, v3, v1}, Lcom/android/mms/transaction/CmasReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v2

    .line 840
    .local v2, messageUri:Landroid/net/Uri;
    sget-object v9, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    if-nez v9, :cond_3

    .line 841
    new-instance v9, Ljava/util/HashSet;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(I)V

    sput-object v9, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    .line 843
    :cond_3
    if-eqz v5, :cond_6

    .line 844
    sget-object v9, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    .line 852
    sget-boolean v9, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    if-nez v9, :cond_5

    .line 853
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "NOT in call"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/CmasReceiverService;->getCDMAServiceCategory(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, categoryName:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2, v0, v9}, Lcom/android/mms/transaction/CmasReceiverService;->showCMASDialog(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .end local v0           #categoryName:Ljava/lang/String;
    :cond_5
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v7

    .line 862
    .local v7, threadId:J
    invoke-static {p0, v7, v8, v12, v12}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewAlertIndicator(Landroid/content/Context;JZI)V

    .line 863
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 864
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 846
    .end local v7           #threadId:J
    :cond_6
    if-eqz v4, :cond_4

    .line 847
    sget-object v9, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private handleCMASDialog(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9
    .parameter "msgId"
    .parameter "cmasDialogIntent"

    .prologue
    const/4 v8, 0x1

    .line 1138
    const/4 v4, 0x0

    .line 1141
    .local v4, found:Z
    :try_start_0
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 1142
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    .line 1144
    .local v1, data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMADisplayLatestEnable()Z

    move-result v6

    if-ne v6, v8, :cond_1

    .line 1145
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1147
    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    .line 1148
    .local v2, dialog:Lcom/android/mms/ui/CMASDialog;
    if-eqz v2, :cond_0

    .line 1149
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    .line 1150
    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    .line 1151
    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 1203
    .end local v1           #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    .end local v2           #dialog:Lcom/android/mms/ui/CMASDialog;
    :cond_0
    :goto_0
    return-void

    .line 1153
    .restart local v1       #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    :cond_1
    const-string v6, "Presidential Alert"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1154
    iget-object v6, v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->msgId:Ljava/lang/String;

    const-string v7, "Presidential Alert"

    if-eq v6, v7, :cond_3

    .line 1155
    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    .line 1156
    .restart local v2       #dialog:Lcom/android/mms/ui/CMASDialog;
    if-eqz v2, :cond_2

    .line 1157
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    .line 1158
    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    .line 1160
    :cond_2
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1161
    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1199
    .end local v1           #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    .end local v2           #dialog:Lcom/android/mms/ui/CMASDialog;
    :catch_0
    move-exception v3

    .line 1200
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "Mms/CmasReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error in creating CMAS dialog "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1163
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    :cond_3
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    :try_start_1
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1164
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    .line 1165
    .local v0, cmasData:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    iget-object v6, v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->msgId:Ljava/lang/String;

    const-string v7, "Presidential Alert"

    if-eq v6, v7, :cond_6

    .line 1166
    const/4 v4, 0x1

    .line 1167
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1172
    .end local v0           #cmasData:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    :cond_4
    if-nez v4, :cond_5

    .line 1173
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1175
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    .line 1177
    .restart local v2       #dialog:Lcom/android/mms/ui/CMASDialog;
    if-eqz v2, :cond_0

    .line 1178
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    .line 1179
    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    .line 1180
    iget-object v6, v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1163
    .end local v2           #dialog:Lcom/android/mms/ui/CMASDialog;
    .restart local v0       #cmasData:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1185
    .end local v0           #cmasData:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    .end local v5           #i:I
    :cond_7
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1187
    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    .line 1188
    .restart local v2       #dialog:Lcom/android/mms/ui/CMASDialog;
    if-eqz v2, :cond_0

    .line 1189
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    .line 1190
    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    .line 1191
    iget-object v6, v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1196
    .end local v1           #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    .end local v2           #dialog:Lcom/android/mms/ui/CMASDialog;
    :cond_8
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1197
    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private handleGSMCMASReceived(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 750
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 751
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 752
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    const-string v7, "message"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsCbMessage;

    .line 758
    .local v3, message:Landroid/telephony/SmsCbMessage;
    if-nez v3, :cond_2

    .line 759
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "received SMS_CB_RECEIVED_ACTION with no message extra"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_2
    new-instance v1, Landroid/telephony/CellBroadcastMessage;

    invoke-direct {v1, v3}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/telephony/SmsCbMessage;)V

    .line 764
    .local v1, cbm:Landroid/telephony/CellBroadcastMessage;
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/CmasReceiverService;->checkForSettings(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 765
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignoring alert of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " by user preference"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/CmasReceiverService;->checkForSettings(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 772
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "handleSmsReceived: CMAS duplication check"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const/4 v7, 0x1

    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v8

    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v9

    invoke-direct {p0, p0, v8, v9}, Lcom/android/mms/transaction/CmasReceiverService;->CheckDuplicateGSMCMAS(Landroid/content/Context;II)Z

    move-result v8

    if-ne v7, v8, :cond_4

    .line 774
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "handleSmsReceived: CMAS Duplicate, returning"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v7

    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v8

    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/mms/transaction/CmasReceiverService;->storeGSMCMASData(IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 779
    .local v4, messageUri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 780
    sget-boolean v7, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    if-nez v7, :cond_5

    .line 781
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "NOT in call"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, AlertIdentifier:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 784
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v7

    invoke-static {v7}, Lcom/android/mms/transaction/CmasReceiverService;->getTmoServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    .line 789
    :goto_1
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v0, v7}, Lcom/android/mms/transaction/CmasReceiverService;->showCMASDialog(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    .end local v0           #AlertIdentifier:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 794
    const/4 v7, -0x1

    invoke-static {v7}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    .line 797
    :cond_6
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v5

    .line 799
    .local v5, threadId:J
    invoke-static {p0, v5, v6, v10, v10}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewAlertIndicator(Landroid/content/Context;JZI)V

    .line 800
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 802
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 786
    .end local v5           #threadId:J
    .restart local v0       #AlertIdentifier:Ljava/lang/String;
    :cond_7
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v7

    invoke-static {v7}, Lcom/android/mms/transaction/CmasReceiverService;->getServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 806
    .end local v0           #AlertIdentifier:Ljava/lang/String;
    .end local v4           #messageUri:Landroid/net/Uri;
    :cond_8
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Failed to pass settings"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 249
    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "insertMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/CmasReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isAmberAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    .line 999
    const/4 v0, 0x0

    .line 1001
    .local v0, amber:Z
    :try_start_0
    const-string v2, "#cmas#type##amber#enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1006
    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amber settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return v0

    .line 1002
    :catch_0
    move-exception v1

    .line 1003
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isCmasMessage(I)Z
    .locals 1
    .parameter "msgId"

    .prologue
    .line 970
    const/16 v0, 0x1112

    if-lt p0, v0, :cond_0

    const/16 v0, 0x111f

    if-gt p0, v0, :cond_0

    .line 971
    const/4 v0, 0x1

    .line 973
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExtremeAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    .line 977
    const/4 v1, 0x0

    .line 979
    .local v1, extreme:Z
    :try_start_0
    const-string v2, "#cmas#type##extreme#enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 983
    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extreme settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    return v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    .line 1011
    const/4 v1, 0x0

    .line 1013
    .local v1, rmt_exercise:Z
    :try_start_0
    const-string v2, "#cmas#type##exercise#enabled"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1017
    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rmt_exercise settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    return v1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSeverityAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    .line 988
    const/4 v1, 0x0

    .line 990
    .local v1, severity:Z
    :try_start_0
    const-string v2, "#cmas#type##severe#enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 994
    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "severity settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    return v1

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private launchMessage()V
    .locals 5

    .prologue
    .line 1496
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1497
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1498
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1499
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1502
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    :goto_0
    return-void

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeCmasdialog()V
    .locals 1

    .prologue
    .line 1515
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1520
    :goto_0
    return-void

    .line 1518
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0
.end method

.method private setTestCMASServiceCategory()V
    .locals 3

    .prologue
    .line 1475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1488
    .local v0, tmp:J
    const/16 v2, 0x1003

    iput v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceCategory:I

    .line 1489
    return-void
.end method

.method private showCMASDialog(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "messageUri"
    .parameter "AlertIdentifier"
    .parameter "msgBody"

    .prologue
    const/4 v5, 0x1

    .line 1080
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1081
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const-string v3, "pref_key_enable_notifications"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Presidential Alert"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1090
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/CMASDialog;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1091
    .local v0, cmasDialogIntent:Landroid/content/Intent;
    const-string v3, "msgIdentifier"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string v3, "body"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const-string v3, "cmas_message_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const/high16 v3, 0x1800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1096
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/ui/CMASDialog;->sIsCMASDialogActivityAlive:Z

    .line 1097
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessagePriorityCheckFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1098
    invoke-direct {p0, p2, v0}, Lcom/android/mms/transaction/CmasReceiverService;->handleCMASDialog(Ljava/lang/String;Landroid/content/Intent;)V

    .line 1103
    :goto_1
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showCMASDialog, msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgBody="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1104
    .end local v0           #cmasDialogIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1105
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in creating CMAS dialog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1100
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cmasDialogIntent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static showCMASDialogAgain(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1130
    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "showCMASDialogAgain"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1132
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    iget-object v0, v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1134
    :cond_0
    return-void
.end method

.method public static showNextCMASDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1122
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1123
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1124
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    iget-object v0, v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1126
    :cond_0
    return-void
.end method

.method private storeCMASMessage(Landroid/content/Context;JLandroid/content/ContentValues;II)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "threadId"
    .parameter "values"
    .parameter "msgIdentifier"
    .parameter "mUpdateNumber"

    .prologue
    .line 1327
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v5, v6, p4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1330
    .local v3, messageUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1332
    .local v2, insertedCmasUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1333
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/CmasReceiverService;->getInsertedSmsID(Landroid/net/Uri;)I

    move-result v4

    .line 1336
    .local v4, smsId:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1337
    .local v0, cmascontentvalues:Landroid/content/ContentValues;
    const-string v5, "sms_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    const-string v5, "thread_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1339
    const-string v5, "service_category"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1340
    const-string v5, "response_type"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1343
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v5, v6, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1354
    .end local v0           #cmascontentvalues:Landroid/content/ContentValues;
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v4           #smsId:I
    :goto_0
    return-object v3

    .line 1345
    .restart local v0       #cmascontentvalues:Landroid/content/ContentValues;
    .restart local v3       #messageUri:Landroid/net/Uri;
    .restart local v4       #smsId:I
    :catch_0
    move-exception v1

    .line 1346
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    .line 1349
    .end local v0           #cmascontentvalues:Landroid/content/ContentValues;
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #smsId:I
    :cond_0
    const-string v5, "Mms/CmasReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageUri is null, can not insert Cmas data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private storeGSMCMASData(IILjava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "msgIdentifier"
    .parameter "mUpdateNumber"
    .parameter "msgBody"

    .prologue
    .line 1041
    const-string v0, "DEBUG"

    const-string v1, "storeGSMCMASData"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1045
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 1046
    .local v11, threadId:Ljava/lang/Long;
    const-string v0, "address"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1048
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1049
    const/4 v0, 0x1

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    .line 1050
    .local v8, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v8, :cond_0

    .line 1051
    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 1058
    .end local v8           #cacheContact:Lcom/android/mms/data/Contact;
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    if-eqz v7, :cond_2

    .line 1059
    invoke-static {p0, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1060
    const-string v0, "thread_id"

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1064
    :cond_2
    :try_start_0
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1065
    const-string v0, "body"

    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/CmasReceiverService;->storeCMASMessage(Landroid/content/Context;JLandroid/content/ContentValues;II)Landroid/net/Uri;

    move-result-object v10

    .line 1074
    .local v10, messageUri:Landroid/net/Uri;
    return-object v10

    .line 1054
    .end local v10           #messageUri:Landroid/net/Uri;
    :cond_3
    new-instance v7, Ljava/lang/String;

    .end local v7           #address:Ljava/lang/String;
    const-string v0, "#CMAS#CMASALL"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1055
    .restart local v7       #address:Ljava/lang/String;
    const-string v0, "address"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v9

    .line 1068
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "Mms/CmasReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 33
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 298
    const-string v29, "Mms/CmasReceiverService"

    const-string v30, "storeMessage()"

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/16 v29, 0x0

    aget-object v25, p2, v29

    .line 301
    .local v25, sms:Landroid/telephony/SmsMessage;
    const/16 v19, 0x0

    .line 305
    .local v19, not_supported_port_message:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v5, body:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getSmsAddressValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v27

    .line 307
    .local v27, smscontentvalues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->extractCmasContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v8

    .line 309
    .local v8, cmascontentvalues:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMode()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->extractTestCmasContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v8

    .line 312
    :cond_0
    const-string v29, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    .line 316
    .local v20, pduCount:I
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v14

    .line 318
    .local v14, header:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v14, :cond_2

    iget-object v0, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    .line 319
    iget-object v0, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v21, v0

    .line 320
    .local v21, port:I
    const/16 v29, 0x1580

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x1581

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x1582

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x1583

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x1585

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x1586

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x1589

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x158a

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x15e1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x15e3

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x2134

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x2135

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x2136

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 326
    :cond_1
    const-string v29, "<<"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const v29, 0x7f0a0167

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v29, ">>\n"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const/16 v19, 0x1

    .line 337
    .end local v21           #port:I
    :cond_2
    if-nez v19, :cond_3

    .line 338
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 339
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v18

    .line 341
    .local v18, msgBody:Ljava/lang/String;
    if-nez v18, :cond_9

    .line 343
    const-string v29, "<<"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const v29, 0x7f0a0167

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v29, ">>\n"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .end local v18           #msgBody:Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v29

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getCDMAServiceCategory(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "Presidential Alert"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 361
    const-wide/16 v29, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v31

    cmp-long v29, v29, v31

    if-eqz v29, :cond_b

    .line 362
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v22

    .line 364
    .local v22, recMillis:J
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 365
    .local v9, curDate:Landroid/text/format/Time;
    const-wide/16 v11, 0x0

    .line 366
    .local v11, finalTime:J
    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 367
    move-wide/from16 v11, v22

    .line 369
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v29, "MMM dd, yyyy, h:mmaa"

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 370
    .local v13, formatter1:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 371
    .local v7, calendar1:Ljava/util/Calendar;
    invoke-virtual {v7, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 372
    const-string v29, "Mms/CmasReceiverService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/16 v29, 0xa

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    const/16 v29, 0xa

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    const v29, 0x7f0a02c9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .end local v7           #calendar1:Ljava/util/Calendar;
    .end local v9           #curDate:Landroid/text/format/Time;
    .end local v11           #finalTime:J
    .end local v13           #formatter1:Ljava/text/SimpleDateFormat;
    .end local v22           #recMillis:J
    :cond_4
    :goto_1
    const-string v29, "body"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v29, "thread_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    .line 396
    .local v28, threadId:Ljava/lang/Long;
    const-string v29, "address"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, address:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_c

    .line 399
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-static {v4, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    .line 400
    .local v6, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v6, :cond_5

    .line 401
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 407
    .end local v6           #cacheContact:Lcom/android/mms/data/Contact;
    :cond_5
    :goto_2
    if-eqz v28, :cond_6

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-nez v29, :cond_7

    :cond_6
    if-eqz v4, :cond_7

    .line 408
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 409
    const-string v29, "thread_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 414
    .local v24, resolver:Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 417
    .local v17, insertedSmsUri:Landroid/net/Uri;
    :try_start_0
    sget-object v29, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 424
    :goto_3
    const/16 v16, 0x0

    .line 426
    .local v16, insertedCmasUri:Landroid/net/Uri;
    if-eqz v17, :cond_d

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getInsertedSmsID(Landroid/net/Uri;)I

    move-result v26

    .line 430
    .local v26, smsId:I
    const-string v29, "sms_id"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v29, "thread_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 433
    :try_start_1
    sget-object v29, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v8}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 442
    :goto_4
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    invoke-virtual/range {v29 .. v32}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 444
    .end local v4           #address:Ljava/lang/String;
    .end local v16           #insertedCmasUri:Landroid/net/Uri;
    .end local v17           #insertedSmsUri:Landroid/net/Uri;
    .end local v24           #resolver:Landroid/content/ContentResolver;
    .end local v26           #smsId:I
    .end local v28           #threadId:Ljava/lang/Long;
    :goto_5
    return-object v17

    .line 332
    .restart local v21       #port:I
    :cond_8
    const/16 v17, 0x0

    goto :goto_5

    .line 347
    .end local v21           #port:I
    .restart local v18       #msgBody:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 352
    .end local v18           #msgBody:Ljava/lang/String;
    :cond_a
    const/4 v15, 0x0

    .local v15, i:I
    :goto_6
    move/from16 v0, v20

    if-ge v15, v0, :cond_3

    .line 353
    aget-object v25, p2, v15

    .line 354
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 381
    .end local v15           #i:I
    :cond_b
    const-string v29, "Mms/CmasReceiverService"

    const-string v30, "msgExpiry is null"

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/16 v29, 0xa

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    const/16 v29, 0xa

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    const v29, 0x7f0a02c9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const v29, 0x7f0a02b5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 404
    .restart local v4       #address:Ljava/lang/String;
    .restart local v28       #threadId:Ljava/lang/Long;
    :cond_c
    new-instance v4, Ljava/lang/String;

    .end local v4           #address:Ljava/lang/String;
    const-string v29, "Unknown"

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 405
    .restart local v4       #address:Ljava/lang/String;
    const-string v29, "address"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 418
    .restart local v17       #insertedSmsUri:Landroid/net/Uri;
    .restart local v24       #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v10

    .line 419
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v10}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_3

    .line 434
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v16       #insertedCmasUri:Landroid/net/Uri;
    .restart local v26       #smsId:I
    :catch_1
    move-exception v10

    .line 435
    .restart local v10       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v10}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_4

    .line 438
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    .end local v26           #smsId:I
    :cond_d
    const-string v29, "Mms/CmasReceiverService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "insertedSmsUri is null, can not insert Cmas data"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/16 v17, 0x0

    goto/16 :goto_5
.end method


# virtual methods
.method public checkThisAlertIsSetOn(Landroid/telephony/SmsMessage;)Z
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 260
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 263
    .local v2, sharedpref:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v1

    .line 266
    .local v1, nCmasCat:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->setTestCMASServiceCategory()V

    .line 268
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASServiceCategory()I

    move-result v1

    .line 271
    :cond_0
    const/4 v0, 0x0

    .line 273
    .local v0, bTemp:Z
    const/16 v3, 0x1000

    if-ne v3, v1, :cond_2

    .line 274
    const-string v3, "#cmas#type##presidential#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 292
    :cond_1
    :goto_0
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkThisAlertIsSetOn: Category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is set as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return v0

    .line 275
    :cond_2
    const/16 v3, 0x1001

    if-ne v3, v1, :cond_3

    .line 276
    const-string v3, "#cmas#type##extreme#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 277
    :cond_3
    const/16 v3, 0x1002

    if-ne v3, v1, :cond_4

    .line 278
    const-string v3, "#cmas#type##severe#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 279
    :cond_4
    const/16 v3, 0x1003

    if-ne v3, v1, :cond_5

    .line 280
    const-string v3, "#cmas#type##amber#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 281
    :cond_5
    const/16 v3, 0x1004

    if-ne v3, v1, :cond_7

    .line 282
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v3

    if-ne v3, v5, :cond_6

    .line 283
    const-string v3, "sys.hiddenmenu.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v5, v3, :cond_1

    .line 284
    const-string v3, "#cmas#type##test#enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 287
    :cond_6
    const-string v3, "#cmas#type##test#enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 289
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCDMAServiceCategory(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .parameter "sms"

    .prologue
    const/4 v4, 0x1

    .line 1292
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v0

    .line 1294
    .local v0, nCmasCat:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1295
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->setTestCMASServiceCategory()V

    .line 1296
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getTestCMASServiceCategory()I

    move-result v0

    .line 1299
    :cond_0
    const/4 v1, 0x0

    .line 1301
    .local v1, servicName:Ljava/lang/String;
    const/16 v2, 0x1000

    if-ne v2, v0, :cond_2

    .line 1302
    const-string v1, "Presidential Alert"

    .line 1323
    :cond_1
    :goto_0
    return-object v1

    .line 1303
    :cond_2
    const/16 v2, 0x1001

    if-ne v2, v0, :cond_3

    .line 1304
    const-string v1, "Extreme Alert"

    goto :goto_0

    .line 1305
    :cond_3
    const/16 v2, 0x1002

    if-ne v2, v0, :cond_4

    .line 1306
    const-string v1, "Severe Alert"

    goto :goto_0

    .line 1307
    :cond_4
    const/16 v2, 0x1003

    if-ne v2, v0, :cond_6

    .line 1308
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 1309
    const-string v1, "Amber Alert"

    goto :goto_0

    .line 1311
    :cond_5
    const-string v1, "AMBER Alert"

    goto :goto_0

    .line 1312
    :cond_6
    const/16 v2, 0x1004

    if-ne v2, v0, :cond_8

    .line 1313
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v2

    if-ne v2, v4, :cond_7

    .line 1314
    const-string v2, "sys.hiddenmenu.enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_1

    .line 1315
    const-string v1, "Emergency Test Alert"

    goto :goto_0

    .line 1318
    :cond_7
    const-string v1, "Emergency Test Alert"

    goto :goto_0

    .line 1320
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 153
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Mms/CmasReceiverService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 154
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 156
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 157
    iget-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    invoke-direct {v2, p0}, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/CmasReceiverService;)V

    iput-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    .line 162
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/CmasReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void

    .line 160
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v2, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 174
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->checkCallState()V

    .line 181
    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 182
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 187
    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 189
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    const/4 v1, 0x2

    return v1
.end method

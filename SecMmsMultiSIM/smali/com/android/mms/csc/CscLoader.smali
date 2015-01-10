.class public Lcom/android/mms/csc/CscLoader;
.super Ljava/lang/Object;
.source "CscLoader.java"


# static fields
.field private static final KEY_CSC:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/CscLoader"

.field public static final USER_KEY_PRFS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Settings.Messages.PushMsg.RecOption"

    aput-object v1, v0, v3

    const-string v1, "Settings.Messages.PushMsg.PushLoading"

    aput-object v1, v0, v4

    const-string v1, "Settings.Messages.SMS.DeliveryReport"

    aput-object v1, v0, v5

    const-string v1, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdValue"

    aput-object v1, v0, v6

    const-string v1, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdType"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Settings.Messages.SMS.MaxRecipient"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Settings.Messages.SMS.CharSupport"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Settings.Messages.SMS.EmailGateway"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Settings.Messages.SMS.CellBroadcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Settings.Messages.SMS.CellBroadcastChannel"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Settings.Messages.SMS.TextTemplate"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Settings.Messages.SMS.DeleteOldMessage"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Settings.Messages.SMS.MsgSplitView"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Settings.Messages.SMS.FontSizeByVolumeKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Settings.Messages.SMS.DeleteOldMessageCntSms"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Settings.Messages.SMS.DeleteOldMessageCntMms"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Settings.Messages.SMS.PreviewMessage"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Settings.Messages.MMS.MmsSending.ReqDeliveryRep"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Settings.Messages.MMS.MmsSending.ReqReadRep"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Settings.Messages.MMS.MmsSending.Expiry"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Settings.Messages.MMS.MmsSending.MessageSize"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Settings.Messages.MMS.MmsSending.CreationMode"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Settings.Messages.MMS.MmsSending.MaxRecipientMMS"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Settings.Messages.MMS.MmsReceiving.Home"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Settings.Messages.MMS.MmsReceiving.Roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Settings.Messages.MMS.SlideMaxCount"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Settings.Main.Sound.MsgToneRepeatInterval"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "garbage"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Settings.Main.Sound.MessageTone"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Settings.Main.Sound.MsgToneAlertType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    .line 68
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_key_enable_push_message"

    aput-object v1, v0, v3

    const-string v1, "pref_key_service_loading_action"

    aput-object v1, v0, v4

    const-string v1, "pref_key_sms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "pref_key_threshold"

    aput-object v1, v0, v6

    const-string v1, "pref_key_threshold_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pref_key_max_recipient"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_key_sms_input_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_sms_email_gateway"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_key_cb_settings_channel"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_key_sms_text_template"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pref_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pref_key_split_view"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_key_font_size_by_volume_key_enable"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pref_key_max_sms_messages_per_thread"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pref_key_max_mms_messages_per_thread"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pref_key_enable_preview_message"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pref_key_mms_image_resize_resolution"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pref_key_mms_delivery_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pref_key_mms_read_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pref_key_mms_expiry"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pref_key_mms_max_size"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "pref_key_mms_creation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "pref_key_mms_max_recipient"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pref_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "pref_key_mms_slide_max_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "pref_key_msgtone_repeat_interval"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "pref_key_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pref_key_vibrateWhen_checkbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method private static getBooleanFromString(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 422
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    :cond_0
    const/4 v0, 0x1

    .line 427
    :cond_1
    :goto_0
    return v0

    .line 424
    :cond_2
    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "manual"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private static getCscRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 580
    if-nez p1, :cond_0

    .line 612
    :goto_0
    return-object v6

    .line 583
    :cond_0
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 585
    .local v2, rm:Landroid/media/RingtoneManager;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/media/RingtoneManager;->setType(I)V

    .line 586
    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 587
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "title"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 590
    .local v4, titleIndex:I
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 591
    const/4 v1, 0x0

    .line 593
    .local v1, position:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 594
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 601
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lt v1, v7, :cond_4

    .line 602
    :cond_2
    const-string v7, "Mms/CscLoader"

    const-string v8, "No matched ringtones."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 597
    .restart local v3       #title:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 598
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 612
    .end local v1           #position:I
    .end local v3           #title:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 605
    .restart local v1       #position:I
    :cond_4
    :try_start_2
    invoke-virtual {v2, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 606
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_5

    .line 607
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 612
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getMsgTone(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;
    .locals 10
    .parameter "parser"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 525
    const-string v7, "Settings.Sound"

    invoke-virtual {p0, v7}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 526
    .local v0, MsgToneNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-object v6

    .line 529
    :cond_1
    const-string v7, "MessageTone"

    invoke-virtual {p0, v0, v7}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 530
    .local v2, mCustomerList:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .line 531
    .local v5, mSrc:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 532
    invoke-interface {v2, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 533
    .local v1, list:Lorg/w3c/dom/Element;
    const-string v7, "src"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 536
    .end local v1           #list:Lorg/w3c/dom/Element;
    :cond_2
    if-eqz v5, :cond_0

    .line 539
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, mSplitedPath:[Ljava/lang/String;
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v4, v7

    const-string v8, "[.]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, mFileName:[Ljava/lang/String;
    array-length v7, v3

    if-lez v7, :cond_0

    .line 545
    aget-object v6, v3, v9

    goto :goto_0
.end method

.method private static getMsgToneFullPath(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;
    .locals 6
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 617
    const-string v5, "Settings.Sound"

    invoke-virtual {p0, v5}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 618
    .local v0, MsgToneNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 631
    :cond_0
    :goto_0
    return-object v3

    .line 621
    :cond_1
    const-string v5, "MessageTone"

    invoke-virtual {p0, v0, v5}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 622
    .local v2, mCustomerList:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 623
    .local v3, mSrc:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_2

    .line 624
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 625
    .local v1, list:Lorg/w3c/dom/Element;
    const-string v5, "src"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    .end local v1           #list:Lorg/w3c/dom/Element;
    :cond_2
    if-nez v3, :cond_0

    move-object v3, v4

    .line 629
    goto :goto_0
.end method

.method private static getStringCreationMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 559
    if-nez p0, :cond_1

    move-object p0, v0

    .line 565
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 562
    .restart local p0
    :cond_1
    const-string v1, "restricted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "warning"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "free"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 565
    goto :goto_0
.end method

.method private static getStringMaxImageResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 482
    if-nez p0, :cond_1

    move-object p0, v0

    .line 490
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 485
    .restart local p0
    :cond_1
    const-string v1, "qcif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "qvga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wvga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hd720"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4vga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "uxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hd1080"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "qxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wqxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "qsxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "quxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 490
    goto :goto_0
.end method

.method private static getStringMessageSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 569
    if-nez p0, :cond_1

    move-object p0, v0

    .line 576
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 572
    .restart local p0
    :cond_1
    const-string v1, "30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "100"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "300"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "350"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "500"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "600"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.5m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 576
    goto :goto_0
.end method

.method private static getStringMmsExpire(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 549
    if-nez p0, :cond_1

    move-object p0, v0

    .line 555
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 552
    .restart local p0
    :cond_1
    const-string v1, "max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 555
    goto :goto_0
.end method

.method private static getStringMsgNotiAlertInterval(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 494
    if-nez p0, :cond_1

    move-object p0, v0

    .line 500
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 497
    .restart local p0
    :cond_1
    const-string v1, "once"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 500
    goto :goto_0
.end method

.method private static getStringPushLoading(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 431
    if-nez p0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 433
    :cond_1
    const-string v1, "always"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    const-string v0, "Always"

    goto :goto_0

    .line 435
    :cond_2
    const-string v1, "prompt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    const-string v0, "Prompt"

    goto :goto_0

    .line 437
    :cond_3
    const-string v1, "never"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const-string v0, "Never"

    goto :goto_0
.end method

.method private static getStringcharSupport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 444
    if-nez p0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-object v0

    .line 447
    :cond_1
    const-string v1, "gsmalpha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    const-string v0, "GSM alphabet"

    goto :goto_0

    .line 449
    :cond_2
    const-string v1, "automatic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    const-string v0, "Automatic"

    goto :goto_0

    .line 451
    :cond_3
    const-string v1, "unicode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string v0, "Unicode"

    goto :goto_0
.end method

.method private static getTagListsToArray(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "parser"
    .parameter "path_Node"
    .parameter "tag_NodeList"

    .prologue
    const/4 v4, 0x0

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 505
    .local v0, BaseNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 521
    :cond_0
    return-object v4

    .line 508
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 509
    .local v1, ListItems:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_0

    .line 512
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 514
    .local v4, items:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 515
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 516
    .local v3, item:Lorg/w3c/dom/Node;
    invoke-virtual {p0, v3}, Lcom/android/mms/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, parameter:Ljava/lang/String;
    aput-object v5, v4, v2

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getTagListsToString(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "parser"
    .parameter "path_Node"
    .parameter "tag_NodeList"

    .prologue
    const/4 v6, 0x0

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 459
    .local v0, BaseNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-object v6

    .line 462
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 463
    .local v1, ListItems:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_0

    .line 466
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 468
    .local v4, items:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 469
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 470
    .local v3, item:Lorg/w3c/dom/Node;
    invoke-virtual {p0, v3}, Lcom/android/mms/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 472
    .local v5, parameter:Ljava/lang/String;
    if-lez v2, :cond_2

    .line 473
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 478
    .end local v3           #item:Lorg/w3c/dom/Node;
    .end local v5           #parameter:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Z)Z
    .locals 24
    .parameter "context"
    .parameter "enableChameleon"

    .prologue
    .line 118
    const-string v20, "Mms/CscLoader"

    const-string v21, "Start update()"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/android/mms/csc/CscParser;->getCustomerInstance()Lcom/android/mms/csc/CscParser;

    move-result-object v10

    .line 120
    .local v10, parser:Lcom/android/mms/csc/CscParser;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/mms/csc/CscParser;->isLoaded()Z

    move-result v20

    if-nez v20, :cond_1

    .line 121
    :cond_0
    const-string v20, "Mms/CscLoader"

    const-string v21, "update : can\'t load customer file"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/16 v20, 0x0

    .line 418
    :goto_0
    return v20

    .line 126
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 127
    .local v13, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 129
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const/16 v17, 0x0

    .line 130
    .local v17, valueBoolean:Z
    const/16 v18, 0x0

    .line 131
    .local v18, valueStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 135
    .local v9, mCBChannel:[Ljava/lang/String;
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 136
    if-eqz v18, :cond_2

    .line 137
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 138
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    :cond_2
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/csc/CscLoader;->getStringPushLoading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 144
    if-eqz v18, :cond_3

    .line 145
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    :cond_3
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x2

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 152
    if-eqz v18, :cond_4

    .line 153
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 154
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x2

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    :cond_4
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x3

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 161
    if-eqz v18, :cond_5

    .line 162
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x3

    aget-object v20, v20, v21

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 167
    :cond_5
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x5

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 168
    if-eqz v18, :cond_6

    .line 169
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x5

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x5

    aget-object v20, v20, v21

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    :cond_6
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x6

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/csc/CscLoader;->getStringcharSupport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 175
    if-eqz v18, :cond_7

    .line 176
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x6

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x6

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    :cond_7
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x7

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 182
    if-eqz v18, :cond_8

    .line 183
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x7

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x7

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    :cond_8
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x8

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 189
    if-eqz v18, :cond_9

    .line 190
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 191
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x8

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x8

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    const/4 v14, 0x1

    .local v14, simSlotNum:I
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_9

    .line 194
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pref_key_cb_settings_activation_sim"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v14, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, preference_activation:Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v5, v11, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 200
    .end local v11           #preference_activation:Ljava/lang/String;
    .end local v14           #simSlotNum:I
    :cond_9
    const-string v20, "Settings.Messages.SMS"

    const-string v21, "CellBroadcastChannel"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v10, v0, v1}, Lcom/android/mms/csc/CscLoader;->getTagListsToString(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 201
    if-eqz v18, :cond_c

    .line 202
    const-string v20, " "

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x9

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x9

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    const-string v20, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 207
    if-eqz v9, :cond_b

    .line 208
    move-object v3, v9

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v8, :cond_b

    aget-object v4, v3, v7

    .line 209
    .local v4, channelID:Ljava/lang/String;
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "channelID="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v20, "[+-]?\\d+"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 211
    const/4 v14, 0x0

    .restart local v14       #simSlotNum:I
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_a

    .line 212
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v4, v4, v1, v14}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 211
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 208
    .end local v14           #simSlotNum:I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 218
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #channelID:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_b
    const-string v20, "pref_key_cb_channel_selection"

    const-string v21, "My channel"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    const/4 v14, 0x1

    .restart local v14       #simSlotNum:I
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_c

    .line 220
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pref_key_cb_channel_selection_sim"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v14, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 221
    .local v12, preference_channel:Ljava/lang/String;
    const-string v20, "My channel"

    move-object/from16 v0, v20

    invoke-interface {v5, v12, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 227
    .end local v12           #preference_channel:Ljava/lang/String;
    .end local v14           #simSlotNum:I
    :cond_c
    const-string v20, "Settings.Messages.SMS"

    const-string v21, "TextTemplate"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v10, v0, v1}, Lcom/android/mms/csc/CscLoader;->getTagListsToArray(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 228
    .local v19, valueStrArray:[Ljava/lang/String;
    if-eqz v19, :cond_e

    .line 229
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v15, templateList:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_d

    .line 232
    aget-object v20, v19, v6

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 235
    :cond_d
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0xa

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0xa

    aget-object v20, v20, v21

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    .end local v6           #i:I
    .end local v15           #templateList:Ljava/lang/StringBuilder;
    :cond_e
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0xb

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 241
    if-eqz v18, :cond_f

    .line 242
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 243
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0xb

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0xb

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 248
    :cond_f
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0xc

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 249
    if-eqz v18, :cond_10

    .line 250
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 251
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0xc

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0xc

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    :cond_10
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0xd

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 257
    if-eqz v18, :cond_11

    .line 258
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 259
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0xd

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0xd

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    :cond_11
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0xe

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 265
    if-eqz v18, :cond_12

    .line 266
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0xe

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0xe

    aget-object v20, v20, v21

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    :cond_12
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0xf

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 272
    if-eqz v18, :cond_13

    .line 273
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0xf

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0xf

    aget-object v20, v20, v21

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    :cond_13
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x10

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 279
    if-eqz v18, :cond_14

    .line 280
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 281
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x10

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x10

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    :cond_14
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x11

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/csc/CscLoader;->getStringMaxImageResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 289
    if-eqz v18, :cond_15

    .line 290
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x11

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x11

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    :cond_15
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x12

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 296
    if-eqz v18, :cond_16

    .line 297
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 298
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x12

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x12

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 303
    :cond_16
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x13

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 304
    if-eqz v18, :cond_17

    .line 305
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 306
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x13

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x13

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 311
    :cond_17
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x14

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/csc/CscLoader;->getStringMmsExpire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 312
    if-eqz v18, :cond_18

    .line 313
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x14

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x14

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    :cond_18
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x15

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/csc/CscLoader;->getStringMessageSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 319
    if-eqz v18, :cond_19

    .line 320
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x15

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x15

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    :cond_19
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x16

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/csc/CscLoader;->getStringCreationMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 326
    if-eqz v18, :cond_1a

    .line 327
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x16

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x16

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    :cond_1a
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x17

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 333
    if-eqz v18, :cond_1b

    .line 334
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x17

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x17

    aget-object v20, v20, v21

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 339
    :cond_1b
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x18

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 340
    if-eqz v18, :cond_1c

    .line 341
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 342
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x18

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x18

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 347
    :cond_1c
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x19

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 348
    if-eqz v18, :cond_1d

    .line 349
    invoke-static/range {v18 .. v18}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v17

    .line 350
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x19

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x19

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 355
    :cond_1d
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x1a

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 356
    if-eqz v18, :cond_1e

    .line 357
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x1a

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x1a

    aget-object v20, v20, v21

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 362
    :cond_1e
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x1b

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/csc/CscLoader;->getStringMsgNotiAlertInterval(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 363
    if-eqz v18, :cond_1f

    .line 364
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x1b

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x1b

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    :cond_1f
    invoke-static {v10}, Lcom/android/mms/csc/CscLoader;->getMsgToneFullPath(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;

    move-result-object v16

    .line 370
    .local v16, title:Ljava/lang/String;
    if-eqz v16, :cond_20

    .line 372
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x1c

    aget-object v20, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 374
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x1d

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " uri="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x1d

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    :cond_20
    sget-object v20, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v21, 0x1e

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 394
    if-eqz v18, :cond_21

    .line 395
    const-string v20, "Mms/CscLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/mms/csc/CscLoader;->KEY_CSC:[Ljava/lang/String;

    const/16 v23, 0x1e

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v20, "melody"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_23

    .line 397
    const/16 v17, 0x0

    .line 405
    :goto_6
    sget-object v20, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    const/16 v21, 0x1e

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 410
    :cond_21
    if-eqz p1, :cond_22

    .line 411
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    .line 412
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    .line 416
    :cond_22
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    const-string v20, "Mms/CscLoader"

    const-string v21, "End update()"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 398
    :cond_23
    const-string v20, "vib"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_24

    const-string v20, "vibmelody"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25

    .line 399
    :cond_24
    const/16 v17, 0x1

    goto :goto_6

    .line 400
    :cond_25
    const-string v20, "mute"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26

    .line 401
    const/16 v17, 0x0

    goto :goto_6

    .line 403
    :cond_26
    const/16 v17, 0x0

    goto :goto_6
.end method

.method private static updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z
    .locals 8
    .parameter "editor"
    .parameter "mLanguage"

    .prologue
    const/4 v5, 0x0

    .line 636
    const-string v6, "Mms/CscLoader"

    const-string v7, "Start updateChameleon()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-static {p1}, Lcom/android/mms/csc/CscParser;->getChameleonInstance(I)Lcom/android/mms/csc/CscParser;

    move-result-object v1

    .line 638
    .local v1, parser:Lcom/android/mms/csc/CscParser;
    if-nez p0, :cond_0

    .line 699
    :goto_0
    return v5

    .line 641
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/csc/CscParser;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_2

    .line 642
    :cond_1
    const-string v6, "Mms/CscLoader"

    const-string v7, "updateChameleon : can\'t load chameleon file"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_2
    const-string v5, "SMS"

    const-string v6, "PresetMessage"

    invoke-static {v1, v5, v6}, Lcom/android/mms/csc/CscLoader;->getTagListsToArray(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 647
    .local v4, valueStrArray:[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .local v3, templateList:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 651
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 655
    :cond_3
    const/4 v2, 0x0

    .line 656
    .local v2, prefKey:Ljava/lang/String;
    if-nez p1, :cond_5

    .line 657
    const-string v2, "pref_key_chameleon_text_template_en"

    .line 662
    :goto_2
    const-string v5, "Mms/CscLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateChameleon prefKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 698
    .end local v0           #i:I
    .end local v2           #prefKey:Ljava/lang/String;
    .end local v3           #templateList:Ljava/lang/StringBuilder;
    :cond_4
    const-string v5, "Mms/CscLoader"

    const-string v6, "End updateChameleon()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const/4 v5, 0x1

    goto :goto_0

    .line 659
    .restart local v0       #i:I
    .restart local v2       #prefKey:Ljava/lang/String;
    .restart local v3       #templateList:Ljava/lang/StringBuilder;
    :cond_5
    const-string v2, "pref_key_chameleon_text_template_es"

    goto :goto_2
.end method

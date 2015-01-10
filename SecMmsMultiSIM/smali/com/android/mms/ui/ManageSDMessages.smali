.class public Lcom/android/mms/ui/ManageSDMessages;
.super Landroid/app/Activity;
.source "ManageSDMessages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;,
        Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;,
        Lcom/android/mms/ui/ManageSDMessages$CancelListener;
    }
.end annotation


# static fields
.field public static final DIALOG_DELETE_CONFIRM:I = 0x3fc

.field public static final DIALOG_DELETE_ERROR:I = 0x3f7

.field public static final DIALOG_IMPORT_ERROR:I = 0x3f2

.field public static final DIALOG_IMPORT_PROGRESS_BAR:I = 0x3ed

.field private static final MENU_COPY_TO_PHONE_MEMORY:I = 0x0

.field private static final MENU_DELETE_FROM_SDCARD:I = 0x1

.field private static final MENU_VIEW:I = 0x2

.field private static final OPTION_MENU_COPY_SEL:I = 0x1

.field private static final OPTION_MENU_DELETE_SEL:I = 0x0

.field private static final SHOW_BUSY:I = 0x2

.field private static final SHOW_EMPTY:I = 0x1

.field private static final SHOW_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/ManageSDMessages"

.field private static final VMSG_BODY:I = 0x5

.field private static final VMSG_DATE:I = 0x4

.field private static final VMSG_INBOX_ADDR:I = 0x2

.field private static final VMSG_SENT_ADDR:I = 0x3

.field private static final VMSG_TYPE:I = 0x0

.field private static final VMSG_TYPE_SENT:Ljava/lang/String; = "SENT"


# instance fields
.field private MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

.field private arFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arMsgItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MsgItem;",
            ">;"
        }
    .end annotation
.end field

.field private countChecked:I

.field private fileList:[Ljava/io/File;

.field private finish:Z

.field private headerCount:I

.field private mAllCheckBox:Landroid/widget/CheckBox;

.field private mCancelListener:Lcom/android/mms/ui/ManageSDMessages$CancelListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLeftSoftkey:Landroid/widget/Button;

.field private mMessageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageListView:Landroid/widget/ListView;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mProgressCount:I

.field private mSaveRunnable:Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

.field private mState:I

.field private mTargetDirectory:Ljava/lang/String;

.field private mUncheckItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_Receiver:Landroid/content/BroadcastReceiver;

.field private vmg:Lcom/android/mms/ui/VMessage;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    .line 99
    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    .line 100
    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    .line 102
    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    .line 103
    new-instance v0, Lcom/android/mms/ui/VMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->vmg:Lcom/android/mms/ui/VMessage;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getExternalSdCardStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Backup/vMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    .line 109
    iput v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgressCount:I

    .line 112
    new-instance v0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;-><init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSaveRunnable:Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mUncheckItems:Ljava/util/ArrayList;

    .line 121
    iput v3, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    .line 485
    new-instance v0, Lcom/android/mms/ui/ManageSDMessages$CancelListener;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ManageSDMessages$CancelListener;-><init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mCancelListener:Lcom/android/mms/ui/ManageSDMessages$CancelListener;

    .line 660
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ManageSDMessages;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ManageSDMessages;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ManageSDMessages;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSDMessages;->finish:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ManageSDMessages;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSDMessages;->finish:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ManageSDMessages;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ManageSDMessages;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages;->copyToPhoneMemory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mUncheckItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ManageSDMessages;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSDMessages;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/mms/ui/ManageSDMessages;->headerCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->getSDList()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ManageSDMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V

    return-void
.end method

.method private copyToPhoneMemory(I)Z
    .locals 16
    .parameter "index"

    .prologue
    .line 569
    new-instance v8, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .local v8, currentFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->vmg:Lcom/android/mms/ui/VMessage;

    invoke-virtual {v1, v8}, Lcom/android/mms/ui/VMessage;->readFileFromSDCard1(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v7

    .line 571
    .local v7, arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mma, yyyy MMM dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v14, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 572
    .local v14, sdf:Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 575
    .local v9, date:Ljava/util/Date;
    const-string v2, ""

    .line 576
    .local v2, addr:Ljava/lang/String;
    const-string v3, ""

    .line 577
    .local v3, body:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 578
    .local v11, msgType:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 580
    .local v15, time:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x5

    if-le v1, v4, :cond_0

    .line 581
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #body:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 583
    .restart local v3       #body:Ljava/lang/String;
    :cond_0
    const-string v1, "SENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 584
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #addr:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 589
    .restart local v2       #addr:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 590
    const v1, 0x7f0a0188

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 592
    :cond_1
    if-nez v15, :cond_2

    .line 593
    const-string v15, "2000.1.1.12.00.00"

    .line 596
    :cond_2
    :try_start_0
    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 601
    :goto_1
    const-wide/16 v12, 0x0

    .line 602
    .local v12, restoreTime:J
    if-eqz v9, :cond_4

    .line 603
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 611
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "SENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    .line 618
    :goto_3
    const/4 v1, 0x1

    return v1

    .line 586
    .end local v12           #restoreTime:J
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #addr:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #addr:Ljava/lang/String;
    goto :goto_0

    .line 597
    :catch_0
    move-exception v10

    .line 598
    .local v10, e:Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 606
    .end local v10           #e:Ljava/text/ParseException;
    .restart local v12       #restoreTime:J
    :cond_4
    const-string v1, "Mms/ManageSDMessages"

    const-string v4, "copyToPhoneMemory(): value of date is null!"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    goto :goto_2

    .line 616
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    goto :goto_3
.end method

.method private deleteFromSd(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 550
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v0, currentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 552
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 553
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 554
    return-void
.end method

.method private deleteSelFromSD()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 557
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v1

    .local v1, index:I
    :goto_0
    if-lez v1, :cond_1

    .line 558
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v0

    .line 560
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 561
    iget v2, p0, Lcom/android/mms/ui/ManageSDMessages;->headerCount:I

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->deleteFromSd(I)V

    .line 562
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 557
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 565
    .end local v0           #flag:Z
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 566
    return-void
.end method

.method private getSDList()V
    .locals 8

    .prologue
    .line 210
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v3, targetDirectory:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_3

    .line 213
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    .line 223
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 224
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 231
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 233
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 234
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 235
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 216
    .end local v1           #i:I
    :cond_3
    new-instance v4, Lcom/android/mms/ui/ManageSDMessages$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSDMessages$3;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    goto :goto_0

    .line 227
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    goto :goto_1

    .line 237
    .restart local v1       #i:I
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/ManageSDMessages"

    const-string v5, "NullPointerException in getSDList()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 243
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 244
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 249
    :cond_6
    :goto_3
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 250
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->vmg:Lcom/android/mms/ui/VMessage;

    new-instance v6, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/VMessage;->readFileFromSDCard2(Ljava/io/File;)Lcom/android/mms/ui/MsgItem;

    move-result-object v2

    .line 253
    .local v2, msgitem:Lcom/android/mms/ui/MsgItem;
    if-eqz v2, :cond_8

    iget v4, v2, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    iget v4, v2, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    :cond_7
    iget-object v4, v2, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 249
    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 247
    .end local v2           #msgitem:Lcom/android/mms/ui/MsgItem;
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    goto :goto_3

    .line 256
    .restart local v2       #msgitem:Lcom/android/mms/ui/MsgItem;
    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 258
    .end local v2           #msgitem:Lcom/android/mms/ui/MsgItem;
    :cond_b
    return-void
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030078

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, allitem:Landroid/view/View;
    const v2, 0x7f0e01e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, allText:Landroid/widget/TextView;
    const v2, 0x7f0a0122

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 178
    const v2, 0x7f0e00db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mAllCheckBox:Landroid/widget/CheckBox;

    .line 180
    new-instance v2, Lcom/android/mms/ui/ManageSDMessages$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSDMessages$2;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 202
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 203
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 205
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ManageSDMessages;->headerCount:I

    .line 206
    return-void
.end method

.method private initSDLists()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ManageSDMessages$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSDMessages$4;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 290
    return-void
.end method

.method private updateState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const v3, 0x7f0a0346

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 631
    iget v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mState:I

    if-ne v0, p1, :cond_0

    .line 658
    :goto_0
    return-void

    .line 634
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mState:I

    .line 635
    packed-switch p1, :pswitch_data_0

    .line 656
    const-string v0, "Mms/ManageSDMessages"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 639
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 640
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 643
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 649
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 651
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 652
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 653
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 128
    const v2, 0x7f030077

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 131
    const v2, 0x7f0e01e4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    .line 132
    const v2, 0x7f0e01e5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mEmptyView:Landroid/view/View;

    .line 133
    const v2, 0x7f0e01de

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    .line 134
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 138
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 140
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 143
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V

    .line 144
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initResourceRefs()V

    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initSDLists()V

    .line 147
    new-instance v2, Lcom/android/mms/ui/ManageSDMessages$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSDMessages$1;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->m_Receiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->m_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "dialogId"

    .prologue
    const v4, 0x7f0a0344

    const v6, 0x7f0a006a

    const/4 v5, 0x1

    .line 434
    move-object v0, p0

    .line 436
    .local v0, mContext:Landroid/content/Context;
    sparse-switch p1, :sswitch_data_0

    .line 482
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 438
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 440
    .local v2, progressMax:I
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 441
    .local v1, progress:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 442
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0340

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 444
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 445
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgressCount:I

    goto :goto_0

    .line 449
    .end local v1           #progress:Landroid/app/ProgressDialog;
    .end local v2           #progressMax:I
    :sswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0342

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ManageSDMessages$5;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSDMessages$5;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 458
    :sswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0343

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ManageSDMessages$6;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSDMessages$6;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_0
        0x3f2 -> :sswitch_1
        0x3f7 -> :sswitch_2
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 292
    const v7, 0x7f0e012d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 293
    .local v4, mCheckbox:Landroid/widget/CheckBox;
    const v7, 0x7f0e00db

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 296
    .local v0, AllCheckBox:Landroid/widget/CheckBox;
    if-nez p3, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v5

    .line 301
    .local v1, checked:Z
    :goto_0
    if-nez p3, :cond_4

    .line 302
    if-eqz v1, :cond_3

    .line 303
    iget-object v6, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 304
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    .line 310
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_6

    .line 311
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 312
    iget v3, p0, Lcom/android/mms/ui/ManageSDMessages;->headerCount:I

    .local v3, index:I
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v5

    if-gt v3, v5, :cond_6

    .line 313
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #checked:Z
    .end local v3           #index:I
    :cond_0
    move v1, v6

    .line 297
    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .restart local v1       #checked:Z
    :goto_3
    goto :goto_0

    .end local v1           #checked:Z
    :cond_2
    move v1, v6

    goto :goto_3

    .line 306
    .restart local v1       #checked:Z
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 307
    iput v6, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    goto :goto_1

    .line 316
    :cond_4
    const/4 v2, 0x1

    .line 318
    .local v2, count:I
    if-nez v1, :cond_7

    .line 320
    iget v7, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    .line 321
    iget-object v7, p0, Lcom/android/mms/ui/ManageSDMessages;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 335
    :cond_5
    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 337
    iget v7, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    if-lez v7, :cond_a

    .line 338
    iget-object v6, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 342
    .end local v2           #count:I
    :cond_6
    :goto_5
    return-void

    .line 325
    .restart local v2       #count:I
    :cond_7
    iget v7, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    .line 327
    iget v3, p0, Lcom/android/mms/ui/ManageSDMessages;->headerCount:I

    .restart local v3       #index:I
    :goto_6
    iget-object v7, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    if-gt v3, v7, :cond_9

    .line 328
    iget-object v7, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 329
    add-int/lit8 v2, v2, 0x1

    .line 327
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 331
    :cond_9
    iget-object v7, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    if-ne v2, v7, :cond_5

    .line 332
    iget-object v7, p0, Lcom/android/mms/ui/ManageSDMessages;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_4

    .line 340
    .end local v3           #index:I
    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_5
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 167
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V

    .line 169
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initResourceRefs()V

    .line 170
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initSDLists()V

    .line 171
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 413
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 627
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 628
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 422
    packed-switch p1, :pswitch_data_0

    .line 430
    .end local p2
    :goto_0
    return-void

    .line 424
    .restart local p2
    :pswitch_0
    check-cast p2, Landroid/app/ProgressDialog;

    .end local p2
    iput-object p2, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgressCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mCancelListener:Lcom/android/mms/ui/ManageSDMessages$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 427
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mSaveRunnable:Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 623
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 624
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 345
    iget v1, p0, Lcom/android/mms/ui/ManageSDMessages;->headerCount:I

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v0

    .line 348
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v0           #flag:Z
    :cond_1
    const/16 v2, 0x3ed

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 357
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 360
    return-void
.end method

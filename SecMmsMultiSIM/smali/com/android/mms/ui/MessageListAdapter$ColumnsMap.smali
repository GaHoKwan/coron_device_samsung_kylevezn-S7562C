.class public Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnsMap"
.end annotation


# instance fields
.field public mColumnCmasServiceCategory:I

.field public mColumnMmsDate:I

.field public mColumnMmsDeliveryReport:I

.field public mColumnMmsErrorType:I

.field public mColumnMmsLocked:I

.field public mColumnMmsMessageBox:I

.field public mColumnMmsMessageType:I

.field public mColumnMmsPriority:I

.field public mColumnMmsRead:I

.field public mColumnMmsReadReport:I

.field public mColumnMmsReserved:I

.field public mColumnMmsSimSlot:I

.field public mColumnMmsSubject:I

.field public mColumnMmsSubjectCharset:I

.field public mColumnMsgId:I

.field public mColumnMsgType:I

.field public mColumnSimImsi:I

.field public mColumnSmsAddress:I

.field public mColumnSmsBody:I

.field public mColumnSmsCallback:I

.field public mColumnSmsDate:I

.field public mColumnSmsErrorCode:I

.field public mColumnSmsGroupId:I

.field public mColumnSmsGroupType:I

.field public mColumnSmsLinkUrl:I

.field public mColumnSmsLocked:I

.field public mColumnSmsPriority:I

.field public mColumnSmsRead:I

.field public mColumnSmsReserved:I

.field public mColumnSmsSimSlot:I

.field public mColumnSmsStatus:I

.field public mColumnSmsTeleserviceId:I

.field public mColumnSmsType:I

.field public mColumnThreadId:I

.field public mColumnWpmAction:I

.field public mColumnWpmCreated:I

.field public mColumnWpmHref:I

.field public mColumnWpmSiExpires:I

.field public mColumnWpmSiId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x24

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    .line 724
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    .line 725
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    .line 726
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    .line 727
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    .line 728
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    .line 729
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    .line 730
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    .line 731
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    .line 733
    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSimSlot:I

    .line 735
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCallback:I

    .line 736
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    .line 739
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupId:I

    .line 740
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupType:I

    .line 742
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsPriority:I

    .line 743
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    .line 744
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    .line 745
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    .line 746
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    .line 747
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    .line 748
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    .line 749
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    .line 750
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    .line 752
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    .line 753
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    .line 755
    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSimSlot:I

    .line 756
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSimImsi:I

    .line 759
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I

    .line 760
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiId:I

    .line 761
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmCreated:I

    .line 762
    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiExpires:I

    .line 763
    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmAction:I

    .line 765
    const/16 v0, 0x1d

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsReserved:I

    .line 766
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReserved:I

    .line 767
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsPriority:I

    .line 768
    const/16 v0, 0x21

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTeleserviceId:I

    .line 769
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLinkUrl:I

    .line 772
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCmasServiceCategory:I

    .line 773
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    new-instance v0, Lcom/android/mms/TimeChecker;

    invoke-direct {v0}, Lcom/android/mms/TimeChecker;-><init>()V

    .line 777
    .local v0, checker:Lcom/android/mms/TimeChecker;
    invoke-virtual {v0}, Lcom/android/mms/TimeChecker;->start()V

    .line 781
    :try_start_0
    const-string v2, "transport_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    :try_start_1
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 793
    :goto_1
    :try_start_2
    const-string v2, "thread_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 799
    :goto_2
    :try_start_3
    const-string v2, "address"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 806
    :goto_3
    :try_start_4
    const-string v2, "group_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupId:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 812
    :goto_4
    :try_start_5
    const-string v2, "group_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupType:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 819
    :goto_5
    :try_start_6
    const-string v2, "body"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    .line 825
    :goto_6
    :try_start_7
    const-string v2, "date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 831
    :goto_7
    :try_start_8
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 837
    :goto_8
    :try_start_9
    const-string v2, "status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    .line 843
    :goto_9
    :try_start_a
    const-string v2, "locked"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    .line 849
    :goto_a
    :try_start_b
    const-string v2, "read"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    .line 855
    :goto_b
    :try_start_c
    const-string v2, "error_code"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_c

    .line 862
    :goto_c
    :try_start_d
    const-string v2, "sim_slot"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSimSlot:I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    .line 869
    :goto_d
    :try_start_e
    const-string v2, "sub"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_e

    .line 875
    :goto_e
    :try_start_f
    const-string v2, "sub_cs"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_f

    .line 881
    :goto_f
    :try_start_10
    const-string v2, "m_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_10

    .line 887
    :goto_10
    :try_start_11
    const-string v2, "msg_box"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_11

    .line 893
    :goto_11
    :try_start_12
    const-string v2, "d_rpt"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_12

    .line 899
    :goto_12
    :try_start_13
    const-string v2, "rr"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_13

    .line 905
    :goto_13
    :try_start_14
    const-string v2, "err_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_14

    .line 911
    :goto_14
    :try_start_15
    const-string v2, "locked"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_15

    .line 917
    :goto_15
    :try_start_16
    const-string v2, "read"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_16

    .line 924
    :goto_16
    :try_start_17
    const-string v2, "href"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_17

    .line 930
    :goto_17
    :try_start_18
    const-string v2, "si_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiId:I
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_18

    .line 936
    :goto_18
    :try_start_19
    const-string v2, "created"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmCreated:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_19

    .line 942
    :goto_19
    :try_start_1a
    const-string v2, "si_expires"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiExpires:I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 948
    :goto_1a
    :try_start_1b
    const-string v2, "action"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmAction:I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 955
    :goto_1b
    :try_start_1c
    const-string v2, "callback_number"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCallback:I
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 960
    :goto_1c
    :try_start_1d
    const-string v2, "reserved"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsReserved:I
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 965
    :goto_1d
    :try_start_1e
    const-string v2, "reserved"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReserved:I
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 972
    :goto_1e
    :try_start_1f
    const-string v2, "sim_slot"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSimSlot:I
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 978
    :goto_1f
    :try_start_20
    const-string v2, "sim_imsi"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSimImsi:I
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_20

    .line 985
    :goto_20
    :try_start_21
    const-string v2, "pri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsPriority:I
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_21

    .line 991
    :goto_21
    :try_start_22
    const-string v2, "pri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsPriority:I
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_22

    .line 997
    :goto_22
    :try_start_23
    const-string v2, "teleservice_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTeleserviceId:I
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_23

    .line 1003
    :goto_23
    :try_start_24
    const-string v2, "link_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLinkUrl:I
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_24

    .line 1009
    :goto_24
    :try_start_25
    const-string v2, "service_category"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCmasServiceCategory:I
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_25

    .line 1014
    :goto_25
    invoke-virtual {v0}, Lcom/android/mms/TimeChecker;->end()V

    .line 1015
    const-string v2, "Mms/MessageListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init columnmap done!,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/TimeChecker;->getElapsed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void

    .line 782
    :catch_0
    move-exception v1

    .line 783
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 788
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 789
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 794
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 795
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 800
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 801
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 807
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 808
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 813
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 814
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 820
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v1

    .line 821
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 826
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v1

    .line 827
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 832
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v1

    .line 833
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 838
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v1

    .line 839
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 844
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v1

    .line 845
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 850
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v1

    .line 851
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 856
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v1

    .line 857
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 863
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v1

    .line 864
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 870
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v1

    .line 871
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 876
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v1

    .line 877
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 882
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v1

    .line 883
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 888
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_11
    move-exception v1

    .line 889
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 894
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_12
    move-exception v1

    .line 895
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 900
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_13
    move-exception v1

    .line 901
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 906
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v1

    .line 907
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 912
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v1

    .line 913
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 918
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_16
    move-exception v1

    .line 919
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 925
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_17
    move-exception v1

    .line 926
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 931
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_18
    move-exception v1

    .line 932
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 937
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_19
    move-exception v1

    .line 938
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 943
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1a
    move-exception v1

    .line 944
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 949
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1b
    move-exception v1

    .line 950
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 956
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1c
    move-exception v1

    .line 957
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 961
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1d
    move-exception v1

    .line 962
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 966
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1e
    move-exception v1

    .line 967
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 973
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1f
    move-exception v1

    .line 974
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 979
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_20
    move-exception v1

    .line 980
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 986
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_21
    move-exception v1

    .line 987
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 992
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_22
    move-exception v1

    .line 993
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 998
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_23
    move-exception v1

    .line 999
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 1004
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_24
    move-exception v1

    .line 1005
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 1010
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_25
    move-exception v1

    .line 1011
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25
.end method

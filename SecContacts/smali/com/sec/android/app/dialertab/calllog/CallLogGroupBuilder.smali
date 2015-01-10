.class public Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static mDateFormat:Ljava/lang/String;


# instance fields
.field private final CALL:I

.field private final MESSAGE:I

.field private final NOR_INT:I

.field private final SEP_INT:I

.field private final VOICEMAIL:I

.field private groupCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private groupCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

.field private mRemindMeLater:Z

.field private mRemindTimeArray:[I

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->DBG:Z

    .line 77
    const-string v0, "MM-dd-yyyy"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mDateFormat:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V
    .locals 2
    .parameter "groupCreator"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->CALL:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->MESSAGE:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->VOICEMAIL:I

    .line 79
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->NOR_INT:I

    .line 80
    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->SEP_INT:I

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindMeLater:Z

    .line 86
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    .line 105
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

    .line 106
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method private addGroup(II)V
    .locals 2
    .parameter "cursorPosition"
    .parameter "size"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    .line 429
    return-void
.end method

.method private equalLTNPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "number1"
    .parameter "number1E164"
    .parameter "number1Normal"
    .parameter "number2"
    .parameter "number2E164"
    .parameter "number2Normal"

    .prologue
    const/4 v5, 0x1

    .line 487
    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->DBG:Z

    if-eqz v6, :cond_0

    .line 488
    const-string v6, "CallLogGroupBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " number1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " number1E164 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  number1Normal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " number2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  number2E164 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  number2Normal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v0

    .line 492
    .local v0, mMatchLen:I
    const/4 v1, 0x0

    .line 493
    .local v1, nLen1:I
    const/4 v2, 0x0

    .line 495
    .local v2, nLen2:I
    const/4 v3, 0x0

    .line 496
    .local v3, partialNumber1:Ljava/lang/String;
    const/4 v4, 0x0

    .line 498
    .local v4, partialNumber2:Ljava/lang/String;
    if-eqz p2, :cond_4

    if-eqz p5, :cond_4

    .line 499
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 500
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    .line 502
    if-le v1, v0, :cond_2

    .line 503
    sub-int v6, v1, v0

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 507
    :goto_0
    if-le v2, v0, :cond_3

    .line 508
    sub-int v6, v2, v0

    invoke-virtual {p5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 512
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 548
    :cond_1
    :goto_2
    return v5

    .line 505
    :cond_2
    move-object v3, p2

    goto :goto_0

    .line 510
    :cond_3
    move-object v4, p5

    goto :goto_1

    .line 516
    :cond_4
    if-eqz p3, :cond_5

    if-eqz p6, :cond_5

    .line 517
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 518
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    .line 520
    if-le v1, v0, :cond_6

    .line 521
    sub-int v6, v1, v0

    invoke-virtual {p3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 525
    :goto_3
    if-le v2, v0, :cond_7

    .line 526
    sub-int v6, v2, v0

    invoke-virtual {p6, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 530
    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 534
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 535
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    .line 538
    if-le v1, v0, :cond_8

    .line 539
    sub-int v5, v1, v0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 543
    :goto_5
    if-le v2, v0, :cond_9

    .line 544
    sub-int v5, v2, v0

    invoke-virtual {p4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 548
    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 523
    :cond_6
    move-object v3, p3

    goto :goto_3

    .line 528
    :cond_7
    move-object v4, p6

    goto :goto_4

    .line 541
    :cond_8
    move-object v3, p1

    goto :goto_5

    .line 546
    :cond_9
    move-object v4, p4

    goto :goto_6
.end method

.method private equalPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "number1"
    .parameter "number1E164"
    .parameter "number1Normal"
    .parameter "number2"
    .parameter "number2E164"
    .parameter "number2Normal"

    .prologue
    const/4 v0, 0x1

    .line 452
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->equalLTNPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 460
    :cond_1
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "#"

    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 465
    :cond_3
    if-eqz p2, :cond_4

    if-eqz p5, :cond_4

    .line 466
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    :cond_4
    if-eqz p3, :cond_5

    if-eqz p6, :cond_5

    .line 471
    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    :cond_5
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 41
    .parameter "cursor"

    .prologue
    .line 121
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->DBG:Z

    if-eqz v3, :cond_0

    .line 122
    const-string v3, "CallLogGroupBuilder"

    const-string v39, "******** addGroups ********"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 124
    .local v13, count:I
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->DBG:Z

    if-eqz v3, :cond_1

    .line 125
    const-string v3, "CallLogGroupBuilder"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "cursor.getCount() "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    const-string v25, ""

    .local v25, firstDateFormat:Ljava/lang/String;
    const-string v17, ""

    .line 128
    .local v17, currentDateFormat:Ljava/lang/String;
    const/4 v11, 0x0

    .line 129
    .local v11, bSameDate:Z
    const/16 v34, 0x0

    .line 131
    .local v34, sepCount:I
    if-nez v13, :cond_3

    .line 418
    :cond_2
    :goto_0
    return-void

    .line 136
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    .line 137
    add-int/lit8 v3, v13, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    .line 139
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 140
    new-array v3, v13, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindTimeArray:[I

    .line 143
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    .line 146
    const-string v3, "CallLogGroupBuilder"

    const-string v39, "init groupCount"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_5
    const/16 v18, 0x1

    .line 160
    .local v18, currentGroupSize:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, firstNumber:Ljava/lang/String;
    const/16 v3, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, firstE164Number:Ljava/lang/String;
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, firstNormalNumber:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 171
    .local v22, firstCallType:I
    const/16 v3, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 172
    .local v27, firstLogType:I
    const/16 v3, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 173
    .local v20, currentLogType:I
    const/16 v3, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 174
    .local v30, mfirstCNAP:Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, firstLogGroup:I
    const/16 v19, 0x0

    .line 177
    .local v19, currentLogGroup:I
    const/16 v29, 0x0

    .line 178
    .local v29, mRemindMeLaterSet:I
    const/16 v28, 0x0

    .line 180
    .local v28, mGroupRemindMeLaterSet:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_6
    sparse-switch v27, :sswitch_data_0

    .line 208
    :cond_7
    :goto_1
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 210
    .local v23, firstDate:J
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->setSystemTime()V

    .line 212
    const/16 v34, 0x0

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_8

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v39, "date_format"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    .line 217
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_9

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v23

    invoke-static {v3, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    .line 228
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    const/16 v39, 0x37

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    aput-object v25, v3, v34

    .line 233
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 234
    const/16 v3, 0x1f

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 237
    :cond_a
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 238
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 239
    .local v15, currentDate:J
    add-int/lit8 v34, v34, 0x1

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_b

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 244
    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 245
    const/4 v11, 0x1

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    const/16 v39, 0xa

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    const-string v39, ""

    aput-object v39, v3, v34

    .line 255
    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, currentNumber:Ljava/lang/String;
    const/16 v3, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, currentE164Number:Ljava/lang/String;
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, currentNormalNumber:Ljava/lang/String;
    const/16 v3, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 262
    sparse-switch v20, :sswitch_data_1

    .line 285
    :cond_c
    :goto_4
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 286
    .local v12, callType:I
    const/16 v3, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 288
    .local v14, currentCNAP:Ljava/lang/String;
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 289
    const/16 v3, 0x1f

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    or-int v29, v29, v3

    :cond_d
    move-object/from16 v3, p0

    .line 293
    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->equalPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    .line 295
    .local v33, sameNumber:Z
    move/from16 v0, v26

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/16 v32, 0x1

    .line 296
    .local v32, sameLogType:Z
    :goto_5
    move-object/from16 v0, v30

    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v31

    .line 299
    .local v31, sameCNAP:Z
    if-nez v33, :cond_11

    .line 301
    const/16 v35, 0x0

    .line 332
    .local v35, shouldGroup:Z
    :goto_6
    if-eqz v35, :cond_24

    .line 335
    add-int/lit8 v18, v18, 0x1

    .line 337
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 338
    move/from16 v28, v29

    .line 341
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 191
    .end local v7           #currentNumber:Ljava/lang/String;
    .end local v8           #currentE164Number:Ljava/lang/String;
    .end local v9           #currentNormalNumber:Ljava/lang/String;
    .end local v12           #callType:I
    .end local v14           #currentCNAP:Ljava/lang/String;
    .end local v15           #currentDate:J
    .end local v23           #firstDate:J
    .end local v31           #sameCNAP:Z
    .end local v32           #sameLogType:Z
    .end local v33           #sameNumber:Z
    .end local v35           #shouldGroup:Z
    :sswitch_0
    const/16 v26, 0x1

    .line 192
    goto/16 :goto_1

    .line 194
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v39, "CscFeature_IMS_EnableRCSe"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 195
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 199
    :sswitch_2
    const/16 v26, 0x3

    .line 200
    goto/16 :goto_1

    .line 203
    :sswitch_3
    const/16 v26, 0x2

    goto/16 :goto_1

    .line 249
    .restart local v15       #currentDate:J
    .restart local v23       #firstDate:J
    :cond_f
    const/4 v11, 0x0

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    const/16 v39, 0x37

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    aput-object v17, v3, v34

    goto/16 :goto_3

    .line 269
    .restart local v7       #currentNumber:Ljava/lang/String;
    .restart local v8       #currentE164Number:Ljava/lang/String;
    .restart local v9       #currentNormalNumber:Ljava/lang/String;
    :sswitch_4
    const/16 v19, 0x1

    .line 270
    goto/16 :goto_4

    .line 272
    :sswitch_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v39, "CscFeature_IMS_EnableRCSe"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 273
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 277
    :sswitch_6
    const/16 v19, 0x3

    .line 278
    goto/16 :goto_4

    .line 281
    :sswitch_7
    const/16 v19, 0x2

    goto/16 :goto_4

    .line 295
    .restart local v12       #callType:I
    .restart local v14       #currentCNAP:Ljava/lang/String;
    .restart local v33       #sameNumber:Z
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_5

    .line 302
    .restart local v31       #sameCNAP:Z
    .restart local v32       #sameLogType:Z
    :cond_11
    if-nez v11, :cond_12

    .line 303
    const/16 v35, 0x0

    .restart local v35       #shouldGroup:Z
    goto/16 :goto_6

    .line 305
    .end local v35           #shouldGroup:Z
    :cond_12
    if-nez v32, :cond_13

    .line 306
    const/16 v35, 0x0

    .restart local v35       #shouldGroup:Z
    goto/16 :goto_6

    .line 307
    .end local v35           #shouldGroup:Z
    :cond_13
    const-string v3, "feature_cnap"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "feature_cnam"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    if-nez v31, :cond_15

    .line 308
    const/16 v35, 0x0

    .restart local v35       #shouldGroup:Z
    goto/16 :goto_6

    .line 309
    .end local v35           #shouldGroup:Z
    :cond_15
    const/4 v3, 0x2

    move/from16 v0, v26

    if-ne v0, v3, :cond_18

    .line 310
    const/16 v3, 0x12c

    move/from16 v0, v27

    if-eq v0, v3, :cond_16

    const/16 v3, 0xc8

    move/from16 v0, v27

    if-ne v0, v3, :cond_17

    :cond_16
    const/16 v35, 0x1

    .restart local v35       #shouldGroup:Z
    :goto_7
    goto/16 :goto_6

    .end local v35           #shouldGroup:Z
    :cond_17
    const/16 v35, 0x0

    goto :goto_7

    .line 311
    :cond_18
    const/4 v3, 0x4

    move/from16 v0, v22

    if-eq v0, v3, :cond_19

    const/4 v3, 0x3

    move/from16 v0, v22

    if-ne v0, v3, :cond_1b

    .line 314
    :cond_19
    const/4 v3, 0x3

    if-ne v12, v3, :cond_1a

    const/16 v35, 0x1

    .restart local v35       #shouldGroup:Z
    :goto_8
    goto/16 :goto_6

    .end local v35           #shouldGroup:Z
    :cond_1a
    const/16 v35, 0x0

    goto :goto_8

    .line 315
    :cond_1b
    const/4 v3, 0x5

    move/from16 v0, v22

    if-ne v0, v3, :cond_1d

    .line 317
    const/4 v3, 0x5

    if-ne v12, v3, :cond_1c

    const/16 v35, 0x1

    .restart local v35       #shouldGroup:Z
    :goto_9
    goto/16 :goto_6

    .end local v35           #shouldGroup:Z
    :cond_1c
    const/16 v35, 0x0

    goto :goto_9

    .line 319
    :cond_1d
    const/4 v3, 0x6

    move/from16 v0, v22

    if-ne v0, v3, :cond_1f

    .line 321
    const/4 v3, 0x6

    if-ne v12, v3, :cond_1e

    const/16 v35, 0x1

    .restart local v35       #shouldGroup:Z
    :goto_a
    goto/16 :goto_6

    .end local v35           #shouldGroup:Z
    :cond_1e
    const/16 v35, 0x0

    goto :goto_a

    .line 323
    :cond_1f
    const/4 v3, 0x4

    move/from16 v0, v22

    if-ne v0, v3, :cond_21

    .line 325
    const/4 v3, 0x4

    if-ne v12, v3, :cond_20

    const/16 v35, 0x1

    .restart local v35       #shouldGroup:Z
    :goto_b
    goto/16 :goto_6

    .end local v35           #shouldGroup:Z
    :cond_20
    const/16 v35, 0x0

    goto :goto_b

    .line 329
    :cond_21
    const/4 v3, 0x1

    if-eq v12, v3, :cond_22

    const/4 v3, 0x2

    if-ne v12, v3, :cond_23

    :cond_22
    const/16 v35, 0x1

    .restart local v35       #shouldGroup:Z
    :goto_c
    goto/16 :goto_6

    .end local v35           #shouldGroup:Z
    :cond_23
    const/16 v35, 0x0

    goto :goto_c

    .line 348
    .restart local v35       #shouldGroup:Z
    :cond_24
    const/4 v3, 0x1

    move/from16 v0, v18

    if-le v0, v3, :cond_27

    .line 349
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    sub-int v3, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 350
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindTimeArray:[I

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v39

    sub-int v39, v39, v18

    aput v28, v3, v39

    .line 354
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_27

    .line 355
    move/from16 v0, v18

    new-array v10, v0, [I

    .line 356
    .local v10, IDs:[I
    const/16 v21, 0x0

    .local v21, dataCount:I
    :goto_d
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_26

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v10, v21

    .line 356
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 361
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    new-instance v39, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    const/16 v40, 0x0

    aget v40, v10, v40

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v18

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I[II)V

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v10           #IDs:[I
    .end local v21           #dataCount:I
    :cond_27
    const/16 v18, 0x1

    .line 369
    move/from16 v22, v12

    .line 370
    move/from16 v27, v20

    .line 371
    move-object/from16 v30, v14

    .line 373
    move-object/from16 v36, v4

    .line 374
    .local v36, temp:Ljava/lang/String;
    move-object v4, v7

    .line 375
    move-object/from16 v7, v36

    .line 378
    move-object/from16 v37, v5

    .line 379
    .local v37, tempE164:Ljava/lang/String;
    move-object v5, v8

    .line 380
    move-object/from16 v8, v37

    .line 382
    move-object/from16 v38, v6

    .line 383
    .local v38, tempNormal:Ljava/lang/String;
    move-object v6, v9

    .line 384
    move-object/from16 v9, v38

    .line 386
    move-object/from16 v25, v17

    .line 387
    move/from16 v26, v19

    .line 389
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 390
    const/16 v3, 0x1f

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 393
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 400
    .end local v7           #currentNumber:Ljava/lang/String;
    .end local v8           #currentE164Number:Ljava/lang/String;
    .end local v9           #currentNormalNumber:Ljava/lang/String;
    .end local v12           #callType:I
    .end local v14           #currentCNAP:Ljava/lang/String;
    .end local v15           #currentDate:J
    .end local v31           #sameCNAP:Z
    .end local v32           #sameLogType:Z
    .end local v33           #sameNumber:Z
    .end local v35           #shouldGroup:Z
    .end local v36           #temp:Ljava/lang/String;
    .end local v37           #tempE164:Ljava/lang/String;
    .end local v38           #tempNormal:Ljava/lang/String;
    :cond_29
    const/4 v3, 0x1

    move/from16 v0, v18

    if-le v0, v3, :cond_2

    .line 401
    sub-int v3, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 402
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindTimeArray:[I

    sub-int v39, v13, v18

    aput v28, v3, v39

    .line 406
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 408
    move/from16 v0, v18

    new-array v10, v0, [I

    .line 409
    .restart local v10       #IDs:[I
    const/16 v21, 0x0

    .restart local v21       #dataCount:I
    :goto_e
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_2b

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v10, v21

    .line 409
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 414
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    new-instance v39, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    const/16 v40, 0x0

    aget v40, v10, v40

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v18

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I[II)V

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_3
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_1
    .end sparse-switch

    .line 262
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_4
        0x78 -> :sswitch_4
        0xc8 -> :sswitch_7
        0x12c -> :sswitch_7
        0x1f4 -> :sswitch_4
        0x1fe -> :sswitch_4
        0x320 -> :sswitch_4
        0x384 -> :sswitch_6
        0x3e8 -> :sswitch_4
        0x44c -> :sswitch_5
    .end sparse-switch
.end method

.method public getGroupCountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemindTimeArray()[I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindTimeArray:[I

    return-object v0
.end method

.method public getSeperatorIDList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStrSeparatorArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/android/mms/ui/DeliveryReadReport;
.super Ljava/lang/Object;
.source "DeliveryReadReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;,
        Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    }
.end annotation


# static fields
.field static final COLUMN_MMS_DELIVERY_DATE:I = 0x2

.field static final COLUMN_MMS_DELIVERY_STATUS:I = 0x1

.field static final COLUMN_MMS_READ_DATE:I = 0x4

.field static final COLUMN_MMS_READ_STATUS:I = 0x3

.field static final COLUMN_MMS_REQUEST_DELIVERY:I = 0x1

.field static final COLUMN_MMS_REQUEST_READ:I = 0x2

.field static final COLUMN_RECIPIENT:I = 0x0

.field static final COLUMN_SMS_DELIVERY_DATE:I = 0x2

.field public static final COLUMN_SMS_DELIVERY_DATE_NAME:Ljava/lang/String; = "delivery_date"

.field static final COLUMN_SMS_DELIVERY_STATUS:I = 0x1

.field static final COLUMN_SMS_ERROR_CODE:I = 0x3

.field static final COLUMN_SMS_TYPE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "DeliveryReadReport"

.field static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field static final MMS_REQUEST_PROJECTION:[Ljava/lang/String;

.field static final SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field public static error_code_values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "d_rpt"

    aput-object v1, v0, v3

    const-string v1, "rr"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "delivery_status"

    aput-object v1, v0, v3

    const-string v1, "delivery_date"

    aput-object v1, v0, v4

    const-string v1, "read_status"

    aput-object v1, v0, v5

    const-string v1, "read_date"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "status"

    aput-object v1, v0, v3

    const-string v1, "delivery_date"

    aput-object v1, v0, v4

    const-string v1, "error_code"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 61
    const/16 v0, 0x33

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->error_code_values:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x1t 0x80t 0x0t 0x0t
        0x2t 0x80t 0x0t 0x0t
        0x3t 0x80t 0x0t 0x0t
        0x4t 0x80t 0x0t 0x0t
        0x5t 0x80t 0x0t 0x0t
        0x6t 0x80t 0x0t 0x0t
        0x7t 0x80t 0x0t 0x0t
        0x8t 0x80t 0x0t 0x0t
        0x9t 0x80t 0x0t 0x0t
        0xat 0x80t 0x0t 0x0t
        0xbt 0x80t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    return-void
.end method

.method public static getGroupSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 26
    .parameter "context"
    .parameter "groupID"

    .prologue
    .line 178
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v14, deliveryReport:Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 182
    .local v17, errorCode:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 184
    .local v25, res:Landroid/content/res/Resources;
    new-instance v18, Ljava/util/HashMap;

    const/16 v2, 0x34

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 185
    .local v18, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const v2, 0x7f07002e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 186
    .local v21, names:[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_0

    .line 187
    sget-object v2, Lcom/android/mms/ui/DeliveryReadReport;->error_code_values:[I

    aget v2, v2, v19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v3, v21, v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    const v2, 0x7f0a00d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, ": "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/ui/DeliveryReadReport;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 196
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 197
    const/4 v2, 0x0

    .line 289
    :goto_1
    return-object v2

    .line 201
    :cond_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 202
    :cond_2
    const/4 v2, 0x0

    .line 287
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 210
    :cond_3
    const/16 v22, 0x0

    .line 211
    .local v22, notRequestCount:I
    const/16 v24, 0x0

    .line 212
    .local v24, requestedCount:I
    :try_start_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v23, reports:Ljava/lang/StringBuilder;
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, address:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 216
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 217
    .local v12, deliveryDate:Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 218
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 219
    .local v11, date:Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 224
    .end local v11           #date:Ljava/util/Date;
    .local v13, deliveryDateStr:Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 226
    .local v15, deliveryStatus:I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_8

    .line 227
    const v2, 0x7f0a00d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, deliveryStr:Ljava/lang/String;
    add-int/lit8 v22, v22, 0x1

    .line 243
    :goto_3
    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    const v2, 0x7f0a00aa

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const/16 v2, 0x20

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 249
    const-string v2, "/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_5
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 255
    .local v20, isSmsCondition:I
    const-string v2, "\n"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const v2, 0x7f0a00cf

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const/16 v2, 0x20

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    const/4 v2, 0x5

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    .line 259
    const v2, 0x7f0a0184

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 269
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 270
    const-string v2, "DeliveryReadReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeliveryReadReport SMS Error code(errorCode) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-eqz v17, :cond_6

    .line 272
    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00b6

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 284
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 289
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 222
    .end local v13           #deliveryDateStr:Ljava/lang/String;
    .end local v15           #deliveryStatus:I
    .end local v16           #deliveryStr:Ljava/lang/String;
    .end local v20           #isSmsCondition:I
    :cond_7
    :try_start_2
    const-string v13, ""

    .restart local v13       #deliveryDateStr:Ljava/lang/String;
    goto/16 :goto_2

    .line 230
    .restart local v15       #deliveryStatus:I
    :cond_8
    const/16 v2, 0x46

    if-ne v15, v2, :cond_9

    .line 231
    const v2, 0x7f0a0116

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 233
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_9
    const/16 v2, 0x40

    if-lt v15, v2, :cond_a

    .line 234
    const v2, 0x7f0a00cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 235
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_a
    const/16 v2, 0x20

    if-lt v15, v2, :cond_b

    .line 236
    const v2, 0x7f0a00d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 237
    .restart local v16       #deliveryStr:Ljava/lang/String;
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 239
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a00ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 260
    .restart local v20       #isSmsCondition:I
    :cond_c
    const/4 v2, 0x6

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    .line 261
    const v2, 0x7f0a00c8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 287
    .end local v9           #address:Ljava/lang/String;
    .end local v12           #deliveryDate:Ljava/lang/Long;
    .end local v13           #deliveryDateStr:Ljava/lang/String;
    .end local v15           #deliveryStatus:I
    .end local v16           #deliveryStr:Ljava/lang/String;
    .end local v20           #isSmsCondition:I
    .end local v22           #notRequestCount:I
    .end local v23           #reports:Ljava/lang/StringBuilder;
    .end local v24           #requestedCount:I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 262
    .restart local v9       #address:Ljava/lang/String;
    .restart local v12       #deliveryDate:Ljava/lang/Long;
    .restart local v13       #deliveryDateStr:Ljava/lang/String;
    .restart local v15       #deliveryStatus:I
    .restart local v16       #deliveryStr:Ljava/lang/String;
    .restart local v20       #isSmsCondition:I
    .restart local v22       #notRequestCount:I
    .restart local v23       #reports:Ljava/lang/StringBuilder;
    .restart local v24       #requestedCount:I
    :cond_d
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_e

    .line 263
    const v2, 0x7f0a0473

    :try_start_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 265
    :cond_e
    const v2, 0x7f0a0183

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private static getMmsReportRequests(Landroid/content/Context;J)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "msgID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 531
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 532
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REQUEST_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 535
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 551
    :goto_0
    return-object v4

    .line 540
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 544
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v8, reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    new-instance v0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;-><init>(Ljava/lang/String;II)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 551
    .end local v8           #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    goto :goto_0
.end method

.method private static getMmsReportStatus(Landroid/content/Context;J)Ljava/util/Map;
    .locals 14
    .parameter "context"
    .parameter "msgID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 558
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 561
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 562
    const/4 v13, 0x0

    .line 586
    :goto_0
    return-object v13

    .line 566
    :cond_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 567
    const/4 v13, 0x0

    .line 586
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 570
    :cond_1
    :try_start_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 572
    .local v13, statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 574
    .local v12, recipient:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v12}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 577
    :goto_2
    new-instance v3, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v0, 0x4

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;-><init>(Landroid/content/Context;IIJJ)V

    .line 582
    .local v3, status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    invoke-interface {v13, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 586
    .end local v3           #status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    .end local v12           #recipient:Ljava/lang/String;
    .end local v13           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 574
    .restart local v12       #recipient:Ljava/lang/String;
    .restart local v13       #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    :cond_2
    :try_start_2
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    goto :goto_2

    .line 586
    .end local v12           #recipient:Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getMmsReportText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 19
    .parameter "context"
    .parameter "msgID"

    .prologue
    .line 293
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 294
    const/16 v17, 0x0

    .line 527
    :goto_0
    return-object v17

    .line 296
    :cond_0
    invoke-static/range {p0 .. p2}, Lcom/android/mms/ui/DeliveryReadReport;->getMmsReportRequests(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v13

    .line 298
    .local v13, reportReqs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v3, deliveryReport:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v8, readReport:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 302
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    const v17, 0x7f0a00d3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v17, ": "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 307
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    const v17, 0x7f0a00d4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v17, ": "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 313
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 314
    const v17, 0x7f0a00d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 316
    const v17, 0x7f0a00d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 320
    :cond_6
    invoke-static/range {p0 .. p2}, Lcom/android/mms/ui/DeliveryReadReport;->getMmsReportStatus(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v14

    .line 322
    .local v14, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v5, deliveryReportTemp:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v10, readReportTemp:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 326
    .local v4, deliveryReportCount:I
    const/4 v9, 0x0

    .line 328
    .local v9, readReportCount:I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;

    .line 329
    .local v12, reportReq:Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
    if-nez v12, :cond_a

    .line 330
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .local v15, s:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 332
    const v17, 0x7f0a00d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 334
    const v17, 0x7f0a00d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 338
    .end local v15           #s:Ljava/lang/StringBuffer;
    :cond_a
    if-nez v14, :cond_11

    .line 339
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .restart local v15       #s:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 342
    invoke-virtual {v12}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->isDeliveryReportRequested()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 343
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplaceLabelOnRequestedStatus()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 344
    const v17, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 352
    invoke-virtual {v12}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->isReadReportRequested()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 353
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplaceLabelOnRequestedStatus()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 354
    const v17, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_c
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 346
    :cond_d
    const v17, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 348
    :cond_e
    const v17, 0x7f0a00d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 356
    :cond_f
    const v17, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 358
    :cond_10
    const v17, 0x7f0a00d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 362
    .end local v15           #s:Ljava/lang/StringBuffer;
    :cond_11
    invoke-virtual {v12}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, recipient:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-static {v11}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 365
    :goto_4
    invoke-static {v14, v11}, Lcom/android/mms/ui/DeliveryReadReport;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;

    move-result-object v16

    .line 367
    .local v16, status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    if-nez v16, :cond_16

    .line 368
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 369
    if-eqz v5, :cond_12

    .line 370
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 372
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplaceLabelOnRequestedStatus()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 376
    const v17, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_12
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 382
    if-eqz v10, :cond_7

    .line 383
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 385
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplaceLabelOnRequestedStatus()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 389
    const v17, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 363
    .end local v16           #status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    :cond_13
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 378
    .restart local v16       #status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    :cond_14
    const v17, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 391
    :cond_15
    const v17, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 396
    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 397
    if-eqz v10, :cond_17

    .line 398
    invoke-virtual {v12}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->isReadReportRequested()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 399
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->getReadReportDate()Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, readDate:Ljava/lang/String;
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 402
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->readStatus:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 424
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplaceLabelOnRequestedStatus()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 425
    const v17, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .end local v7           #readDate:Ljava/lang/String;
    :cond_17
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 438
    if-eqz v5, :cond_7

    .line 439
    invoke-virtual {v12}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->isDeliveryReportRequested()Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 440
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->getDeliveryReportDate()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, deliveryDate:Ljava/lang/String;
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 443
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->deliveryStatus:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 469
    const v17, 0x7f0a00cb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 406
    .end local v2           #deliveryDate:Ljava/lang/String;
    .restart local v7       #readDate:Ljava/lang/String;
    :pswitch_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0a00c9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    add-int/lit8 v9, v9, 0x1

    .line 409
    goto :goto_6

    .line 413
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 414
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0a00cc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0a0389

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 422
    goto/16 :goto_6

    .line 418
    :cond_18
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0a00cc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 427
    :cond_19
    const v17, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 432
    .end local v7           #readDate:Ljava/lang/String;
    :cond_1a
    const/4 v10, 0x0

    .line 433
    const v17, 0x7f0a00d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 447
    .restart local v2       #deliveryDate:Ljava/lang/String;
    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplaceLabelOnRequestedStatus()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 448
    const v17, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 450
    :cond_1b
    const v17, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 454
    :sswitch_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0a00ca

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    add-int/lit8 v4, v4, 0x1

    .line 457
    goto/16 :goto_1

    .line 459
    :sswitch_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0a00cd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    add-int/lit8 v4, v4, 0x1

    .line 462
    goto/16 :goto_1

    .line 464
    :sswitch_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0a0116

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    add-int/lit8 v4, v4, 0x1

    .line 467
    goto/16 :goto_1

    .line 474
    .end local v2           #deliveryDate:Ljava/lang/String;
    :cond_1c
    const/4 v5, 0x0

    .line 475
    const v17, 0x7f0a00d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 481
    .end local v11           #recipient:Ljava/lang/String;
    .end local v12           #reportReq:Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
    .end local v16           #status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 482
    if-nez v4, :cond_1e

    if-eqz v5, :cond_1e

    .line 483
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplaceLabelOnRequestedStatus()Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 486
    const v17, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const/4 v5, 0x0

    .line 498
    :cond_1e
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 499
    if-nez v9, :cond_1f

    if-eqz v10, :cond_1f

    .line 500
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplaceLabelOnRequestedStatus()Z

    move-result v17

    if-eqz v17, :cond_23

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 503
    const v17, 0x7f0a00c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const/4 v10, 0x0

    .line 515
    :cond_1f
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_20

    .line 516
    if-eqz v10, :cond_20

    .line 517
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 522
    if-eqz v5, :cond_21

    .line 523
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_21
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 489
    :cond_22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 491
    const v17, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 506
    :cond_23
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 508
    const v17, 0x7f0a00d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 404
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 445
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_3
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 24
    .parameter "context"
    .parameter "msgID"

    .prologue
    .line 85
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v14, deliveryReport:Ljava/lang/StringBuilder;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v22, reports:Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 90
    .local v17, errorCode:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 92
    .local v23, res:Landroid/content/res/Resources;
    new-instance v18, Ljava/util/HashMap;

    const/16 v2, 0x34

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 93
    .local v18, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const v2, 0x7f07002e

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 94
    .local v21, names:[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_0

    .line 95
    sget-object v2, Lcom/android/mms/ui/DeliveryReadReport;->error_code_values:[I

    aget v2, v2, v19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v3, v21, v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    const v2, 0x7f0a00d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, ": "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/ui/DeliveryReadReport;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 104
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 105
    const/4 v2, 0x0

    .line 174
    :goto_1
    return-object v2

    .line 109
    :cond_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 110
    :cond_2
    const/4 v2, 0x0

    .line 172
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 112
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, address:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 116
    .local v12, deliveryDate:Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 117
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 118
    .local v11, date:Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 123
    .end local v11           #date:Ljava/util/Date;
    .local v13, deliveryDateStr:Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 126
    .local v15, deliveryStatus:I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_7

    .line 127
    const v2, 0x7f0a00d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 141
    .local v16, deliveryStr:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 147
    :cond_4
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 149
    .local v20, isSmsCondition:I
    const/16 v2, 0xa

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    const v2, 0x7f0a00cf

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const/16 v2, 0x20

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    const/4 v2, 0x5

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    .line 153
    const v2, 0x7f0a0184

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 163
    const-string v2, "DeliveryReadReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeliveryReadReport SMS Error code(errorCode) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz v17, :cond_5

    .line 165
    const/16 v2, 0xa

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00b6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 121
    .end local v13           #deliveryDateStr:Ljava/lang/String;
    .end local v15           #deliveryStatus:I
    .end local v16           #deliveryStr:Ljava/lang/String;
    .end local v20           #isSmsCondition:I
    :cond_6
    :try_start_2
    const-string v13, ""

    .restart local v13       #deliveryDateStr:Ljava/lang/String;
    goto/16 :goto_2

    .line 128
    .restart local v15       #deliveryStatus:I
    :cond_7
    const/16 v2, 0x46

    if-ne v15, v2, :cond_8

    .line 129
    const v2, 0x7f0a0116

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 130
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_8
    const/16 v2, 0x40

    if-lt v15, v2, :cond_9

    .line 131
    const v2, 0x7f0a00cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 132
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_9
    const/16 v2, 0x20

    if-lt v15, v2, :cond_b

    .line 133
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplaceLabelOnRequestedStatus()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 134
    const v2, 0x7f0a00c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 136
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_a
    const v2, 0x7f0a00d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 138
    .end local v16           #deliveryStr:Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a00ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #deliveryStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 154
    .restart local v20       #isSmsCondition:I
    :cond_c
    const/4 v2, 0x6

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    .line 155
    const v2, 0x7f0a00c8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 172
    .end local v9           #address:Ljava/lang/String;
    .end local v12           #deliveryDate:Ljava/lang/Long;
    .end local v13           #deliveryDateStr:Ljava/lang/String;
    .end local v15           #deliveryStatus:I
    .end local v16           #deliveryStr:Ljava/lang/String;
    .end local v20           #isSmsCondition:I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 156
    .restart local v9       #address:Ljava/lang/String;
    .restart local v12       #deliveryDate:Ljava/lang/Long;
    .restart local v13       #deliveryDateStr:Ljava/lang/String;
    .restart local v15       #deliveryStatus:I
    .restart local v16       #deliveryStr:Ljava/lang/String;
    .restart local v20       #isSmsCondition:I
    :cond_d
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_e

    .line 157
    const v2, 0x7f0a0473

    :try_start_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 159
    :cond_e
    const v2, 0x7f0a0183

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private static queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    .locals 5
    .parameter
    .parameter "recipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;"
        }
    .end annotation

    .prologue
    .local p0, status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    const/4 v3, 0x0

    .line 592
    if-nez p0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-object v3

    .line 596
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 597
    .local v2, recipientSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 598
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 600
    .local v1, r:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 601
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;

    goto :goto_0

    .line 604
    :cond_3
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 605
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;

    goto :goto_0
.end method

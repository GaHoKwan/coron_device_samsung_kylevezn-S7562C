.class public Lcom/android/contacts/editor/EventFieldEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "EventFieldEditorView.java"


# static fields
.field public static mDatePickerDialog:Landroid/app/Dialog;


# instance fields
.field private mDateView:Landroid/widget/TextView;

.field private mNoDateString:Ljava/lang/String;

.field private mPrimaryTextColor:I

.field private mSecondaryTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/EventFieldEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/EventFieldEditorView;CIII)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/editor/EventFieldEditorView;->reArrangeDate(CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDatePickerDialog()Landroid/app/Dialog;
    .locals 28

    .prologue
    .line 249
    const/4 v9, 0x0

    .line 250
    .local v9, bLunar:Z
    const/4 v10, 0x0

    .line 252
    .local v10, bLeap:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 253
    .local v20, column:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 254
    .local v26, oldValue:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v24

    .line 256
    .local v24, kind:Lcom/android/contacts/model/DataKind;
    sget-object v3, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v19

    .line 257
    .local v19, calendar:Ljava/util/Calendar;
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v23

    .line 260
    .local v23, defaultYear:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v11

    .line 263
    .local v11, isYearOptional:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    .line 264
    .local v25, lunar:Ljava/lang/Integer;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Calendar_EnableLunar"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v25, :cond_0

    .line 268
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 269
    const/4 v9, 0x1

    .line 270
    const/4 v10, 0x1

    .line 279
    :cond_0
    :goto_0
    if-eqz v26, :cond_1

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 281
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Calendar_EnableLunar"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    move/from16 v6, v23

    .line 284
    .local v6, oldYear:I
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 285
    .local v7, oldMonth:I
    const/4 v3, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 316
    .local v8, oldDay:I
    :goto_1
    new-instance v14, Lcom/android/contacts/editor/EventFieldEditorView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v11, v1, v2}, Lcom/android/contacts/editor/EventFieldEditorView$2;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/DataKind;Ljava/lang/String;)V

    .line 345
    .local v14, callBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    new-instance v5, Lcom/android/contacts/editor/EventFieldEditorView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v11, v1, v2}, Lcom/android/contacts/editor/EventFieldEditorView$3;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/DataKind;Ljava/lang/String;)V

    .line 406
    .local v5, luCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Calendar_EnableLunar"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 408
    new-instance v3, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct/range {v3 .. v11}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;-><init>(Landroid/content/Context;Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;IIIZZZ)V

    move-object v12, v3

    .line 414
    .end local v5           #luCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;
    .end local v6           #oldYear:I
    .end local v7           #oldMonth:I
    .end local v8           #oldDay:I
    .end local v14           #callBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    :goto_2
    return-object v12

    .line 271
    :cond_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 273
    const/4 v9, 0x1

    goto :goto_0

    .line 289
    :cond_3
    move/from16 v6, v23

    .line 290
    .restart local v6       #oldYear:I
    const/4 v7, 0x0

    .line 291
    .restart local v7       #oldMonth:I
    const/4 v8, 0x1

    .restart local v8       #oldDay:I
    goto :goto_1

    .line 294
    .end local v6           #oldYear:I
    .end local v7           #oldMonth:I
    .end local v8           #oldDay:I
    :cond_4
    new-instance v27, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 296
    .local v27, position:Ljava/text/ParsePosition;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v21

    .line 297
    .local v21, date1:Ljava/util/Date;
    if-nez v21, :cond_5

    .line 299
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    .line 301
    :cond_5
    if-eqz v21, :cond_6

    .line 302
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 303
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 304
    .restart local v6       #oldYear:I
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 305
    .restart local v7       #oldMonth:I
    const/4 v3, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .restart local v8       #oldDay:I
    goto :goto_1

    .line 307
    .end local v6           #oldYear:I
    .end local v7           #oldMonth:I
    .end local v8           #oldDay:I
    :cond_6
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v22

    .line 309
    .local v22, date2:Ljava/util/Date;
    if-nez v22, :cond_7

    const/4 v12, 0x0

    goto :goto_2

    .line 310
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 311
    if-eqz v11, :cond_8

    const/4 v6, 0x0

    .line 312
    .restart local v6       #oldYear:I
    :goto_3
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 313
    .restart local v7       #oldMonth:I
    const/4 v3, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .restart local v8       #oldDay:I
    goto/16 :goto_1

    .end local v6           #oldYear:I
    .end local v7           #oldMonth:I
    .end local v8           #oldDay:I
    :cond_8
    move/from16 v6, v23

    .line 311
    goto :goto_3

    .line 411
    .end local v21           #date1:Ljava/util/Date;
    .end local v22           #date2:Ljava/util/Date;
    .end local v27           #position:Ljava/text/ParsePosition;
    .restart local v5       #luCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;
    .restart local v6       #oldYear:I
    .restart local v7       #oldMonth:I
    .restart local v8       #oldDay:I
    .restart local v14       #callBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 412
    new-instance v12, Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v12 .. v17}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;III)V

    goto/16 :goto_2

    .line 414
    :cond_a
    new-instance v12, Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v11

    invoke-direct/range {v12 .. v18}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    goto/16 :goto_2
.end method

.method public static getDefaultHourForBirthday()I
    .locals 1

    .prologue
    .line 499
    const/16 v0, 0x8

    return v0
.end method

.method private reArrangeDate(CIII)Ljava/lang/String;
    .locals 6
    .parameter "dateType"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/16 v5, 0xa

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v0, date:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .local v2, monthStr:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v1, dayStr:Ljava/lang/StringBuilder;
    add-int/lit8 v3, p3, 0x1

    if-ge v3, v5, :cond_0

    .line 429
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    :goto_0
    if-ge p4, v5, :cond_1

    .line 435
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 457
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 462
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 431
    :cond_0
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 443
    :pswitch_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 448
    :pswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 452
    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 441
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private rebuildDateView()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditField;

    .line 138
    .local v3, editField:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 141
    .local v0, column:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "data15"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 143
    .local v4, type:Ljava/lang/Integer;
    if-nez v4, :cond_0

    .line 144
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 147
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v8, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/contacts/util/DateUtils;->formatDateForLunar(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, data:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 154
    .local v2, dateType:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0368

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 161
    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/LabeledEditorView;->setDeleteButtonVisible(Z)V

    .line 175
    :goto_2
    return-void

    .line 150
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #dateType:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #data:Ljava/lang/String;
    goto :goto_0

    .line 156
    .restart local v2       #dateType:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0367

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 167
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 168
    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_3
    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030044

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 173
    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/LabeledEditorView;->setDeleteButtonVisible(Z)V

    goto :goto_2

    .line 170
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 186
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    const-string v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, dialogId:I
    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 190
    :pswitch_0
    sget-object v1, Lcom/android/contacts/editor/EventFieldEditorView;->mDatePickerDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/editor/EventFieldEditorView;->mDatePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    sget-object v1, Lcom/android/contacts/editor/EventFieldEditorView;->mDatePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 196
    :goto_1
    sget-object v1, Lcom/android/contacts/editor/EventFieldEditorView;->mDatePickerDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/editor/EventFieldEditorView;->mDatePickerDialog:Landroid/app/Dialog;

    goto :goto_1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001b
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic getType()Lcom/android/contacts/model/AccountType$EditType;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Lcom/android/contacts/model/AccountType$EventEditType;
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getType()Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EventEditType;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType$EditField;

    .line 180
    .local v1, editField:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v0, v1, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 181
    .local v0, column:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 97
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mPrimaryTextColor:I

    .line 99
    const v1, 0x7f0b0120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    .line 100
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0d01c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    .line 102
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/editor/EventFieldEditorView;->mDatePickerDialog:Landroid/app/Dialog;

    .line 104
    const v1, 0x7f09024e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/contacts/editor/EventFieldEditorView$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/EventFieldEditorView$1;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v7, v2, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 211
    .local v7, column:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, oldValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v10

    .line 214
    .local v10, kind:Lcom/android/contacts/model/DataKind;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 215
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 218
    .local v1, defaultYear:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v9

    .line 220
    .local v9, isYearOptional:Z
    if-nez v9, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    new-instance v12, Ljava/text/ParsePosition;

    invoke-direct {v12, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 222
    .local v12, position:Ljava/text/ParsePosition;
    iget-object v2, v10, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    .line 225
    .local v8, date2:Ljava/util/Date;
    if-nez v8, :cond_1

    .line 241
    .end local v8           #date2:Ljava/util/Date;
    .end local v12           #position:Ljava/text/ParsePosition;
    :cond_0
    :goto_0
    return-void

    .line 228
    .restart local v8       #date2:Ljava/util/Date;
    .restart local v12       #position:Ljava/text/ParsePosition;
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 229
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 233
    if-eqz v9, :cond_2

    .line 234
    iget-object v2, v10, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 238
    .local v13, resultString:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v7, v13}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    goto :goto_0

    .line 236
    .end local v13           #resultString:Ljava/lang/String;
    :cond_2
    iget-object v2, v10, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #resultString:Ljava/lang/String;
    goto :goto_1
.end method

.method protected requestFocusForFirstEditField()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 116
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    const/4 v0, 0x1

    .line 128
    iget-object v1, p1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "kind must have 1 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 131
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p4, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 133
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    .line 134
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

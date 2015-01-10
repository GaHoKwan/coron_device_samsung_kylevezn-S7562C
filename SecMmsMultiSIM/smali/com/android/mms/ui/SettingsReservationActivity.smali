.class public Lcom/android/mms/ui/SettingsReservationActivity;
.super Landroid/app/Activity;
.source "SettingsReservationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;
    }
.end annotation


# static fields
.field private static final MENU_CHECK:I = 0x1

.field private static final MENU_EXIT:I = 0x2

.field public static final REQUEST_SETTINGS_TRANSMIT_RESERVATION_TIME:I = 0x64

.field public static final RESERVATION_OK:I = 0x0

.field public static final SETTINGS_RESERVATION_TIME:Ljava/lang/String; = "RESERVATION_TIME"

.field private static final TAG:Ljava/lang/String; = "Mms/SettingsReservationActivity"

.field public static mCalendar:Ljava/util/Calendar;


# instance fields
.field bOriginalCheckState:Z

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDateView:Landroid/widget/Button;

.field private mDay:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mHour:I

.field private mHourofDay:I

.field private mIsLandscape:Z

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMin:I

.field private mMinYear:I

.field private mMonth:I

.field private mReservationCheckBox:Landroid/widget/CheckBox;

.field private mSendTimeBakup:J

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mTimeView:Landroid/widget/Button;

.field private mYear:I

.field timeSettingChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 46
    iput-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 49
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->bOriginalCheckState:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->timeSettingChanged:Z

    .line 352
    new-instance v0, Lcom/android/mms/ui/SettingsReservationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SettingsReservationActivity$1;-><init>(Lcom/android/mms/ui/SettingsReservationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 370
    new-instance v0, Lcom/android/mms/ui/SettingsReservationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SettingsReservationActivity$2;-><init>(Lcom/android/mms/ui/SettingsReservationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SettingsReservationActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SettingsReservationActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SettingsReservationActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SettingsReservationActivity;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SettingsReservationActivity;->isEnableReservationTime(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    return v0
.end method

.method public static checkReservationTime(J)I
    .locals 6
    .parameter "reservationTime"

    .prologue
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 320
    .local v0, currentTime:J
    sub-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 321
    const v2, 0x7f0a03d6

    .line 329
    :goto_0
    return v2

    .line 323
    :cond_0
    sub-long v2, p0, v0

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 324
    const v2, 0x7f0a03d7

    goto :goto_0

    .line 326
    :cond_1
    sub-long v2, p0, v0

    const-wide v4, 0x757b12c00L

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 327
    const v2, 0x7f0a03d8

    goto :goto_0

    .line 329
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/high16 v7, -0x100

    const/4 v6, 0x1

    .line 207
    const-string v2, "Mms/SettingsReservationActivity"

    const-string v3, "initialize CaLl: "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const v2, 0x7f0e00d9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    .line 231
    const v2, 0x7f0e018f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    .line 232
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    .line 235
    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "RESERVATION_TIME"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 237
    .local v0, reservationTime:J
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V

    .line 246
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 249
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private isEnableReservationTime(J)Z
    .locals 7
    .parameter "reservationTime"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 298
    const-string v4, "Mms/SettingsReservationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnableReservationTime CaLl: milliSec = %d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {p1, p2}, Lcom/android/mms/ui/SettingsReservationActivity;->checkReservationTime(J)I

    move-result v1

    .line 300
    .local v1, messageResourceId:I
    if-nez v1, :cond_0

    .line 310
    :goto_0
    return v2

    .line 303
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a03d7

    if-ne v1, v4, :cond_1

    .line 305
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 308
    :goto_1
    const v2, 0x7f0a00eb

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    move v2, v3

    .line 310
    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private refreshReservationTime(J)V
    .locals 10
    .parameter "reservationTime"

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    const/16 v1, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 275
    const-string v0, "Mms/SettingsReservationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshReservationTime CaLl: reservationTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 279
    :cond_0
    div-long v2, p1, v8

    mul-long p1, v2, v8

    .line 280
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 281
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    .line 282
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I

    .line 283
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I

    .line 284
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    .line 285
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    .line 286
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    const-string v1, "%02d : %02d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    const-string v3, "%02d : %02d %s"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setCancelResultDate()V
    .locals 4

    .prologue
    .line 269
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "setResultData CaLl: "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 271
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "RESERVATION_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 272
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 273
    return-void
.end method

.method private setResultData()V
    .locals 4

    .prologue
    .line 263
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "setResultData CaLl: "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 265
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "RESERVATION_TIME"

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 266
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 267
    return-void
.end method


# virtual methods
.method public OnClickReservationOnOff(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, -0x1

    const v3, -0x777778

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mReservationCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mReservationCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mReservationCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    .line 334
    const-string v0, "Mms/SettingsReservationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick CaLl: view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 339
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    iget v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I

    iget v5, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    .line 340
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 341
    .local v7, mTime:Landroid/text/format/Time;
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    invoke-virtual {v7, v8, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 342
    iget-object v6, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    check-cast v6, Landroid/app/DatePickerDialog;

    .line 343
    .local v6, mDatePickerDialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 344
    const/16 v0, 0x1f

    const/16 v1, 0xb

    const/16 v2, 0x7f4

    invoke-virtual {v7, v0, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 345
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 347
    .end local v6           #mDatePickerDialog:Landroid/app/DatePickerDialog;
    .end local v7           #mTime:Landroid/text/format/Time;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 348
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    iget v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mIsLandscape:Z

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 146
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const-string v2, "Mms/SettingsReservationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate CaLl: savedInstanceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const v2, 0x7f03007e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 105
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->initialize()V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 108
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mIsLandscape:Z

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 116
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 151
    const/4 v0, 0x2

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    const/4 v0, 0x1

    const v1, 0x7f0a006a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 156
    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 163
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 132
    .local v0, actionBar:Landroid/app/ActionBar;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 133
    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    .line 137
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 167
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 186
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 170
    :sswitch_0
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->isEnableReservationTime(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->setResultData()V

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 178
    :sswitch_1
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->setCancelResultDate()V

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 183
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 128
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 121
    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V

    .line 122
    return-void
.end method

.class public Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
.super Lcom/android/contacts/datepicker/DatePicker;
.source "DatePickerWithLunar.java"


# instance fields
.field private mIsLeapMonth:Z

.field private mSetLunar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    .line 44
    return-void
.end method


# virtual methods
.method protected getMaxDayOfMonth()I
    .locals 5

    .prologue
    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 48
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 49
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 53
    .local v1, max:I
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v3

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->getDayLengthOf(IIZ)I

    move-result v1

    .line 57
    :cond_0
    return v1
.end method

.method public isLunarCalendar()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    return v0
.end method

.method public setLunarCalendar(ZZ)V
    .locals 7
    .parameter "bSetLunar"
    .parameter "bIsLeapMonth"

    .prologue
    const/4 v6, 0x1

    .line 73
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    .line 74
    iput-boolean p2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMaxDayOfMonth()I

    move-result v1

    .line 76
    .local v1, maxDay:I
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v0

    .line 77
    .local v0, dayOfMonth:I
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 78
    move v0, v1

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v6

    invoke-virtual {p0, v5, v6, v1}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 94
    :goto_1
    return-void

    .line 73
    .end local v0           #dayOfMonth:I
    .end local v1           #maxDay:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 81
    .restart local v0       #dayOfMonth:I
    .restart local v1       #maxDay:I
    :cond_2
    const/16 v3, 0x834

    .line 82
    .local v3, temp_year:I
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v4

    .line 83
    .local v4, year:I
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v2

    .line 85
    .local v2, month:I
    if-ne v4, v3, :cond_3

    .line 86
    const/16 v3, 0x76c

    .line 88
    :cond_3
    invoke-virtual {p0, v3, v2, v6}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 89
    invoke-virtual {p0, v4, v2, v0}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    goto :goto_1
.end method

.method protected updateDaySpinner()V
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMaxDayOfMonth()I

    move-result v0

    .line 99
    .local v0, maxDay:I
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 100
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 101
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 103
    return-void
.end method

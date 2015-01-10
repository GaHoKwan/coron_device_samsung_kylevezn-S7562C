.class public Lcom/android/contacts/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;,
        Lcom/android/contacts/datepicker/DatePicker$TwKeyListener;,
        Lcom/android/contacts/datepicker/DatePicker$SavedState;,
        Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;
    }
.end annotation


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYMMDD:I

.field private isNumMonth:Z

.field private mCurrentLocale:Ljava/util/Locale;

.field protected mDay:I

.field private mDayDecrementButton:Landroid/widget/ImageButton;

.field private mDayIncrementButton:Landroid/widget/ImageButton;

.field protected final mDayPicker:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mHasYear:Z

.field protected mMonth:I

.field private mMonthDecrementButton:Landroid/widget/ImageButton;

.field private mMonthIncrementButton:Landroid/widget/ImageButton;

.field protected final mMonthPicker:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempDate:Ljava/util/Calendar;

.field protected mYear:I

.field private mYearDecrementButton:Landroid/widget/ImageButton;

.field private mYearIncrementButton:Landroid/widget/ImageButton;

.field private mYearOptional:Z

.field protected final mYearPicker:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;

.field private final mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private months:[Ljava/lang/String;

.field private numberOfMonths:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/contacts/datepicker/DatePicker;->FORMAT_MMDDYYYY:I

    .line 89
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/contacts/datepicker/DatePicker;->FORMAT_DDMMYYYY:I

    .line 90
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/contacts/datepicker/DatePicker;->FORMAT_YYYYMMDD:I

    .line 91
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    .line 101
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 106
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/contacts/datepicker/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 140
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 142
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040071

    const/4 v8, 0x1

    invoke-virtual {v4, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 144
    const v7, 0x7f0901b4

    invoke-virtual {p0, v7}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/NumberPicker;

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 145
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v8, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 146
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 147
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 148
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 149
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v8, Lcom/android/contacts/datepicker/DatePicker$1;

    invoke-direct {v8, p0}, Lcom/android/contacts/datepicker/DatePicker$1;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 156
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 158
    const v7, 0x7f0901b3

    invoke-virtual {p0, v7}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/NumberPicker;

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 159
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v8, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 166
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 168
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    .line 171
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v8, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 172
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 173
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 181
    .end local v3           #i:I
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 182
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v8, Lcom/android/contacts/datepicker/DatePicker$2;

    invoke-direct {v8, p0}, Lcom/android/contacts/datepicker/DatePicker$2;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 199
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 201
    const v7, 0x7f0901b5

    invoke-virtual {p0, v7}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/NumberPicker;

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 202
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 203
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 204
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 205
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v8, Lcom/android/contacts/datepicker/DatePicker$3;

    invoke-direct {v8, p0}, Lcom/android/contacts/datepicker/DatePicker$3;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 217
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 219
    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/datepicker/DatePicker$4;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 230
    .local v0, TouchListener:Landroid/view/View$OnTouchListener;
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayIncrementButton:Landroid/widget/ImageButton;

    .line 231
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthIncrementButton:Landroid/widget/ImageButton;

    .line 232
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearIncrementButton:Landroid/widget/ImageButton;

    .line 234
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayDecrementButton:Landroid/widget/ImageButton;

    .line 235
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthDecrementButton:Landroid/widget/ImageButton;

    .line 236
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearDecrementButton:Landroid/widget/ImageButton;

    .line 238
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    const v7, 0x7f0901b1

    invoke-virtual {p0, v7}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 247
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v8, Lcom/android/contacts/datepicker/DatePicker$5;

    invoke-direct {v8, p0}, Lcom/android/contacts/datepicker/DatePicker$5;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 267
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v8, Lcom/android/contacts/datepicker/DatePicker$6;

    invoke-direct {v8, p0}, Lcom/android/contacts/datepicker/DatePicker$6;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    sget-object v7, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 278
    .local v1, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/16 v8, 0x76e

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 280
    .local v6, mStartYear:I
    const/4 v7, 0x1

    const/16 v8, 0x7f4

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 282
    .local v5, mEndYear:I
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 283
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 284
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 286
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 290
    .local v2, cal:Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 293
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 296
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/contacts/datepicker/DatePicker;->setEnabled(Z)V

    .line 298
    :cond_1
    return-void

    .line 175
    .end local v0           #TouchListener:Landroid/view/View$OnTouchListener;
    .end local v1           #a:Landroid/content/res/TypedArray;
    .end local v2           #cal:Ljava/util/Calendar;
    .end local v5           #mEndYear:I
    .end local v6           #mStartYear:I
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 176
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v8, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 178
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    .line 179
    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/datepicker/DatePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/datepicker/DatePicker;)[Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/datepicker/DatePicker;Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/contacts/datepicker/DatePicker;->hideSoftInput(Landroid/widget/NumberPicker;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/datepicker/DatePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/contacts/datepicker/DatePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/datepicker/DatePicker;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    return-void
.end method

.method private adjustMaxDay()V
    .locals 4

    .prologue
    .line 629
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 631
    .local v0, cal:Ljava/util/Calendar;
    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 632
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 634
    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/datepicker/DatePicker;->getMaximumDate(II)I

    move-result v1

    .line 636
    .local v1, maxFromPrivate:I
    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-le v2, v1, :cond_0

    .line 637
    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 639
    :cond_0
    return-void

    .line 631
    .end local v1           #maxFromPrivate:I
    :cond_1
    const/16 v2, 0x7d0

    goto :goto_0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 763
    :goto_0
    return-object v2

    .line 760
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 761
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 762
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getCurrentYear()I
    .locals 2

    .prologue
    .line 439
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getMaximumDate(II)I
    .locals 2
    .parameter "year"
    .parameter "month"

    .prologue
    .line 657
    const/4 v0, -0x1

    .line 658
    .local v0, result:I
    packed-switch p2, :pswitch_data_0

    .line 706
    :goto_0
    return v0

    .line 660
    :pswitch_0
    const/16 v0, 0x1f

    .line 661
    goto :goto_0

    .line 663
    :pswitch_1
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_2

    .line 664
    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_1

    .line 665
    rem-int/lit16 v1, p1, 0x190

    if-nez v1, :cond_0

    .line 666
    const/16 v0, 0x1d

    .line 668
    :cond_0
    const/16 v0, 0x1c

    .line 670
    :cond_1
    const/16 v0, 0x1d

    goto :goto_0

    .line 672
    :cond_2
    const/16 v0, 0x1c

    .line 674
    goto :goto_0

    .line 676
    :pswitch_2
    const/16 v0, 0x1f

    .line 677
    goto :goto_0

    .line 679
    :pswitch_3
    const/16 v0, 0x1e

    .line 680
    goto :goto_0

    .line 682
    :pswitch_4
    const/16 v0, 0x1f

    .line 683
    goto :goto_0

    .line 685
    :pswitch_5
    const/16 v0, 0x1e

    .line 686
    goto :goto_0

    .line 688
    :pswitch_6
    const/16 v0, 0x1f

    .line 689
    goto :goto_0

    .line 691
    :pswitch_7
    const/16 v0, 0x1f

    .line 692
    goto :goto_0

    .line 694
    :pswitch_8
    const/16 v0, 0x1e

    .line 695
    goto :goto_0

    .line 697
    :pswitch_9
    const/16 v0, 0x1f

    .line 698
    goto :goto_0

    .line 700
    :pswitch_a
    const/16 v0, 0x1e

    .line 701
    goto :goto_0

    .line 703
    :pswitch_b
    const/16 v0, 0x1f

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private hideSoftInput(Landroid/widget/NumberPicker;)V
    .locals 3
    .parameter "spinner"

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 725
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 728
    :cond_0
    return-void
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_0

    .line 643
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 644
    .local v0, year:I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V

    .line 646
    .end local v0           #year:I
    :cond_0
    return-void

    .line 643
    :cond_1
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 12
    .parameter "months"

    .prologue
    .line 355
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([C)V

    .line 359
    .local v6, order:Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v10, :cond_2

    .line 360
    const-string v9, ""

    .line 361
    .local v9, temp:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 362
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 363
    .local v0, c:C
    const/16 v10, 0x79

    if-eq v0, v10, :cond_0

    .line 364
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 361
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    .end local v0           #c:C
    :cond_1
    move-object v6, v9

    .line 372
    .end local v5           #i:I
    .end local v9           #temp:Ljava/lang/String;
    :cond_2
    const v10, 0x7f0901b2

    invoke-virtual {p0, v10}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 373
    .local v7, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 375
    const/4 v8, 0x0

    .line 376
    .local v8, quoted:Z
    const/4 v1, 0x0

    .local v1, didDay:Z
    const/4 v2, 0x0

    .local v2, didMonth:Z
    const/4 v3, 0x0

    .line 378
    .local v3, didYear:Z
    const/4 v4, 0x0

    .line 379
    .local v4, first:C
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 380
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 382
    .restart local v0       #c:C
    const/16 v10, 0x27

    if-ne v0, v10, :cond_3

    .line 383
    if-nez v8, :cond_6

    const/4 v8, 0x1

    .line 386
    :cond_3
    :goto_2
    if-nez v8, :cond_5

    .line 387
    const/16 v10, 0x64

    if-ne v0, v10, :cond_7

    if-nez v1, :cond_7

    .line 388
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    const/4 v1, 0x1

    .line 390
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v10, v11, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 401
    :cond_4
    :goto_3
    or-int v10, v1, v2

    or-int/2addr v10, v3

    if-eqz v10, :cond_5

    if-nez v4, :cond_5

    .line 402
    move v4, v0

    .line 379
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 383
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 391
    :cond_7
    const/16 v10, 0x4d

    if-eq v0, v10, :cond_8

    const/16 v10, 0x4c

    if-ne v0, v10, :cond_9

    :cond_8
    if-nez v2, :cond_9

    .line 392
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    const/4 v2, 0x1

    .line 394
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v10, v11, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_3

    .line 395
    :cond_9
    const/16 v10, 0x79

    if-ne v0, v10, :cond_4

    if-nez v3, :cond_4

    iget-boolean v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v10, :cond_4

    .line 396
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    const/4 v3, 0x1

    .line 398
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v10, v11, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_3

    .line 408
    .end local v0           #c:C
    :cond_a
    if-nez v2, :cond_b

    .line 409
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    :cond_b
    if-nez v1, :cond_c

    .line 412
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    :cond_c
    if-nez v3, :cond_d

    iget-boolean v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v10, :cond_d

    .line 415
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    :cond_d
    const/16 v10, 0x64

    if-ne v4, v10, :cond_e

    .line 419
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/contacts/datepicker/DatePicker;->setTextWatcher(I)V

    .line 425
    :goto_4
    return-void

    .line 420
    :cond_e
    const/16 v10, 0x4d

    if-ne v4, v10, :cond_f

    .line 421
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/contacts/datepicker/DatePicker;->setTextWatcher(I)V

    goto :goto_4

    .line 423
    :cond_f
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/contacts/datepicker/DatePicker;->setTextWatcher(I)V

    goto :goto_4
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 4
    .parameter "locale"

    .prologue
    .line 736
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    :cond_0
    return-void

    .line 740
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 741
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/android/contacts/datepicker/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 742
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    .line 743
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    .line 744
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    if-ge v0, v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 4
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    const/4 v3, 0x1

    .line 711
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_1

    .line 712
    const v0, 0x2000005

    .line 717
    .local v0, imeOptions:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 718
    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 719
    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 721
    .end local v1           #input:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 714
    .end local v0           #imeOptions:I
    :cond_1
    const v0, 0x2000006

    .restart local v0       #imeOptions:I
    goto :goto_0
.end method

.method private setTextWatcher(I)V
    .locals 7
    .parameter "format"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 769
    packed-switch p1, :pswitch_data_0

    .line 814
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/datepicker/DatePicker$TwKeyListener;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 815
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/datepicker/DatePicker$TwKeyListener;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 816
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/datepicker/DatePicker$TwKeyListener;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 817
    return-void

    .line 771
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 772
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 773
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 775
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 780
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 781
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 785
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 786
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 787
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 789
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 790
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 795
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 799
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 800
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 801
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 803
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 804
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 809
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v4, v3}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/android/contacts/datepicker/DatePicker$TwTextWatcher;-><init>(Lcom/android/contacts/datepicker/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_3

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 307
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 310
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 313
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 316
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 579
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    .line 580
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 581
    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 583
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0}, Lcom/android/contacts/datepicker/DatePicker;->hideSoftInput(Landroid/widget/NumberPicker;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-boolean v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 592
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_3

    .line 593
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 594
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 595
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 599
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 600
    return-void

    :cond_1
    move v0, v2

    .line 581
    goto :goto_0

    :cond_2
    move v1, v2

    .line 586
    goto :goto_1

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_2
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/datepicker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 526
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return v0
.end method

.method public init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 6
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 556
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 557
    return-void
.end method

.method public init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 2
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "yearOptional"
    .parameter "onDateChangedListener"

    .prologue
    const/4 v1, 0x1

    .line 569
    if-eqz p4, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 570
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 571
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 572
    iput-boolean p4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    .line 573
    if-eqz p4, :cond_2

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 574
    iput-object p5, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    .line 575
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 576
    return-void

    :cond_0
    move v0, p1

    .line 569
    goto :goto_0

    .line 573
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isYearOptional()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 537
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    .line 538
    .local v0, ss:Lcom/android/contacts/datepicker/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 539
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 540
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 541
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 542
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->hasYear()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 543
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->isYearOptional()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    .line 544
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 545
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 530
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 532
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iget-boolean v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    iget-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZLcom/android/contacts/datepicker/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 331
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 428
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-eq v0, p3, :cond_2

    .line 429
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result p1

    .end local p1
    :cond_1
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 430
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 431
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 432
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 433
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    .line 436
    :cond_2
    return-void
.end method

.method protected updateDaySpinner()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 603
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 605
    .local v0, cal:Ljava/util/Calendar;
    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 606
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 607
    .local v1, max:I
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 608
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 609
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 610
    return-void

    .line 605
    .end local v1           #max:I
    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0
.end method

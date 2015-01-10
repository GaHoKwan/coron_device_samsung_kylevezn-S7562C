.class public Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;
.super Landroid/app/AlertDialog;
.source "DatePickerDialogWithLunar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;
    }
.end annotation


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mButtonState:I

.field private final mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

.field private final mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private mLastUpdatedYear:I

.field private mSetLunarDivider:Landroid/view/View;

.field private mSetLunarView:Landroid/widget/Button;

.field private mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;IIIZZZ)V
    .locals 7
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "bSetLunar"
    .parameter "bIsLeapMonth"
    .parameter "bIsYearOptional"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 133
    iput-object p3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

    .line 134
    iput p4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 135
    iput p5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 136
    iput p6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 138
    new-instance v3, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    .line 140
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 141
    const v3, 0x7f0d03ec

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    :goto_0
    const/high16 v3, 0x104

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v3}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 147
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 150
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    const/16 v4, 0x834

    if-le v3, v4, :cond_0

    .line 151
    const/16 v3, 0x834

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 152
    const/16 v3, 0xb

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 153
    const/16 v3, 0x1f

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 155
    :cond_0
    iget v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    const/16 v4, 0x76c

    if-ge v3, v4, :cond_1

    .line 156
    const/16 v3, 0x76c

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 157
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 158
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 161
    :cond_1
    const v3, 0x7f040073

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, viewTitle:Landroid/view/View;
    const v3, 0x7f040074

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 165
    const v3, 0x7f0901b8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    .line 166
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v3, p7, p8}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->setLunarCalendar(ZZ)V

    .line 168
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    iget v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    iget v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    iget v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 169
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 171
    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mTitleView:Landroid/widget/TextView;

    .line 172
    iget v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    iget v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    iget v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    .line 174
    const v3, 0x7f0901b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    .line 175
    const v3, 0x7f0900f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarDivider:Landroid/view/View;

    .line 177
    if-eqz p8, :cond_3

    .line 178
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    .line 179
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v4, 0x7f0d0367

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 188
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;-><init>(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 246
    return-void

    .line 143
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #view:Landroid/view/View;
    .end local v2           #viewTitle:Landroid/view/View;
    :cond_2
    const v3, 0x10405b6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 180
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    .restart local v1       #view:Landroid/view/View;
    .restart local v2       #viewTitle:Landroid/view/View;
    :cond_3
    if-eqz p7, :cond_4

    .line 181
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v4, 0x7f0d0368

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 182
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    goto :goto_1

    .line 184
    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    .line 185
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v4, 0x7f0d0369

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;IIIZZZ)V
    .locals 10
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "bSetLunar"
    .parameter "bIsLeapMonth"
    .parameter "bIsYearOptional"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;-><init>(Landroid/content/Context;ILcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;IIIZZZ)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->toSolarDate(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    return-void
.end method

.method private toSolarDate(Z)V
    .locals 8
    .parameter "leap"

    .prologue
    const/16 v3, 0x1f

    const/16 v2, 0xb

    const/16 v1, 0x7f4

    const/4 v4, 0x0

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v5}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v6}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v7}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const-string v5, "so"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    move-object v0, p0

    move v5, v4

    .line 259
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(IIIZZ)V

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(IIIZZ)V

    goto :goto_0
.end method

.method private updateTitle(III)V
    .locals 15
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 359
    move/from16 v9, p1

    .line 360
    .local v9, result_year:I
    move/from16 v7, p2

    .line 361
    .local v7, result_month:I
    move/from16 v8, p3

    .line 362
    .local v8, result_monthDay:I
    const/4 v11, 0x0

    .line 364
    .local v11, weekDay:I
    iget-object v12, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v12}, Lcom/android/contacts/datepicker/DatePicker;->hasYear()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 365
    move/from16 v0, p1

    iput v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mLastUpdatedYear:I

    .line 371
    :goto_0
    iget-object v12, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->isLunarCalendar()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 372
    iget-object v12, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    iget v13, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mLastUpdatedYear:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v14

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v13, v0, v1, v14}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 373
    iget-object v12, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v9

    .line 374
    iget-object v12, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v7

    .line 375
    iget-object v12, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v8

    .line 376
    iget-object v12, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v12, v9, v7, v8}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertSolarToLunar(III)V

    .line 379
    :cond_0
    invoke-static {v9, v7, v8}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getWeekday(III)I

    move-result v11

    .line 380
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 381
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, mWeekDays:[Ljava/lang/String;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, mMonthNames:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v12, ""

    invoke-direct {v4, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 385
    .local v4, mDateString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "date_format"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, dateFormat:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "zh_CN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "zh_HK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 390
    :cond_1
    const-string v3, "%s. %s. %s. "

    .line 392
    .local v3, foramt:Ljava/lang/String;
    if-gtz p1, :cond_3

    .line 393
    const-string v3, "%s. %s. "

    .line 394
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, p2, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    :goto_1
    const-string v12, "("

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    :goto_2
    iget-object v12, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    return-void

    .line 367
    .end local v2           #dateFormat:Ljava/lang/String;
    .end local v3           #foramt:Ljava/lang/String;
    .end local v4           #mDateString:Ljava/lang/StringBuffer;
    .end local v5           #mMonthNames:[Ljava/lang/String;
    .end local v6           #mWeekDays:[Ljava/lang/String;
    .end local v10           #symbols:Ljava/text/DateFormatSymbols;
    :cond_2
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mLastUpdatedYear:I

    goto/16 :goto_0

    .line 396
    .restart local v2       #dateFormat:Ljava/lang/String;
    .restart local v3       #foramt:Ljava/lang/String;
    .restart local v4       #mDateString:Ljava/lang/StringBuffer;
    .restart local v5       #mMonthNames:[Ljava/lang/String;
    .restart local v6       #mWeekDays:[Ljava/lang/String;
    .restart local v10       #symbols:Ljava/text/DateFormatSymbols;
    :cond_3
    const-string v12, "MM-dd-yyyy"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 397
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, p2, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 399
    :cond_4
    const-string v12, "dd-MM-yyyy"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 400
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, p2, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 403
    :cond_5
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, p2, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 408
    .end local v3           #foramt:Ljava/lang/String;
    :cond_6
    const-string v3, "%s %s %s "

    .line 410
    .restart local v3       #foramt:Ljava/lang/String;
    add-int/lit8 v12, v11, 0x1

    aget-object v12, v6, v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    if-gtz p1, :cond_7

    .line 413
    const-string v3, "%s %s "

    .line 414
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, v5, p2

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 416
    :cond_7
    const-string v12, "MM-dd-yyyy"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 417
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, v5, p2

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 419
    :cond_8
    const-string v12, "dd-MM-yyyy"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 420
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aget-object v14, v5, p2

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 423
    :cond_9
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aget-object v14, v5, p2

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method


# virtual methods
.method public isLeapMonth()Z
    .locals 2

    .prologue
    .line 432
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->isLunarCalendar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v5}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v6}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v2

    .line 298
    .local v2, year:I
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v3

    .line 299
    .local v3, month:I
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v4

    .line 306
    .local v4, monthDay:I
    :goto_0
    iput v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 307
    iput v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 308
    iput v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->isLunarCalendar()Z

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;->onDateSet(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;IIIZZ)V

    .line 318
    .end local v2           #year:I
    .end local v3           #month:I
    .end local v4           #monthDay:I
    :cond_1
    :goto_1
    return-void

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    .line 302
    .restart local v2       #year:I
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v3

    .line 303
    .restart local v3       #month:I
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    .restart local v4       #monthDay:I
    goto :goto_0

    .line 314
    .end local v2           #year:I
    .end local v3           #month:I
    .end local v4           #monthDay:I
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method public onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 3
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->isLeapMonth(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v1, 0x7f0d0369

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 479
    iput v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->setLunarCalendar(ZZ)V

    .line 482
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    .line 484
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 464
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 465
    .local v2, year:I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 466
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, day:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 468
    invoke-direct {p0, v2, v1, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    .line 469
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 454
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 455
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string v1, "month"

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v1, "day"

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    return-object v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    iget v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    iget v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    iget v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 278
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 279
    return-void
.end method

.method public updateDate(IIIZZ)V
    .locals 3
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "bSetLunar"
    .parameter "bIsLeapMonth"

    .prologue
    .line 329
    iput p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    .line 330
    iput p2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    .line 331
    iput p3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, newState:I
    if-eqz p5, :cond_4

    .line 334
    const/4 v0, 0x2

    .line 338
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1, p4, p5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->setLunarCalendar(ZZ)V

    .line 339
    if-nez p5, :cond_1

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/datepicker/DatePicker;->updateDate(III)V

    .line 342
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    :cond_2
    iput v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    .line 344
    if-eqz p5, :cond_5

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v2, 0x7f0d0367

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 352
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    .line 353
    return-void

    .line 335
    :cond_4
    if-eqz p4, :cond_0

    .line 336
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :cond_5
    if-eqz p4, :cond_6

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v2, 0x7f0d0368

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 349
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v2, 0x7f0d0369

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

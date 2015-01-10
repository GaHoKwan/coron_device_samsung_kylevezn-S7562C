.class public Lcom/android/mms/ui/MessagePickerDialog;
.super Landroid/app/Dialog;
.source "MessagePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;,
        Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    }
.end annotation


# static fields
.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final NUMBER_PICKER_EDIT_TEXT:Ljava/lang/String; = "inputType=NumberPicker_edittext"

.field public static final PICKER_COMPOSER:I = 0x0

.field public static final PICKER_SETTINGS:I = 0x1

.field public static isWrongRange:Z

.field private static mDisplayValue:I

.field private static mRangeMax:I

.field private static mRangeMin:I


# instance fields
.field private final mButtonKeyListener:Landroid/text/method/KeyListener;

.field private final mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mContext:Landroid/content/Context;

.field private mLocale:Ljava/lang/String;

.field private mNegativeButton:Landroid/widget/Button;

.field private final mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

.field private mPickerType:I

.field private mPositiveButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessagePickerDialog;->isWrongRange:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"
    .parameter "type"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    .line 412
    new-instance v6, Lcom/android/mms/ui/MessagePickerDialog$7;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MessagePickerDialog$7;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    iput-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mButtonKeyListener:Landroid/text/method/KeyListener;

    .line 109
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    .line 110
    iput-object p3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    .line 111
    move/from16 v0, p9

    iput v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    .line 112
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 114
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030055

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 116
    .local v5, view:Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    const v6, 0x7f0e0170

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    .line 120
    if-nez p9, :cond_0

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 122
    .local v4, lc:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mLocale:Ljava/lang/String;

    .line 123
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mLocale:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->LanguageSize(Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, language:I
    const/16 v6, 0xb

    if-ne v3, v6, :cond_3

    .line 125
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x4198

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const v7, 0x3f59999a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 139
    .end local v3           #language:I
    .end local v4           #lc:Ljava/util/Locale;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 140
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 141
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 143
    const v6, 0x7f0e0175

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    .line 144
    const v6, 0x7f0e0174

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    .line 148
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    const v7, 0x7f0a01e7

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    const v7, 0x7f0a006b

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/4 v6, 0x1

    move/from16 v0, p9

    if-ne v0, v6, :cond_1

    .line 154
    const v6, 0x7f0e0172

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    .local v1, content_text:Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .end local v1           #content_text:Landroid/widget/TextView;
    :cond_1
    const v6, 0x7f0e0171

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    iput-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    .line 159
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    const-string v7, "inputType=NumberPicker_edittext"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 160
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    const/high16 v7, 0x200

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 162
    const/4 v6, 0x1

    move/from16 v0, p9

    if-ne v0, v6, :cond_2

    .line 163
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/mms/ui/MessagePickerDialog$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagePickerDialog$1;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    :cond_2
    sput p6, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    .line 174
    sput p5, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    .line 177
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6, p5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 178
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6, p6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 179
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6, p4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 180
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 181
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 182
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 184
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 185
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x7f080007

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 186
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 189
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v6

    new-instance v7, Lcom/android/mms/ui/MessagePickerDialog$2;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagePickerDialog$2;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v6

    new-instance v7, Lcom/android/mms/ui/MessagePickerDialog$3;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagePickerDialog$3;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/mms/ui/MessagePickerDialog$4;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagePickerDialog$4;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 267
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/mms/ui/MessagePickerDialog;->mButtonKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 269
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/mms/ui/MessagePickerDialog$5;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagePickerDialog$5;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/mms/ui/MessagePickerDialog$6;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagePickerDialog$6;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/mms/ui/MessagePickerDialog;->mButtonKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 290
    return-void

    .line 127
    .restart local v3       #language:I
    .restart local v4       #lc:Ljava/util/Locale;
    :cond_3
    const/16 v6, 0xc

    if-eq v3, v6, :cond_4

    const/16 v6, 0x14

    if-ne v3, v6, :cond_5

    .line 128
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x4194

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 129
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const v7, 0x3f4ccccd

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0

    .line 130
    :cond_5
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 131
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x4194

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const v7, 0x3f59999a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0

    .line 134
    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41a0

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 10
    .parameter "context"
    .parameter "numberSetListener"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"
    .parameter "type"

    .prologue
    .line 95
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->setDuration()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method private setDuration()V
    .locals 5

    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, curNum:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 306
    .local v1, currentNum:I
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 309
    :cond_1
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    if-gt v2, v1, :cond_3

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    if-gt v1, v2, :cond_3

    .line 310
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    invoke-interface {v2, v1}, Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;->onNumberSet(I)V

    .line 311
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 316
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearFocus()V

    .line 317
    return-void

    .line 312
    :cond_3
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    if-le v2, v1, :cond_2

    .line 313
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V

    .line 314
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showMaxLimitWarning()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 372
    iget v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    packed-switch v1, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 375
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02f1

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, message:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 379
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0258

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_1

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showMinLimitWarning()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 357
    iget v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    packed-switch v1, :pswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 359
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02f0

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, message:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 362
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0257

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_1

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMNumberPicker()Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 322
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 397
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, number:I
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 399
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 390
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    return-object v0
.end method

.method public setLimitaion(Z)V
    .locals 5
    .parameter "isDismiss"

    .prologue
    .line 326
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, curNum:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 333
    .local v1, currentNum:I
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 339
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    if-le v2, v1, :cond_4

    .line 340
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V

    .line 341
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearFocus()V

    .line 353
    :cond_3
    return-void

    .line 342
    :cond_4
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    if-ge v2, v1, :cond_5

    .line 343
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V

    .line 344
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    :cond_5
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    invoke-interface {v2, v1}, Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;->onNumberSet(I)V

    .line 348
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

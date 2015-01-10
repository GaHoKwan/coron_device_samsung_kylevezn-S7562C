.class public Lcom/android/phone/callsettings/IntCallServicePreference;
.super Landroid/preference/DialogPreference;
.source "IntCallServicePreference.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field mAutoLayout:Landroid/widget/LinearLayout;

.field mAutoRadio:Landroid/widget/CheckedTextView;

.field mContext:Landroid/content/Context;

.field mManualLayout:Landroid/widget/LinearLayout;

.field mManualRadio:Landroid/widget/CheckedTextView;

.field mManualSvcNumber:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/IntCallServicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    new-instance v0, Lcom/android/phone/callsettings/IntCallServicePreference$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$3;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->showKeypad()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/IntCallServicePreference;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private setInitValueAndLayout(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 97
    const v2, 0x7f0901e3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    .line 98
    const v2, 0x7f0901e5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualLayout:Landroid/widget/LinearLayout;

    .line 99
    const v2, 0x7f0901e4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    .line 100
    const v2, 0x7f0901e6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    .line 101
    const v2, 0x7f0901e7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    .line 104
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "int_call_svc_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, value:I
    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    if-lez v1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 109
    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    if-lez v1, :cond_3

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 110
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-lez v1, :cond_4

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "int_call_svc_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 116
    .local v0, len:I
    if-lez v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 121
    .end local v0           #len:I
    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->showKeypad()V

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/IntCallServicePreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$1;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/IntCallServicePreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$2;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void

    :cond_2
    move v2, v4

    .line 108
    goto :goto_0

    :cond_3
    move v2, v3

    .line 109
    goto :goto_1

    :cond_4
    move v4, v3

    .line 110
    goto :goto_2
.end method

.method private showKeypad()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 160
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IntCallServicePreference$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$4;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IntCallServicePreference;->setInitValueAndLayout(Landroid/view/View;)V

    .line 91
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 83
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 173
    const v0, 0x7f0e02d4

    new-instance v1, Lcom/android/phone/callsettings/IntCallServicePreference$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$5;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    return-void
.end method

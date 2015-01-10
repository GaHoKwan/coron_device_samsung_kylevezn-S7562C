.class public Lcom/android/mms/ui/SignaturePreference;
.super Landroid/preference/EditTextPreference;
.source "SignaturePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SignaturePreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditSignature:Landroid/widget/EditText;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mTextSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mContext:Landroid/content/Context;

    .line 31
    iput-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/mms/ui/SignaturePreference;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    .line 44
    new-array v0, v5, [Landroid/text/InputFilter;

    .line 45
    .local v0, FilterArray:[Landroid/text/InputFilter;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    new-instance v2, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;-><init>(Lcom/android/mms/ui/SignaturePreference;I)V

    aput-object v2, v0, v4

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 52
    iget-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    const v3, 0x7f0a04cf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 53
    iget-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    new-instance v3, Landroid/text/method/TextKeyListener;

    sget-object v4, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-direct {v3, v4, v5}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_signature_text"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    .line 62
    return-void

    .line 48
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1
    new-instance v2, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;

    const/16 v3, 0x28

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;-><init>(Lcom/android/mms/ui/SignaturePreference;I)V

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SignaturePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/mms/ui/SignaturePreference;->showToast()V

    return-void
.end method

.method private savePreferences(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 96
    const-string v1, "pref_key_signature_text"

    iget-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    :cond_2
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method private showToast()V
    .locals 3

    .prologue
    const v2, 0x7f0a0378

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    :cond_1
    return-void

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 74
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 75
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SignaturePreference;->savePreferences(I)V

    .line 77
    :cond_0
    if-eqz p1, :cond_1

    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 79
    :cond_1
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 86
    return-void
.end method

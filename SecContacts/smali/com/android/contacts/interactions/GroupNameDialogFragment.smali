.class public abstract Lcom/android/contacts/interactions/GroupNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEdit:Landroid/widget/EditText;

.field private mView:Landroid/view/View;

.field private ok_button:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/GroupNameDialogFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->checkEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->ok_button:Landroid/widget/Button;

    return-object v0
.end method

.method private checkEmpty(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 173
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateOkButtonState(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 194
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 185
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->updateOkButtonState(Landroid/app/AlertDialog;)V

    .line 188
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 198
    return-void
.end method

.method protected abstract getTitleResourceId()I
.end method

.method protected abstract initializeGroupLabelEditText(Landroid/widget/EditText;)V
.end method

.method protected abstract isTitleDuplicated(Ljava/lang/String;)Z
.end method

.method protected abstract onCompleted(Ljava/lang/String;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    iget-object v5, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    iget-object v5, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 160
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0c005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 162
    .local v1, paddingLeft:I
    const v5, 0x7f0c005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 164
    .local v3, paddingTop:I
    const v5, 0x7f0c005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 166
    .local v2, paddingRight:I
    const v5, 0x7f0c005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 168
    .local v0, paddingBottom:I
    iget-object v5, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 171
    .end local v0           #paddingBottom:I
    .end local v1           #paddingLeft:I
    .end local v2           #paddingRight:I
    .end local v3           #paddingTop:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    .line 63
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f040109

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    .line 64
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    const v4, 0x7f090285

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    .line 66
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 67
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->initializeGroupLabelEditText(Landroid/widget/EditText;)V

    .line 69
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 81
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x101006e

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getTitleResourceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 88
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 90
    const v2, 0x104000a

    new-instance v4, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    const/high16 v2, 0x104

    new-instance v4, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 117
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 119
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 121
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->ok_button:Landroid/widget/Button;

    .line 122
    iget-object v4, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->ok_button:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/android/contacts/interactions/GroupNameDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$4;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 145
    return-object v1

    :cond_1
    move v2, v3

    .line 122
    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 149
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->updateOkButtonState(Landroid/app/AlertDialog;)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 152
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 153
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 202
    return-void
.end method

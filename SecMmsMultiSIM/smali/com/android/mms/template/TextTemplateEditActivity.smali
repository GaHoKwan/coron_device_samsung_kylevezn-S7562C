.class public Lcom/android/mms/template/TextTemplateEditActivity;
.super Landroid/app/Activity;
.source "TextTemplateEditActivity.java"


# static fields
.field private static final MAX_TEMPLATE_LENGTH:I = 0xc8

.field private static final MENU_CANCEL:I = 0x1

.field private static final MENU_SAVE:I


# instance fields
.field private mEditor:Landroid/widget/EditText;

.field private mMsgText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private TextTemplateSipHide()V
    .locals 3

    .prologue
    .line 183
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 69
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 73
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 74
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 78
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030097

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 79
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 80
    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/mms/util/LengthFilterWithToast;

    const/16 v6, 0xc8

    invoke-direct {v5, v6}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v5, v2, v8

    .line 83
    .local v2, inputFilters:[Landroid/text/InputFilter;
    const v5, 0x7f0e023f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    .line 84
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 85
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 87
    const-string v5, "android.intent.extra.TEMPLATE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 89
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 94
    :goto_0
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 99
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    const/high16 v6, 0x200

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 100
    return-void

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 104
    const/4 v0, 0x1

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 108
    const v0, 0x7f0a010f

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 227
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 228
    .local v0, mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 230
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 231
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "arg1"

    .prologue
    .line 176
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 170
    :goto_0
    return v1

    .line 143
    :sswitch_0
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const v2, 0x7f0a02e8

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 146
    const/4 v1, 0x0

    goto :goto_0

    .line 148
    :cond_0
    const v2, 0x7f0a02ea

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, result:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEMPLATE"

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 152
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 170
    .end local v0           #result:Landroid/content/Intent;
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 158
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 163
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 192
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 118
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 120
    .local v0, isLandscape:Z
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    if-eqz v0, :cond_1

    .line 124
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020285

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 125
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020286

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 131
    :goto_1
    return v1

    .end local v0           #isLandscape:Z
    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    .line 127
    .restart local v0       #isLandscape:Z
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 128
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 199
    .local v0, im:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 200
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/template/TextTemplateEditActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/template/TextTemplateEditActivity$1;-><init>(Lcom/android/mms/template/TextTemplateEditActivity;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void
.end method

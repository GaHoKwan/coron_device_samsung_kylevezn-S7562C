.class public Lcom/android/contacts/activities/GroupEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# instance fields
.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFragment:Lcom/android/contacts/group/GroupEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

.field private mIsDoneButtonEnable:Z

.field private mIsMultiWindowSupported:Z

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 311
    new-instance v0, Lcom/android/contacts/activities/GroupEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupEditorActivity$1;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/GroupEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/GroupEditorActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mIsDoneButtonEnable:Z

    return p1
.end method

.method private adjustActionBar(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 142
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 143
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 145
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 150
    :cond_2
    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private adjustActionBarMenuText(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 217
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mOrientation:I

    .line 218
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->invalidateOptionsMenu()V

    .line 219
    return-void
.end method

.method private finishWithHidingIME()V
    .locals 3

    .prologue
    .line 363
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 364
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupEditorFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 365
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finish()V

    .line 366
    return-void
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 184
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 190
    .local v0, param:Landroid/view/WindowManager$LayoutParams;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 202
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 198
    :pswitch_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0, v1, v1}, Lcom/android/contacts/group/GroupEditorFragment;->save(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 228
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/GroupEditorActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/GroupEditorActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "GroupInfo"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 81
    .local v2, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EditMode"

    const/16 v6, 0xe

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 83
    .local v3, mode:I
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mIsMultiWindowSupported:Z

    .line 86
    iget-boolean v4, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mIsMultiWindowSupported:Z

    if-eqz v4, :cond_0

    .line 87
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 90
    :cond_0
    const-string v4, "saveCompleted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    const v4, 0x7f0400fe

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/GroupEditorActivity;->setContentView(I)V

    .line 96
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/GroupEditorActivity;->adjustActionBar(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 103
    .local v1, config:Landroid/content/res/Configuration;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    invoke-direct {p0, v1}, Lcom/android/contacts/activities/GroupEditorActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 106
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/contacts/activities/GroupEditorActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f090270

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/group/GroupEditorFragment;

    iput-object v4, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    .line 110
    iget-object v4, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v5, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-virtual {v4, v5}, Lcom/android/contacts/group/GroupEditorFragment;->setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V

    .line 115
    if-nez p1, :cond_1

    .line 119
    iget-object v4, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/contacts/group/GroupEditorFragment;->load(Ljava/lang/String;Lcom/sec/android/app/contacts/group/GroupInfo;I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 157
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 161
    :cond_0
    const-string v0, "GroupEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 253
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 254
    const/4 v1, 0x1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 234
    iget-object v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    if-nez v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, action:Ljava/lang/String;
    const-string v2, "editGroup"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 240
    .local v1, isEditGroup:Z
    const-string v2, "saveCompleted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    const-string v3, "saveMode"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZILandroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v1, v2

    .line 308
    :goto_0
    return v1

    .line 286
    :sswitch_0
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/GroupEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 287
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupEditorFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 288
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->onBackPressed()V

    goto :goto_0

    .line 292
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    if-eqz v3, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupEditorFragment;->onDoneClicked()V

    goto :goto_0

    .line 299
    :sswitch_2
    iget-object v3, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    if-eqz v3, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    goto :goto_0

    .line 284
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_2
        0x7f0903b5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0204d0

    const v4, 0x7f0204cf

    .line 259
    const v2, 0x7f0903b5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 260
    .local v1, doneMenuItem:Landroid/view/MenuItem;
    const v2, 0x7f0903a5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 262
    .local v0, cancelMenuItem:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mIsDoneButtonEnable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 264
    const v2, 0x7f0d0282

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 267
    iget v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 268
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 270
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 272
    :cond_1
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 273
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 275
    :cond_2
    iget v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 276
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 277
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 131
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 134
    :cond_0
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 210
    .local v0, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/GroupEditorActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 211
    return-void
.end method

.class public Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupChangeOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;,
        Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

.field private mIsDoneButtonEnable:Z

.field private mIsMultiWindowSupported:Z

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->updateDoneButtonState(Z)V

    return-void
.end method

.method private adjustActionBar()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 191
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 193
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 197
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const v1, 0x7f0d027f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private adjustActionBarMenuText(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 295
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mOrientation:I

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->invalidateOptionsMenu()V

    .line 297
    return-void
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 1
    .parameter "createContentView"
    .parameter "savedState"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 177
    const v0, 0x7f0400f9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setContentView(I)V

    .line 181
    :cond_0
    return-void
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 262
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 268
    .local v0, param:Landroid/view/WindowManager$LayoutParams;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 280
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 270
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 276
    :pswitch_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupActionListener()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->setActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V

    .line 305
    return-void
.end method

.method private updateDoneButtonState(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mIsDoneButtonEnable:Z

    .line 443
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->invalidateOptionsMenu()V

    .line 444
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 236
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mIsMultiWindowSupported:Z

    .line 131
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mIsMultiWindowSupported:Z

    if-eqz v1, :cond_0

    .line 133
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 139
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0901ba

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->adjustActionBar()V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 159
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 165
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 167
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setupActionListener()V

    .line 169
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 315
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 317
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 319
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 377
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 421
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 381
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 387
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->finish()V

    goto :goto_0

    .line 395
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->onDoneClicked()V

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->finish()V

    goto :goto_0

    .line 409
    :cond_0
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->finish()V

    goto :goto_0

    .line 377
    nop

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

    .line 329
    const v2, 0x7f0903b5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 331
    .local v1, doneMenuItem:Landroid/view/MenuItem;
    const v2, 0x7f0903a5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 335
    .local v0, cancelMenuItem:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mIsDoneButtonEnable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 341
    iget v2, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 343
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 347
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 365
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 351
    :cond_1
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 353
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 357
    :cond_2
    iget v2, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 359
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 361
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 250
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 251
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .parameter "isNormalWindow"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 241
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    return-void
.end method

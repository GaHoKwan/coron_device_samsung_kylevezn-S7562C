.class public Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "DeleteContactsActivity.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mDeco:Landroid/view/View;

.field private mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIsMultiWindowSupported:Z

.field private mIsTablet:Z

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMainView:Landroid/view/View;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mSelectedCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    .line 101
    new-instance v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateSaveButtonStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateActionBarTitle()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Landroid/sec/multiwindow/MultiWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mDeco:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method private configFragmentDeleteMode()V
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->isDeleteContactsInGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 303
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "GroupInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 304
    .local v0, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->EnableDeleteContactInGroupMode(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 308
    .end local v0           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    goto :goto_0
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 2
    .parameter "createContentView"
    .parameter "savedState"

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    const v0, 0x7f040076

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setContentView(I)V

    .line 192
    :cond_0
    const v0, 0x7f0901ba

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setAccountFilterHeaderClickabled(Z)V

    .line 194
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->configFragmentDeleteMode()V

    .line 196
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setTabletLayoutAttribute()V

    .line 199
    :cond_1
    return-void
.end method

.method private getActionBarTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, title:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    if-lez v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03fc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_0
    return-object v0
.end method

.method private setupMultiWindow()V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mDeco:Landroid/view/View;

    .line 133
    const v1, 0x7f0900f7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMainView:Landroid/view/View;

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 136
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private setupTitle()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 185
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private updateActionBarTitle()V
    .locals 3

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getActionBarTitle()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSaveButtonStatus()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMenuDone:Landroid/view/MenuItem;

    iget v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 278
    :cond_0
    return-void

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isDeleteContactsInGroup()Z
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 312
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sec.android.app.contacts.action.CONTACTS_DELETE_IN_GROUP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z

    .line 78
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsMultiWindowSupported:Z

    .line 79
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setupMultiWindow()V

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setupTitle()V

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 237
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 239
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 240
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateSaveButtonStatus()V

    .line 242
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 156
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 161
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 162
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keycode"
    .parameter "event"

    .prologue
    .line 165
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 271
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 257
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->finish()V

    goto :goto_0

    .line 261
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->finish()V

    goto :goto_0

    .line 265
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->requestDeleteContacts()V

    goto :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_1
        0x7f0903b5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 247
    const v0, 0x7f0903b5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 249
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setTabletLayoutAttribute()V

    .line 125
    :cond_0
    return-void
.end method

.method protected setTabletLayoutAttribute()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 202
    const v4, 0x7f090161

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, mainView:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 230
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 231
    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 211
    .local v2, param:Landroid/view/WindowManager$LayoutParams;
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 217
    .local v0, fullPadding:I
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 228
    .end local v0           #fullPadding:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f04006e

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 219
    .end local v2           #param:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x3f00

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 221
    .restart local v2       #param:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .restart local v3       #params:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 226
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

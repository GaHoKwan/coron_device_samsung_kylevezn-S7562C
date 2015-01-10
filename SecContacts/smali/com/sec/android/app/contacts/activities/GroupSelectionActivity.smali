.class public Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupSelectionActivity.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCheckedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButtonStatus:Z

.field private mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

.field private mIsMultiWindowSupported:Z

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mRawContactId:J

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method private buildActionBar()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mDoneButtonStatus:Z

    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0d02a7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateWindowLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 241
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    const v4, 0x7f090286

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, mainView:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 268
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 270
    .end local v1           #mainView:Landroid/view/View;
    :cond_0
    return-void

    .line 248
    .restart local v1       #mainView:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 251
    .local v2, param:Landroid/view/WindowManager$LayoutParams;
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 256
    .local v0, fullPadding:I
    invoke-virtual {v1, v0, v6, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 266
    .end local v0           #fullPadding:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f04006e

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 258
    .end local v2           #param:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x3f00

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 260
    .restart local v2       #param:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 262
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    .restart local v3       #params:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 264
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 100
    instance-of v0, p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .line 103
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    .line 158
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateWindowLayout()V

    .line 134
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateActionBar()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.RAWCONTACT_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    .line 76
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 79
    const-string v2, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    .line 82
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mIsMultiWindowSupported:Z

    .line 85
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 86
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 89
    :cond_0
    const v2, 0x7f04010b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f090287

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .line 93
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->buildActionBar()V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 163
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0d0282

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 166
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 109
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-nez v6, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, action:Ljava/lang/String;
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, strTitle:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 116
    .local v4, groupUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 118
    .local v2, extras:Landroid/os/Bundle;
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 120
    .local v3, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 122
    .local v0, Titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    .line 124
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 208
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 182
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    goto :goto_0

    .line 186
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    goto :goto_0

    .line 190
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.RAWCONTACT_ID"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 192
    .local v1, isEditMode:Z
    if-eqz v1, :cond_0

    .line 193
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getSelecedGroupId()Ljava/util/ArrayList;

    move-result-object v2

    .line 194
    .local v2, selectedGroupIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getSelectedGroupTitle()Ljava/util/ArrayList;

    move-result-object v3

    .line 195
    .local v3, selectedGroupTitleArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "rawContactId"

    iget-wide v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    const-string v5, "selectedGroupId"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 198
    const-string v5, "selectedGroupTitle"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 199
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #selectedGroupIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3           #selectedGroupTitleArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateGroup()V

    goto :goto_1

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_1
        0x7f0903b5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 153
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mDoneButtonStatus:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateWindowLayout()V

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateActionBar()V

    .line 148
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateWindowLayout()V

    .line 141
    :cond_0
    return-void
.end method

.method public setDoneButtonStatus(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mDoneButtonStatus:Z

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->invalidateOptionsMenu()V

    .line 275
    return-void
.end method

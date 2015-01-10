.class public Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "FavoriteInterfaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionCode:I

.field private mDoneButtonClickable:Z

.field protected mFavoritesPickerLayout:Landroid/view/View;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsMultiWindowSupported:Z

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSelectedCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    .line 451
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->updateActionBarTitle()V

    return-void
.end method

.method private getActionBarTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 489
    .local v0, title:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    if-lez v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03fc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 494
    :cond_0
    return-object v0
.end method

.method private setUpActionBar()V
    .locals 4

    .prologue
    .line 302
    const v3, 0x7f0900ed

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, homeIcon:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 304
    new-instance v3, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v3, 0x7f0900f3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 312
    .local v2, saveMenuItem:Landroid/view/View;
    new-instance v3, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    const v3, 0x7f0900ef

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 323
    .local v1, revertMenuItem:Landroid/view/View;
    new-instance v3, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    return-void
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 219
    :goto_0
    return-void

    .line 199
    :cond_0
    const v1, 0x7f09025d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mFavoritesPickerLayout:Landroid/view/View;

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 201
    .local v0, param:Landroid/view/WindowManager$LayoutParams;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 217
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 203
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 211
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 213
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateActionBarTitle()V
    .locals 3

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBarTitle()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 476
    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v2, 0x15e

    if-ne v1, v2, :cond_3

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0d002e

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 479
    :cond_3
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v2, 0x15f

    if-ne v1, v2, :cond_0

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0d002f

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method public configureListFragment()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    iget v4, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 282
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    .line 237
    iget v4, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    packed-switch v4, :pswitch_data_0

    .line 280
    :goto_1
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    .line 281
    .local v0, fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f090161

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 239
    .end local v0           #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    :pswitch_0
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    .line 240
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 241
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 242
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 243
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    .line 247
    new-instance v2, Lcom/android/contacts/list/ContactListFilter;

    const/16 v4, -0xd

    invoke-direct {v2, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 250
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto :goto_1

    .line 255
    .end local v0           #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    :pswitch_1
    const-string v4, "kylevexx"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "kyleveub"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "logan2gxx"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v1, v3

    .line 257
    .local v1, isLowRamModel:Z
    :goto_2
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    .line 258
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 259
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 262
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 268
    :goto_3
    if-eqz v1, :cond_4

    .line 269
    new-instance v4, Lcom/android/contacts/list/ContactListFilter;

    const/4 v5, -0x4

    invoke-direct {v4, v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 274
    :goto_4
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    .line 275
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto/16 :goto_1

    .end local v0           #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    .end local v1           #isLowRamModel:Z
    :cond_2
    move v1, v2

    .line 255
    goto :goto_2

    .line 264
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    .restart local v1       #isLowRamModel:Z
    :cond_3
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 265
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    goto :goto_3

    .line 272
    :cond_4
    new-instance v4, Lcom/android/contacts/list/ContactListFilter;

    const/16 v5, -0xe

    invoke-direct {v4, v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_4

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x15e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 85
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setupActionListener()V

    .line 89
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->invalidateOptionsMenu()V

    .line 293
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    .line 294
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 298
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0d002f

    const v6, 0x7f0d002e

    const/16 v5, 0x15f

    const/16 v4, 0x15e

    const/16 v3, 0xe

    .line 94
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string v1, "actionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    .line 98
    const-string v1, "mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMode:I

    .line 99
    const-string v1, "mSelectedCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    .line 103
    :cond_0
    const v1, 0x7f110011

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setTheme(I)V

    .line 107
    new-instance v1, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 112
    const v1, 0x7f0400f1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setContentView(I)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    .line 120
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIsMultiWindowSupported:Z

    .line 122
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIsMultiWindowSupported:Z

    if-eqz v1, :cond_1

    .line 123
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->configureListFragment()V

    .line 127
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 129
    .local v0, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 133
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_6

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 138
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_4

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    :cond_3
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    .line 169
    return-void

    .line 141
    :cond_4
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    if-ne v1, v4, :cond_5

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 143
    :cond_5
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    if-ne v1, v5, :cond_3

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 148
    :cond_6
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setUpActionBar()V

    .line 151
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_7

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_7
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    if-ne v1, v4, :cond_8

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_8

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 159
    :cond_8
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    if-ne v1, v5, :cond_3

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 372
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 373
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 375
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 386
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 403
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 388
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->finish()V

    move v0, v1

    .line 389
    goto :goto_0

    .line 391
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->finish()V

    move v0, v1

    .line 392
    goto :goto_0

    .line 394
    :sswitch_2
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v2, 0x15e

    if-ne v0, v2, :cond_1

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->runAddFavoriteListThread()V

    :cond_0
    :goto_1
    move v0, v1

    .line 399
    goto :goto_0

    .line 396
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v2, 0x15f

    if-ne v0, v2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->runDeleteFavoriteListThread()V

    goto :goto_1

    .line 386
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
    .line 380
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v0, "mode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v0, "mSelectedCount"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 501
    :cond_0
    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 443
    :cond_0
    :goto_1
    return-void

    .line 432
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 436
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const v1, 0x7f0900f3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, buttonView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 439
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setonFavoritesActionBarUpdateListener(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;)V

    .line 449
    :cond_0
    return-void
.end method

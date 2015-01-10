.class public Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactMultiSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionCode:I

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupsToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAutoAdd:Z

.field private mIsDoneButtonEnable:Z

.field private mIsMultiWindowSupported:Z

.field private mIsSearchMode:Z

.field protected mListFragment:Landroid/app/Fragment;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mQueryString:Ljava/lang/String;

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    .line 230
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateDoneButtonState(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateActionBarTitleInTwoPaneMode()V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method private adjustActionBar()V
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 340
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 342
    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 347
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getActivityTitleRes()I

    move-result v1

    .line 349
    .local v1, titleRes:I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    .end local v1           #titleRes:I
    :cond_0
    :goto_0
    return-void

    .line 355
    .restart local v1       #titleRes:I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private adjustActionBarMenuText(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 765
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mOrientation:I

    .line 766
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->invalidateOptionsMenu()V

    .line 767
    return-void
.end method

.method private finishWithHidingIME()V
    .locals 3

    .prologue
    .line 1008
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1010
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1012
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    .line 1014
    return-void
.end method

.method private getActivityTitleRes()I
    .locals 3

    .prologue
    .line 421
    const/4 v0, -0x1

    .line 425
    .local v0, stringRes:I
    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 431
    const v0, 0x7f0d0278

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 435
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 437
    const v0, 0x7f0d0279

    goto :goto_0

    .line 443
    :cond_2
    const-string v1, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    const v0, 0x7f0d0319

    goto :goto_0

    .line 447
    :cond_3
    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    const v0, 0x7f0d0272

    goto :goto_0

    .line 453
    :cond_4
    const v0, 0x7f0d0099

    goto :goto_0
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    .line 469
    const-string v0, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    const-string v0, "EditMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    .line 473
    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 477
    const-string v0, "AutoAdd"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    .line 481
    const-string v0, "ModifiedIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 483
    const-string v0, "ExceptedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string v0, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "SelectedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 732
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 738
    .local v0, param:Landroid/view/WindowManager$LayoutParams;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 750
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 740
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 741
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 746
    :pswitch_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateActionBarTitleInTwoPaneMode()V
    .locals 8

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 975
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 977
    iget v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    if-lez v3, :cond_1

    .line 979
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03fc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 995
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getActivityTitleRes()I

    move-result v2

    .line 989
    .local v2, titleRes:I
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDoneButtonState(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 1000
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsDoneButtonEnable:Z

    .line 1001
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->invalidateOptionsMenu()V

    .line 1002
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 505
    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;-><init>()V

    .line 509
    .local v0, fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setMode(I)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 515
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setAutoAdd(Z)V

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    if-nez v1, :cond_0

    .line 521
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setModifiedMemberIds(Ljava/util/List;)V

    .line 527
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setExceptedAccounts(Ljava/util/List;)V

    .line 529
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 533
    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSelectAllVisible(Z)V

    .line 537
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSearchMode(Z)V

    .line 539
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 541
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    .line 567
    .end local v0           #fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090161

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 571
    return-void

    .restart local v0       #fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    :cond_2
    move v1, v2

    .line 533
    goto :goto_0

    .line 543
    .end local v0           #fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    :cond_3
    const-string v1, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 545
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;-><init>()V

    .line 547
    .local v0, fragment:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 549
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    .line 551
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->setGroupsToDelete(Ljava/util/ArrayList;)V

    .line 553
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_1

    .line 555
    .end local v0           #fragment:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
    :cond_5
    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    new-instance v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;-><init>()V

    .line 559
    .local v0, fragment:Lcom/sec/android/app/contacts/group/AccountPickerFragment;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setSelectedAccounts(Ljava/util/List;)V

    .line 561
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 238
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_1

    .line 240
    check-cast p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    .line 252
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setupActionListener()V

    .line 254
    return-void

    .line 242
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_2

    .line 244
    check-cast p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0

    .line 246
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_0

    .line 248
    check-cast p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 709
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 713
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 719
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 721
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 266
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsMultiWindowSupported:Z

    .line 272
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 274
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 282
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    .line 284
    if-eqz p1, :cond_2

    .line 286
    const-string v2, "actionCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    .line 288
    const-string v2, "selectedCount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    .line 290
    const-string v2, "extraSelctedItem"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    .line 292
    const-string v2, "isSearchMode"

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    .line 294
    const-string v2, "queryString"

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    if-nez v2, :cond_1

    .line 298
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 302
    :cond_1
    const-string v2, "KEY_MODIFIED_IDS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 306
    :cond_2
    const v2, 0x7f04010a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setContentView(I)V

    .line 308
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->adjustActionBar()V

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 320
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 326
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 328
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->configureListFragment()V

    .line 330
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 579
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 581
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 583
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 585
    const/4 v1, 0x1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 369
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-nez v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, action:Ljava/lang/String;
    const-string v1, "deleteCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->onDeleteCompleted()V

    .line 389
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 649
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 691
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 653
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finishWithHidingIME()V

    move v0, v1

    .line 655
    goto :goto_0

    .line 661
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;->onDoneClicked()V

    :cond_0
    move v0, v1

    .line 667
    goto :goto_0

    .line 673
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;->onRevertAction()V

    .line 677
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finishWithHidingIME()V

    :cond_1
    move v0, v1

    .line 681
    goto :goto_0

    .line 649
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

    .line 595
    const v2, 0x7f0903b5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 597
    .local v1, doneMenuItem:Landroid/view/MenuItem;
    const v2, 0x7f0903a5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 601
    .local v0, cancelMenuItem:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsDoneButtonEnable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 605
    const-string v2, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    const v2, 0x7f0d0037

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 613
    :cond_0
    iget v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 615
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 617
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 619
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 637
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 623
    :cond_2
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 625
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 629
    :cond_3
    iget v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 631
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 633
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 401
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 403
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    const-string v0, "selectedCount"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    const-string v0, "extraSelctedItem"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 409
    const-string v0, "isSearchMode"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    const-string v0, "queryString"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "KEY_MODIFIED_IDS"

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 415
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .parameter "isNormalWindow"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1022
    .local v0, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 1024
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;)V

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->setActionBarUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;)V

    goto :goto_0

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setAccountPickerActionListener(Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;)V

    goto :goto_0
.end method

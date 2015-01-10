.class public Lcom/android/contacts/activities/ContactEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;
.implements Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# static fields
.field private static mSimInfoChanged:Z


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarTabHost:Landroid/view/View;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private mFinishActivityOnSaveCompleted:Z

.field private mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mIsMultiWindowSupported:Z

.field public mIsRecreatedInstance:Z

.field private mIsSaveServiceCalled:Z

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuSave:Landroid/view/MenuItem;

.field private mRedirectToPeopleActivity:Z

.field private mSaveButtonVisibility:Z

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/ContactEditorActivity;->mSimInfoChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 123
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 129
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsSaveServiceCalled:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsRecreatedInstance:Z

    .line 658
    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mRedirectToPeopleActivity:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    return-object v0
.end method

.method private buildActionBar()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 389
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    .line 391
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 397
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040174

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTabHost:Landroid/view/View;

    .line 402
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 407
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z

    goto :goto_0
.end method

.method private buildTabHost()V
    .locals 2

    .prologue
    const v1, 0x7f090146

    .line 412
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTabHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTabHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    .line 420
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 422
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 424
    :cond_1
    return-void

    .line 417
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    goto :goto_0
.end method

.method public static getSimInfoChanged()Z
    .locals 1

    .prologue
    .line 945
    sget-boolean v0, Lcom/android/contacts/activities/ContactEditorActivity;->mSimInfoChanged:Z

    return v0
.end method

.method public static setSimInfoChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 949
    const-string v0, "ContactEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIconChanged flag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    sput-boolean p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSimInfoChanged:Z

    .line 951
    return-void
.end method

.method private updateActionBar()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 428
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTabHost:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 435
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTabHost:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 449
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v0

    if-nez v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTabHost:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1

    .line 452
    :cond_3
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0d0024

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 455
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0d0023

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateWindowLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 501
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    const v4, 0x7f0900f7

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 504
    .local v1, mainView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 506
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 534
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 536
    .end local v1           #mainView:Landroid/view/View;
    :cond_0
    return-void

    .line 508
    .restart local v1       #mainView:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 510
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 511
    .local v2, param:Landroid/view/WindowManager$LayoutParams;
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 512
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 513
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 514
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 521
    .local v0, fullPadding:I
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 532
    .end local v0           #fullPadding:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f04006e

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 524
    .end local v2           #param:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x3f00

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 525
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 526
    .restart local v2       #param:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 528
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 529
    .restart local v3       #params:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 530
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 772
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public getIsSaveServiceCalled()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsSaveServiceCalled:Z

    return v0
.end method

.method public onAccountAdded(Ljava/lang/String;)V
    .locals 6
    .parameter "displayLabel"

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d014b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 795
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 798
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 799
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 800
    .local v0, tabCount:I
    if-lez v0, :cond_2

    .line 801
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 803
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 804
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 805
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 806
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 808
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setDividerPadding(I)V

    .line 809
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 810
    .local v2, widgetlinear:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020350

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 813
    .end local v0           #tabCount:I
    .end local v1           #text:Landroid/widget/TextView;
    .end local v2           #widgetlinear:Landroid/widget/LinearLayout;
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 916
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 917
    const-string v0, "ContactEditorActivity"

    const-string v1, "onActivityResult : resultCode fail!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 922
    :pswitch_0
    const-string v0, "rawContactId"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 923
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 925
    const-string v0, "selectedGroupId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 927
    const-string v4, "selectedGroupTitle"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 928
    const-string v4, "ContactEditorActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult : edit rawContactId ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v4, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 933
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v4, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/RawContactEditorView;

    invoke-virtual {v2, v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 920
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 465
    instance-of v0, p1, Lcom/android/contacts/editor/ContactEditorFragment;

    if-eqz v0, :cond_0

    .line 466
    check-cast p1, Lcom/android/contacts/editor/ContactEditorFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 468
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 648
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnablePromptToExitAndSaveInEditing"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertActionMenu()Z

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 471
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 473
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_3

    .line 476
    :cond_0
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_1

    .line 477
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 478
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->getAggregationSuggestionPopup()Landroid/widget/ListPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 482
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->getAggregationSuggestionPopup()Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 485
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateWindowLayout()V

    .line 486
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateActionBar()V

    .line 487
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 489
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 490
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 492
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 494
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 498
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedState"

    .prologue
    .line 135
    invoke-super/range {p0 .. p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 137
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, action:Ljava/lang/String;
    const-string v14, "ContactEditorActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "action = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mAction:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 142
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsMultiWindowSupported:Z

    .line 145
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsMultiWindowSupported:Z

    if-eqz v14, :cond_0

    .line 146
    invoke-static/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 152
    :cond_0
    const-string v14, "finishActivityOnSaveCompleted"

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    .line 157
    const-string v14, "fromPeopleActivity"

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mRedirectToPeopleActivity:Z

    .line 159
    const-string v14, "newLocalProfile"

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 164
    .local v10, isProfile:Z
    const-string v14, "joinCompleted"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 367
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v14, "saveCompleted"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    goto :goto_0

    .line 174
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v11

    .line 178
    .local v11, mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;
    invoke-virtual {v11}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v6

    .line 179
    .local v6, defaultAccount:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v14, "android.intent.action.INSERT"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v6, :cond_9

    const-string v14, "vnd.sec.contact.sim"

    iget-object v15, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "vnd.sec.contact.sim2"

    iget-object v15, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "primary.sim.account_name"

    iget-object v15, v6, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "primary.sim2.account_name"

    iget-object v15, v6, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 187
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 189
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 190
    .local v7, extras:Landroid/os/Bundle;
    if-eqz v7, :cond_5

    .line 191
    const-string v14, "email"

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 192
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 195
    .local v3, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 196
    .local v1, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v14, "vnd.sec.contact.phone"

    iget-object v15, v1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 198
    invoke-virtual {v11, v1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 200
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v2, account_intent:Landroid/content/Intent;
    const-string v14, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 202
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 210
    .end local v1           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2           #account_intent:Landroid/content/Intent;
    .end local v3           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v12

    .line 212
    .local v12, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v14

    if-nez v14, :cond_6

    .line 213
    :cond_6
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 214
    .restart local v7       #extras:Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 215
    .local v5, autoAddToICEGroup:Z
    if-eqz v7, :cond_7

    .line 216
    const-string v14, "is_ice_group"

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    .line 219
    :cond_7
    if-eqz v5, :cond_a

    .line 220
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 221
    .restart local v3       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 222
    .restart local v1       #account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v14, "vnd.sec.contact.phone"

    iget-object v15, v1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 223
    invoke-virtual {v11, v1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 224
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 225
    .restart local v2       #account_intent:Landroid/content/Intent;
    const-string v14, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 357
    .end local v1           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2           #account_intent:Landroid/content/Intent;
    .end local v3           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v5           #autoAddToICEGroup:Z
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_9
    :goto_1
    const v14, 0x7f04004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/ContactEditorActivity;->setContentView(I)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v14

    const v15, 0x7f090147

    invoke-virtual {v14, v15}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-virtual {v14, v15}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    .line 362
    const-string v14, "android.intent.action.EDIT"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 363
    .local v13, uri:Landroid/net/Uri;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v14, v4, v13, v15}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->buildActionBar()V

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->buildTabHost()V

    goto/16 :goto_0

    .line 231
    .end local v13           #uri:Landroid/net/Uri;
    .restart local v5       #autoAddToICEGroup:Z
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v12       #phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_a
    iget-object v14, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 232
    iget-object v14, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v14, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 234
    :cond_b
    const-string v14, "ContactEditorActivity"

    const-string v15, "ACTION_INSERT : isSimDBReady or isSimEnabled is false!!!!!"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const v14, 0x7f0d0416

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/contacts/activities/ContactEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 246
    :cond_c
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 247
    .restart local v3       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 248
    .restart local v1       #account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v14, "vnd.sec.contact.phone"

    iget-object v15, v1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 249
    invoke-virtual {v11, v1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 250
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 251
    .restart local v2       #account_intent:Landroid/content/Intent;
    const-string v14, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 239
    .end local v1           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2           #account_intent:Landroid/content/Intent;
    .end local v3           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_e
    const-string v14, "ContactEditorActivity"

    const-string v15, "ACTION_INSERT : isSimFull!!!!!"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-nez v10, :cond_c

    .line 241
    const v14, 0x7f0d0415

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/contacts/activities/ContactEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 362
    .end local v5           #autoAddToICEGroup:Z
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v12           #phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 639
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 643
    :goto_0
    return-object v0

    .line 642
    :cond_0
    const-string v0, "ContactEditorActivity"

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

    .line 643
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0d0282

    const/4 v6, 0x0

    .line 838
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 839
    .local v2, inflater:Landroid/view/MenuInflater;
    const v4, 0x7f12000b

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 840
    const v4, 0x7f0903b5

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    .line 841
    const v4, 0x7f0903a5

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 843
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 844
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v5, 0x7f0d0053

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 846
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getShowIconWithTextOnActionBar()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040005

    invoke-virtual {v4, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 850
    .local v3, saveContainer:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040004

    invoke-virtual {v4, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 853
    .local v0, cancelContainer:Landroid/view/ViewGroup;
    const v4, 0x7f090023

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 854
    .local v1, iconText:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 858
    :cond_0
    new-instance v4, Lcom/android/contacts/activities/ContactEditorActivity$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/ContactEditorActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    new-instance v4, Lcom/android/contacts/activities/ContactEditorActivity$3;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/ContactEditorActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 872
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 875
    .end local v0           #cancelContainer:Landroid/view/ViewGroup;
    .end local v1           #iconText:Landroid/widget/TextView;
    .end local v3           #saveContainer:Landroid/view/ViewGroup;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 383
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    .line 386
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 617
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 619
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-nez v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 626
    :cond_2
    const-string v1, "saveCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 627
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactEditorActivity;->setIsSaveServiceCalled(Z)V

    .line 628
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x1

    const-string v3, "saveMode"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "saveSucceeded"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    goto :goto_0

    .line 632
    :cond_3
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->onJoinCompleted(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 890
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 911
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 892
    :sswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnablePromptToExitAndSaveInEditing"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertActionMenu()Z

    goto :goto_0

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0

    .line 903
    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertActionMenu()Z

    goto :goto_0

    .line 906
    :sswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction()V

    goto :goto_0

    .line 890
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
    .line 881
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMenuSave:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 884
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    .line 540
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 541
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v8

    if-nez v8, :cond_0

    .line 545
    :cond_0
    invoke-static {}, Lcom/android/contacts/activities/ContactEditorActivity;->getSimInfoChanged()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 547
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 548
    .local v4, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    .line 570
    .local v7, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v8, "vnd.sec.contact.sim"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v5

    .line 571
    .local v5, iconRes:I
    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getSim1AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 572
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {v4, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 574
    .local v2, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v2, v5}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    .line 575
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const-string v9, "vnd.sec.contact.sim"

    invoke-virtual {v8, v2, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->setAccountInfo(Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 578
    .end local v2           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_1
    const-string v8, "vnd.sec.contact.sim2"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v6

    .line 579
    .local v6, iconRes2:I
    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getSim2AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    .line 580
    .local v1, account2:Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v1, :cond_2

    .line 581
    invoke-virtual {v4, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v3

    .line 582
    .local v3, accountType2:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v3, v6}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    .line 583
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const-string v9, "vnd.sec.contact.sim2"

    invoke-virtual {v8, v3, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->setAccountInfo(Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 603
    .end local v3           #accountType2:Lcom/android/contacts/model/AccountType;
    :cond_2
    sget-object v8, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    if-eqz v8, :cond_3

    .line 604
    sget-object v8, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 605
    const/4 v8, 0x0

    sput-object v8, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    .line 608
    :cond_3
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/contacts/activities/ContactEditorActivity;->setSimInfoChanged(Z)V

    .line 611
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1           #account2:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v4           #accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    .end local v5           #iconRes:I
    .end local v6           #iconRes2:I
    .end local v7           #phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateWindowLayout()V

    .line 612
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateActionBar()V

    .line 613
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "tabId"

    .prologue
    .line 778
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 779
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 783
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 786
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->changeView(I)V

    .line 787
    const-string v1, "ContactEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTabHost.getCurrentTab() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateWindowLayout()V

    .line 372
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->updateActionBar()V

    .line 374
    :cond_0
    return-void
.end method

.method public removeAllTab()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 820
    :cond_0
    return-void
.end method

.method public setIsSaveServiceCalled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 954
    iput-boolean p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mIsSaveServiceCalled:Z

    .line 955
    return-void
.end method

.method public setSaveButtonVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 833
    iput-boolean p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z

    .line 834
    return-void
.end method

.method public tabVisibity(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 824
    const v3, 0x7f090145

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 825
    .local v0, tab_layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    .line 826
    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 830
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 826
    goto :goto_0

    .line 827
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v3, :cond_0

    .line 828
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

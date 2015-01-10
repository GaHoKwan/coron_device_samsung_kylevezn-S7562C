.class public Lcom/android/contacts/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;,
        Lcom/android/contacts/activities/ActionBarAdapter$TabState;,
        Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static mTalkBackEnable:Z


# instance fields
.field private isSetupTabs:Z

.field private isUpdateTabPosition:Z

.field private mALL:I

.field private final mActionBar:Landroid/app/ActionBar;

.field private mActionBarNavigationMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentOrientationmode:I

.field private mCurrentTab:I

.field private mCustomDeleteView:Landroid/view/View;

.field private mCustomSearchView:Landroid/view/View;

.field private mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

.field private mDIALER:I

.field private mDeleteMode:Z

.field private mFAVORITES:I

.field private mGROUPS:I

.field private mHasFocusSearchView:Z

.field private mIsEasyMode:Z

.field private mIsMultiWindow:Z

.field private mIsPhone:Z

.field private mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

.field private mNeedToStopSearch:Z

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mQueryString:Ljava/lang/String;

.field private mRestoreFromDeleteMode:Z

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowHomeIcon:Z

.field private mShowTabsAsText:Z

.field private mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

.field private mYELLOWPAGE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/ActionBarAdapter;->mTalkBackEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;ZZ)V
    .locals 8
    .parameter "context"
    .parameter "listener"
    .parameter "actionBar"
    .parameter "isUsingTwoPanes"
    .parameter "isMultiWindow"

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z

    .line 185
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    .line 216
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 317
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    .line 318
    iput-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 319
    iput-object p3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 320
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 321
    iput-boolean p5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsMultiWindow:Z

    .line 323
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    .line 326
    iput-boolean p4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    .line 328
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    .line 331
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 332
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    .line 341
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    .line 342
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 343
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    .line 344
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 346
    const-string v3, ""

    const-string v4, "CHINA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mYELLOWPAGE:I

    .line 350
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v3, :cond_6

    .line 351
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 352
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    .line 353
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    .line 354
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 355
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 368
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentOrientationmode:I

    .line 370
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    .line 372
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 374
    .local v2, searchViewWidth:I
    if-nez v2, :cond_2

    .line 375
    const/4 v2, -0x1

    .line 377
    :cond_2
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    .line 378
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    const v4, 0x7f090169

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 388
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 389
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0d01df

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 391
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 392
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 393
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 399
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, v3, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x3e8

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 402
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, v3, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 403
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 406
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04002e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    .line 408
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0900f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 409
    .local v1, saveMenuItem:Landroid/view/View;
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ActionBarAdapter$1;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0900ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, revertMenuItem:Landroid/view/View;
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ActionBarAdapter$2;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentOrientationmode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 424
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0900f0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0900f4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0900f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0900f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0900f2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0900f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0900f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d0319

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 440
    const-string v3, "alwasy_tab_mode_tablet"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 441
    if-eqz p4, :cond_7

    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentOrientationmode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsMultiWindow:Z

    if-eqz v3, :cond_7

    .line 443
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 444
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 445
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    .line 464
    :goto_2
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 476
    :goto_3
    return-void

    .line 337
    .end local v0           #revertMenuItem:Landroid/view/View;
    .end local v1           #saveMenuItem:Landroid/view/View;
    .end local v2           #searchViewWidth:I
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    goto/16 :goto_0

    .line 357
    :cond_6
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-nez v3, :cond_1

    .line 358
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    .line 359
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 360
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    .line 361
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 363
    const-string v3, ""

    const-string v4, "CHINA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mYELLOWPAGE:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mYELLOWPAGE:I

    goto/16 :goto_1

    .line 447
    .restart local v0       #revertMenuItem:Landroid/view/View;
    .restart local v1       #saveMenuItem:Landroid/view/View;
    .restart local v2       #searchViewWidth:I
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 448
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 449
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    goto :goto_2

    .line 453
    :cond_8
    if-eqz p4, :cond_9

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsMultiWindow:Z

    if-eqz v3, :cond_9

    .line 455
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 456
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 457
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    goto :goto_2

    .line 459
    :cond_9
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 460
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 461
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    goto :goto_2

    .line 466
    :pswitch_0
    const-string v3, "alwasy_tab_mode_tablet"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-eqz v3, :cond_b

    .line 467
    :cond_a
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setEmbeddedTabs()V

    .line 468
    :cond_b
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupTabs()V

    .line 469
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    goto :goto_3

    .line 472
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupNavigationList()V

    .line 473
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    goto/16 :goto_3

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ActionBarAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/ActionBarAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/contacts/activities/ActionBarAdapter;->mTalkBackEnable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->sendAccessibilityEvent()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ActionBarAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/contacts/activities/ActionBarAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ActionBarAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ActionBarAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ActionBarAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addTab(IIII)V
    .locals 6
    .parameter "expectedTabIndex"
    .parameter "icon"
    .parameter "text"
    .parameter "contentDescription"

    .prologue
    const v5, 0x7f090021

    const v3, 0x7f040002

    const/4 v4, 0x0

    .line 624
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 625
    .local v1, tab:Landroid/app/ActionBar$Tab;
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 627
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-eqz v2, :cond_1

    .line 629
    const-string v2, "alwasy_tab_mode_tablet"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, customTab:Landroid/view/View;
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 635
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 644
    :goto_1
    invoke-virtual {v1, p4}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 645
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 646
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 648
    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    if-eq p1, v2, :cond_2

    .line 649
    const-string v2, "ActionBarAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expectedTabIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v2, "ActionBarAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tab.getPosition() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Tabs must be created in the right order"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    .end local v0           #customTab:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040003

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #customTab:Landroid/view/View;
    goto :goto_0

    .line 638
    .end local v0           #customTab:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 640
    .restart local v0       #customTab:Landroid/view/View;
    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 641
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 642
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_1

    .line 653
    :cond_2
    return-void
.end method

.method private getNavigationItemPositionFromTabPosition(I)I
    .locals 4
    .parameter "tabPos"

    .prologue
    const/4 v0, 0x4

    .line 556
    packed-switch p1, :pswitch_data_0

    .line 568
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inclusive."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :pswitch_0
    const/4 v0, 0x0

    .line 566
    :goto_0
    :pswitch_1
    return v0

    .line 560
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 562
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 564
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private getTabPositionFromNavigationItemPosition(I)I
    .locals 4
    .parameter "navItemPos"

    .prologue
    const/4 v0, 0x4

    .line 535
    packed-switch p1, :pswitch_data_0

    .line 547
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inclusive."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :pswitch_0
    const/4 v0, 0x0

    .line 545
    :goto_0
    :pswitch_1
    return v0

    .line 539
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 541
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 543
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private loadLastTabPreference()I
    .locals 5

    .prologue
    .line 1218
    :try_start_0
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 1220
    .local v0, defaultTab:I
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v2, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "actionBarAdapter.lastTab"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1222
    const/4 v0, 0x0

    .line 1224
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "actionBarAdapter.lastTab"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1227
    .end local v0           #defaultTab:I
    :goto_0
    return v2

    .line 1225
    :catch_0
    move-exception v1

    .line 1227
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private sendAccessibilityEvent()V
    .locals 7

    .prologue
    const v6, 0x7f0d023a

    const v5, 0x7f0d0084

    const v4, 0x7f0d0083

    .line 1246
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-nez v2, :cond_3

    .line 1247
    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    if-ne v2, v3, :cond_0

    .line 1248
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1282
    .local v0, descriptionString:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1285
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1286
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1287
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 1288
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 1289
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1290
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1292
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1293
    return-void

    .line 1249
    .end local v0           #descriptionString:Ljava/lang/String;
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    if-ne v2, v3, :cond_1

    .line 1250
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 1251
    .end local v0           #descriptionString:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    if-ne v2, v3, :cond_2

    .line 1252
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 1254
    .end local v0           #descriptionString:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 1256
    .end local v0           #descriptionString:Ljava/lang/String;
    :cond_3
    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    packed-switch v2, :pswitch_data_0

    .line 1277
    const-string v0, ""

    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 1259
    .end local v0           #descriptionString:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 1263
    .end local v0           #descriptionString:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 1267
    .end local v0           #descriptionString:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .restart local v0       #descriptionString:Ljava/lang/String;
    goto :goto_0

    .line 1271
    .end local v0           #descriptionString:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1272
    .restart local v0       #descriptionString:Ljava/lang/String;
    goto/16 :goto_0

    .line 1274
    .end local v0           #descriptionString:Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0442

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1275
    .restart local v0       #descriptionString:Ljava/lang/String;
    goto/16 :goto_0

    .line 1256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setupNavigationList()V
    .locals 5

    .prologue
    const v4, 0x7f0d023a

    const v3, 0x7f0d0083

    .line 506
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Landroid/content/Context;I)V

    .line 509
    .local v0, navAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 511
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 512
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 526
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 518
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 519
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 522
    const-string v1, ""

    const-string v2, "CHINA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0442

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto :goto_0
.end method

.method private setupTabs()V
    .locals 9

    .prologue
    const v8, 0x7f0d0238

    const v7, 0x7f0d013d

    const v6, 0x7f0d0083

    const v5, 0x7f020562

    const v4, 0x7f02055d

    .line 482
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_1

    .line 483
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    const v1, 0x7f0d023a

    invoke-direct {p0, v0, v4, v8, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    .line 484
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    invoke-direct {p0, v0, v5, v7, v6}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-eqz v0, :cond_2

    .line 490
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    const v1, 0x7f020561

    const v2, 0x7f0d0014

    const v3, 0x7f0d0085

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    .line 493
    :cond_2
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    invoke-direct {p0, v0, v5, v7, v6}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    .line 496
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    const v1, 0x7f020565

    const v2, 0x7f0d0317

    const v3, 0x7f0d0084

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    .line 498
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    const v1, 0x7f0d023a

    invoke-direct {p0, v0, v4, v8, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    .line 500
    const-string v0, ""

    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mYELLOWPAGE:I

    const v1, 0x7f020567

    const v2, 0x7f0d0443

    const v3, 0x7f0d0442

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    goto :goto_0
.end method

.method private update()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1014
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->isIconified()Z

    move-result v5

    iget-boolean v8, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-ne v5, v8, :cond_5

    move v2, v6

    .line 1015
    .local v2, isIconifiedChanging:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v5, :cond_6

    .line 1017
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-nez v5, :cond_0

    .line 1019
    :try_start_0
    const-string v5, "com.android.internal.R$id"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "home"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1022
    .local v4, titleContainerId:I
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1024
    .local v1, homeIconView:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c00a5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 1026
    .local v3, sizeOfIcon:I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1027
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    .end local v1           #homeIconView:Landroid/widget/ImageView;
    .end local v3           #sizeOfIcon:I
    .end local v4           #titleContainerId:I
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 1041
    if-eqz v2, :cond_1

    .line 1042
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 1044
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1045
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1047
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v5, :cond_3

    .line 1048
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v5, v6}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 1054
    :cond_3
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mHasFocusSearchView:Z

    if-eqz v5, :cond_4

    .line 1055
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 1056
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    new-instance v6, Lcom/android/contacts/activities/ActionBarAdapter$3;

    invoke-direct {v6, p0}, Lcom/android/contacts/activities/ActionBarAdapter$3;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1131
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions()V

    .line 1132
    return-void

    .end local v2           #isIconifiedChanging:Z
    :cond_5
    move v2, v7

    .line 1014
    goto/16 :goto_0

    .line 1065
    .restart local v2       #isIconifiedChanging:Z
    :cond_6
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v5, :cond_7

    .line 1066
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v5

    if-eqz v5, :cond_4

    .line 1068
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_2

    .line 1071
    :cond_7
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    .line 1072
    .local v0, currentNavigationMode:I
    iget v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    if-ne v5, v9, :cond_e

    if-eq v0, v9, :cond_e

    .line 1087
    const-string v5, "alwasy_tab_mode_tablet"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-eqz v5, :cond_9

    .line 1088
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setEmbeddedTabs()V

    .line 1089
    :cond_9
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v6, v5, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 1090
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1092
    const-string v5, ""

    const-string v6, "CHINA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1093
    iget v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a

    .line 1094
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 1095
    const-string v5, "ActionBarAdapter"

    const-string v6, "=====for protection, change currentTab as All. "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_a
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1100
    const-string v5, "DEFAULT"

    const-string v6, "PHONE_WHITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1101
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setTabTextSelectedStyle()V

    .line 1102
    :cond_b
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v7, v5, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 1112
    :cond_c
    :goto_3
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v10}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1116
    if-eqz v2, :cond_d

    .line 1117
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 1120
    :cond_d
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mRestoreFromDeleteMode:Z

    if-eqz v5, :cond_f

    .line 1121
    iput-boolean v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mRestoreFromDeleteMode:Z

    goto/16 :goto_2

    .line 1103
    :cond_e
    iget v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    if-ne v5, v6, :cond_c

    if-eq v0, v6, :cond_c

    .line 1105
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    iput-boolean v6, v5, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    .line 1106
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1107
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v6}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1109
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    iput-boolean v7, v5, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    goto :goto_3

    .line 1125
    :cond_f
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNeedToStopSearch:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v5, :cond_4

    .line 1126
    iput-boolean v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNeedToStopSearch:Z

    .line 1127
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v5, v9}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 1128
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v5}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    goto/16 :goto_2

    .line 1029
    .end local v0           #currentNavigationMode:I
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method private updateDisplayOptions()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 955
    const/16 v0, 0x1e

    .line 960
    .local v0, MASK:I
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x1e

    .line 963
    .local v1, current:I
    const/4 v2, 0x0

    .line 964
    .local v2, newFlags:I
    or-int/lit8 v2, v2, 0x8

    .line 965
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    if-eqz v3, :cond_0

    .line 966
    or-int/lit8 v2, v2, 0x2

    .line 968
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v3, :cond_2

    .line 969
    :cond_1
    or-int/lit8 v2, v2, 0x2

    .line 970
    or-int/lit8 v2, v2, 0x4

    .line 971
    or-int/lit8 v2, v2, 0x10

    .line 973
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const v4, 0x7f0205e5

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 974
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v3, :cond_6

    :cond_3
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 976
    if-eq v1, v2, :cond_4

    .line 982
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 986
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1e

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 988
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_7

    .line 989
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1009
    :cond_4
    :goto_1
    const-string v3, "DEFAULT"

    const-string v4, "PHONE_WHITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1010
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setTabTextSelectedStyle()V

    .line 1011
    :cond_5
    return-void

    .line 974
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 990
    :cond_7
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v3, :cond_4

    .line 992
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const v4, 0x7f0d0031

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 995
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 996
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x13

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1

    .line 1001
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method public checkTalkBackEnable()V
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/activities/ActionBarAdapter;->mTalkBackEnable:Z

    .line 1240
    return-void
.end method

.method public clearFocusOnSearchView()V
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1202
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-nez v0, :cond_0

    .line 869
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    add-int/lit8 v0, v0, 0x1

    .line 871
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    goto :goto_0
.end method

.method public getDeleteDoneActionBarMenuItem()Landroid/view/View;
    .locals 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v1, 0x7f0900f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabState(I)I
    .locals 1
    .parameter "tabState"

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_0

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 230
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 253
    :goto_0
    return p1

    .line 224
    :pswitch_0
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 225
    goto :goto_0

    .line 227
    :pswitch_1
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 228
    goto :goto_0

    .line 234
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 236
    :pswitch_2
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    .line 237
    goto :goto_0

    .line 239
    :pswitch_3
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 240
    goto :goto_0

    .line 242
    :pswitch_4
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    .line 243
    goto :goto_0

    .line 245
    :pswitch_5
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 246
    goto :goto_0

    .line 248
    :pswitch_6
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mYELLOWPAGE:I

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 234
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTabStateLength()I
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x5

    .line 260
    .local v0, length:I
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v1, :cond_1

    .line 261
    const/4 v0, 0x2

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-nez v1, :cond_2

    .line 264
    add-int/lit8 v0, v0, -0x1

    .line 267
    :cond_2
    const-string v1, ""

    const-string v2, "CHINA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public hideActionbar()V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1332
    return-void
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 4
    .parameter "savedState"
    .parameter "request"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 574
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 575
    iput-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    .line 584
    :goto_0
    if-nez p1, :cond_3

    .line 585
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 586
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 587
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 589
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mHasFocusSearchView:Z

    .line 603
    :goto_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_0

    .line 604
    iput v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 614
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 617
    :cond_1
    return-void

    .line 580
    :cond_2
    iput-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    goto :goto_0

    .line 591
    :cond_3
    const-string v0, "navBar.searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 592
    const-string v0, "navBar.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 594
    const-string v0, "navBar.deleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    .line 598
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 599
    const-string v0, "hasFocusSearchView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mHasFocusSearchView:Z

    goto :goto_1
.end method

.method public isActionBarModeTab()Z
    .locals 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1358
    const/4 v0, 0x1

    .line 1360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    return v0
.end method

.method public isMultiWindow()Z
    .locals 1

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsMultiWindow:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public isShowingActionbar()Z
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isUpShowing()Z
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1175
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1176
    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .parameter "queryString"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1142
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    :goto_0
    return v0

    .line 1145
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 1146
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v2, :cond_2

    .line 1147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    :cond_1
    :goto_1
    move v0, v1

    .line 1154
    goto :goto_0

    .line 1150
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v2, :cond_1

    .line 1151
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v2, v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter "query"

    .prologue
    .line 1162
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 1163
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1165
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1166
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1168
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 1170
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1180
    const-string v1, "navBar.searchMode"

    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1181
    const-string v1, "navBar.query"

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v1, "navBar.selectedTab"

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1184
    const-string v1, "navBar.deleteMode"

    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1185
    const/4 v0, 0x0

    .line 1186
    .local v0, hasSearchViewFocus:Z
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    .line 1189
    :cond_0
    const-string v1, "hasFocusSearchView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1190
    return-void
.end method

.method public restoreLastSelectedTab()V
    .locals 1

    .prologue
    .line 1297
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 1298
    return-void
.end method

.method protected saveLastTabPreference(I)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actionBarAdapter.lastTab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1214
    return-void
.end method

.method public setCurrentTab()V
    .locals 2

    .prologue
    .line 856
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    if-eq v0, v1, :cond_0

    .line 858
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_1

    .line 859
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    .line 864
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 865
    return-void

    .line 861
    :cond_1
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 804
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 805
    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 3
    .parameter "tab"
    .parameter "notifyListener"

    .prologue
    .line 812
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v1, :cond_5

    .line 813
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 814
    const/4 p1, 0x0

    .line 821
    :cond_0
    iput p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 824
    const-string v1, "DEFAULT"

    const-string v2, "PHONE_WHITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setTabTextSelectedStyle()V

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 829
    .local v0, actionBarSelectedNavIndex:I
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 843
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_3

    .line 844
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    .line 847
    :cond_3
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    if-eq p1, v1, :cond_4

    .line 848
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    .line 850
    .end local v0           #actionBarSelectedNavIndex:I
    :cond_4
    :goto_1
    return-void

    .line 817
    :cond_5
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 831
    .restart local v0       #actionBarSelectedNavIndex:I
    :pswitch_0
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-eq v1, v0, :cond_2

    .line 832
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 836
    :pswitch_1
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 837
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 829
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eq v0, p1, :cond_1

    .line 924
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    .line 925
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-nez v0, :cond_0

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mRestoreFromDeleteMode:Z

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 930
    :cond_1
    return-void
.end method

.method public setEmbeddedTabs()V
    .locals 6

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 1345
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setHasEmbeddedTabs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1346
    if-eqz v1, :cond_0

    .line 1347
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1348
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1353
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1352
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1351
    :catch_2
    move-exception v0

    goto :goto_0

    .line 1350
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1206
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x2000003

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 1210
    return-void
.end method

.method public setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 621
    return-void
.end method

.method public setMultiWindow(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 933
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsMultiWindow:Z

    .line 934
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 945
    :cond_0
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eq v0, p1, :cond_4

    .line 898
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 902
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v0, :cond_0

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNeedToStopSearch:Z

    .line 906
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 907
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_2

    .line 920
    :cond_1
    :goto_0
    return-void

    .line 910
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_3

    .line 911
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0

    .line 913
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 915
    :cond_4
    if-eqz p1, :cond_1

    .line 917
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 918
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0
.end method

.method public setTabTextSelectedStyle()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 722
    iget-boolean v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-nez v7, :cond_1

    .line 723
    const/high16 v1, 0x3f40

    .line 724
    .local v1, focusedRadius:F
    const v3, 0x3f333333

    .line 730
    .local v3, normalOpacity:F
    iget-object v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 732
    .local v4, resource:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabStateLength()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 733
    iget-object v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    .line 734
    .local v5, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 735
    .local v0, customView:Landroid/view/View;
    const v7, 0x7f090021

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 737
    .local v6, textView:Landroid/widget/TextView;
    iget v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-ne v2, v7, :cond_0

    .line 738
    const v7, 0x7f0b0052

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v1, v9, v9, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 740
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 732
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    :cond_0
    const v7, 0x7f0b0060

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v8, v8, v8, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 743
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 747
    .end local v0           #customView:Landroid/view/View;
    .end local v1           #focusedRadius:F
    .end local v2           #i:I
    .end local v3           #normalOpacity:F
    .end local v4           #resource:Landroid/content/res/Resources;
    .end local v5           #tab:Landroid/app/ActionBar$Tab;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public shouldShowSearchResult()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showActionbar()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1336
    return-void
.end method

.method public updateActionBarMode(I)V
    .locals 4
    .parameter "navigationMode"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1301
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentOrientationmode:I

    if-ne v0, v3, :cond_0

    .line 1302
    packed-switch p1, :pswitch_data_0

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1304
    :pswitch_0
    iput v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 1305
    iput-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 1306
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    .line 1307
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1308
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupNavigationList()V

    .line 1309
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 1313
    :pswitch_1
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-eqz v0, :cond_2

    .line 1314
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setEmbeddedTabs()V

    .line 1315
    :cond_2
    iput-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z

    .line 1316
    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 1317
    iput-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    .line 1318
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 1319
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1320
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    if-nez v0, :cond_3

    .line 1321
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupTabs()V

    .line 1322
    iput-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    .line 1324
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 1302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

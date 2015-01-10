.class public Lcom/android/contacts/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;,
        Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;",
        "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeaderContainer:Landroid/view/View;

.field private mAccountFilterHeaderView:Landroid/widget/TextView;

.field private mActionCode:I

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mIsRecreatedInstance:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private mLoaderStarted:Z

.field private mPaddingView:Landroid/view/View;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShortcutAction:Ljava/lang/String;

.field private mSoftInputMode:I

.field private nUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 98
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    .line 102
    const/16 v0, 0xaa

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mActionCode:I

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    .line 127
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 134
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 137
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSweepActionEnabled(Z)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    .line 147
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/PhoneNumberPickerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 744
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    if-eqz p1, :cond_3

    .line 752
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mIsRecreatedInstance:Z

    if-nez v0, :cond_2

    .line 753
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    .line 761
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSoftInputMode()V

    .line 763
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 766
    if-eqz p1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 756
    :cond_2
    const/16 v0, 0x31

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    goto :goto_1

    .line 759
    :cond_3
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 763
    goto :goto_2

    :cond_5
    move v2, v1

    .line 764
    goto :goto_3
.end method

.method private showNoMatchesView(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 676
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 677
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 677
    goto :goto_0

    :cond_3
    move v2, v1

    .line 678
    goto :goto_1

    .line 679
    :cond_4
    if-nez p1, :cond_1

    .line 680
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateFilterHeaderView()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 343
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 345
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 346
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    :goto_0
    return-void

    .line 352
    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_1
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 353
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d007f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 358
    :cond_2
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    .line 359
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d007c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 480
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 482
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 483
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 460
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 462
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 463
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 464
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    .line 465
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setPhoneNumbersOnly(Z)V

    .line 474
    .end local v0           #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :goto_0
    return-object v0

    .line 471
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 472
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 473
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;
    .locals 2
    .parameter "contactDatas"

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 330
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 332
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 495
    const v2, 0x7f04005a

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 496
    .local v1, view:Landroid/view/View;
    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 497
    const v2, 0x7f090169

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 498
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7, v4}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 507
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v8, v6, v8, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 508
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 509
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 510
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 511
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 512
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0d01df

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 551
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 552
    .local v0, actionCode:I
    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 553
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 569
    :cond_1
    return-object v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 374
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 375
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 155
    sget-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mIsRecreatedInstance:Z

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 162
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09016d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    .line 165
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09016c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 171
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, headerContainer:Landroid/widget/FrameLayout;
    const v2, 0x7f04014c

    invoke-virtual {p1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, SearchHeaderView:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 176
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 4
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "checked"
    .parameter "uri"

    .prologue
    .line 190
    const-wide/16 v0, 0x0

    .line 192
    .local v0, dataId:J
    :try_start_0
    iget-object v2, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 195
    :goto_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    .line 197
    return-void

    .line 193
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDetach()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 381
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 7
    .parameter "position"
    .parameter "id"

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 427
    .local v2, partition:I
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 429
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v2

    .line 436
    :goto_0
    if-nez v3, :cond_1

    .line 448
    :goto_1
    return-void

    .line 431
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 432
    .restart local v3       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPartitionForPosition(I)I

    move-result v2

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUri(Landroid/net/Uri;)V

    .line 443
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 444
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->dismissAllowingStateLoss()V

    .line 446
    :cond_2
    new-instance v1, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    .line 447
    .local v1, dataQueryTask:Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 575
    iget-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEnabled:Z

    if-nez v3, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 580
    .local v0, loaderId:I
    if-ne v0, v4, :cond_4

    .line 581
    iput v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    .line 582
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 583
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startLoading()V

    .line 626
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 627
    if-nez v0, :cond_3

    .line 628
    if-eqz p2, :cond_a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 630
    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    .line 634
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    if-nez v3, :cond_b

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 587
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 588
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 591
    invoke-direct {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->configureEmptyView(Z)V

    .line 593
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 594
    if-nez v0, :cond_5

    .line 596
    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_1

    .line 598
    :cond_5
    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    goto :goto_1

    .line 602
    :cond_6
    if-nez v0, :cond_7

    .line 603
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_1

    .line 606
    :cond_7
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    goto :goto_1

    .line 611
    :cond_8
    iput v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    .line 612
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 615
    iget-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v3, :cond_2

    .line 616
    iget v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    if-ne v3, v1, :cond_9

    .line 617
    iput v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    .line 618
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startFullQuery()V

    goto :goto_1

    .line 619
    :cond_9
    iget v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 620
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 632
    :cond_a
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_b
    move v1, v2

    .line 634
    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 404
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 405
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    .line 409
    :cond_0
    const/4 v1, 0x1

    .line 411
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 182
    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 707
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "cursor"
    .parameter "partition"
    .parameter "uri"
    .parameter "flag"

    .prologue
    const/4 v7, 0x0

    .line 315
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    .line 318
    .local v0, contactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 319
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 320
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 398
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 399
    const-string v0, "shortcutAction"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .parameter "uri"
    .parameter "shortcutIntent"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 702
    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 687
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1, p1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 692
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 695
    .local v0, builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 387
    if-nez p1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 392
    const-string v0, "shortcutAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 720
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 727
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    if-eqz v0, :cond_4

    .line 728
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->reloadData()V

    .line 730
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    goto :goto_0
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 151
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 339
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 340
    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0
    .parameter "shortcutAction"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 736
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->nUri:Landroid/net/Uri;

    .line 209
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 8
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 641
    if-nez p2, :cond_0

    .line 642
    sget-object v4, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 650
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez v0, :cond_1

    .line 672
    :goto_1
    return-void

    .line 644
    .end local v0           #adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 645
    .local v1, count:I
    sget-object v4, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ready to display : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 655
    .end local v1           #count:I
    .restart local v0       #adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 657
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->showNoMatchesView(Z)V

    goto :goto_1

    .line 659
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09030b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 660
    .local v3, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09014c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 662
    .local v2, progress:Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->showNoMatchesView(Z)V

    .line 663
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 664
    const v4, 0x7f0d01b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 665
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 667
    :cond_4
    const v4, 0x7f0d0302

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 668
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 669
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    .line 453
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 454
    return-void
.end method

.class public Lcom/android/contacts/list/PostalAddressPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PostalAddressPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setQuickContactEnabled(Z)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 67
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setDirectorySearchMode(I)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/PostalAddressPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 294
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 300
    if-eqz p1, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 307
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 307
    goto :goto_2

    :cond_5
    move v2, v1

    .line 308
    goto :goto_3
.end method

.method private pickPostalAddress(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnPostalAddressPickerActionListener;->onPickPostalAddressAction(Landroid/net/Uri;)V

    .line 291
    return-void
.end method

.method private showNoMatchesView(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 283
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 284
    goto :goto_0

    :cond_3
    move v2, v1

    .line 285
    goto :goto_1
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    new-instance v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 91
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setDisplayPhotos(Z)V

    .line 92
    const-string v1, "PostalAddressPickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "member4 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getCount()I

    move-result v3

    add-int/lit16 v3, v3, -0x3039

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0           #adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    :goto_0
    return-object v0

    .line 95
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, adapter:Lcom/android/contacts/list/LegacyPostalAddressListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 98
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    const v1, 0x7f04005a

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, view:Landroid/view/View;
    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 121
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 122
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 131
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v7, v5, v7, v5}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 132
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 134
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 136
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0d01df

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/contacts/list/PostalAddressPickerFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/PostalAddressPickerFragment$1;-><init>(Lcom/android/contacts/list/PostalAddressPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 174
    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 112
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    .line 79
    .local v0, adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PostalAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    .line 84
    .end local v0           #adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    .line 82
    .local v0, adapter:Lcom/android/contacts/list/LegacyPostalAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->getContactMethodUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    goto :goto_0
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

    .line 180
    iget-boolean v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEnabled:Z

    if-nez v3, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 185
    .local v0, loaderId:I
    if-ne v0, v4, :cond_4

    .line 186
    iput v5, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    .line 187
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->startLoading()V

    .line 231
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    if-nez v0, :cond_3

    .line 233
    if-eqz p2, :cond_a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 235
    iput-boolean v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    .line 239
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    if-nez v3, :cond_b

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 196
    invoke-direct {p0, v2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->configureEmptyView(Z)V

    .line 198
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 199
    if-nez v0, :cond_5

    .line 201
    iput-boolean v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_1

    .line 203
    :cond_5
    iput-boolean v1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_1

    .line 207
    :cond_6
    if-nez v0, :cond_7

    .line 208
    iput-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_1

    .line 211
    :cond_7
    iput-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_1

    .line 216
    :cond_8
    iput v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    .line 217
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 220
    iget-boolean v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v3, :cond_2

    .line 221
    iget v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    if-ne v3, v1, :cond_9

    .line 222
    iput v5, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    .line 223
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->startFullQuery()V

    goto :goto_1

    .line 224
    :cond_9
    iget v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 225
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 237
    :cond_a
    iput-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_b
    move v1, v2

    .line 239
    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    .line 73
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 8
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 246
    if-nez p2, :cond_0

    .line 247
    const-string v4, "PostalAddressPickerFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    .line 255
    .local v0, adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    if-nez v0, :cond_1

    .line 278
    :goto_1
    return-void

    .line 249
    .end local v0           #adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 250
    .local v1, count:I
    const-string v4, "PostalAddressPickerFragment"

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

    .line 260
    .end local v1           #count:I
    .restart local v0       #adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/list/PostalAddressListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 262
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/contacts/list/PostalAddressPickerFragment;->showNoMatchesView(Z)V

    goto :goto_1

    .line 264
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09030b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 265
    .local v3, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09014c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 267
    .local v2, progress:Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/list/PostalAddressPickerFragment;->showNoMatchesView(Z)V

    .line 269
    invoke-virtual {v0}, Lcom/android/contacts/list/PostalAddressListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    const v4, 0x7f0d01b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 271
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 273
    :cond_4
    const v4, 0x7f0d0302

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 274
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 275
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

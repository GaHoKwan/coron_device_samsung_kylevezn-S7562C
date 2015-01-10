.class public Lcom/android/contacts/list/ContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# instance fields
.field private OnlyPhoneNumberProjection:Z

.field public mAttachPhotoMode:Z

.field private mCreateContactEnabled:Z

.field private mEditMode:Z

.field public mEmailMode:Z

.field private mEmptyView:Landroid/view/View;

.field private mFinishActivityonCreateComplete:Z

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field public mRingtoneMode:Z

.field private mSearchNoMatchesView:Landroid/view/View;

.field protected mSearchView:Landroid/widget/SearchView;

.field private mShortcutRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setQuickContactEnabled(Z)V

    .line 102
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setSweepActionEnabled(Z)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setFinishActivityonCreateComplete(Z)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 110
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 259
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 265
    if-eqz p1, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 273
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 273
    goto :goto_2

    :cond_5
    move v2, v1

    .line 274
    goto :goto_3
.end method

.method private showNoMatchesView(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 477
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 478
    goto :goto_0

    :cond_3
    move v2, v1

    .line 479
    goto :goto_1
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 356
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 358
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 359
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isCreateContactEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 363
    return-void

    .line 362
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 299
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 300
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 301
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    .line 303
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setPhoneNumbersOnly(Z)V

    .line 305
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setRingToneMode(Z)V

    .line 306
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setAttachPhotoMode(Z)V

    .line 312
    .end local v0           #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :goto_0
    return-object v0

    .line 309
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 311
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public createNewContact()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onCreateNewContactAction(Z)V

    .line 283
    return-void
.end method

.method public editContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onEditContactAction(Landroid/net/Uri;)V

    .line 287
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 486
    const v3, 0x7f04005a

    invoke-virtual {p1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 487
    .local v2, view:Landroid/view/View;
    const v3, 0x7f090168

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 488
    const v3, 0x7f090169

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 489
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v8, v5}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, v3, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v4, v8, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x3e8

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 498
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, v3, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v9, v7, v9, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 499
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v8}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 500
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 501
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 502
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0d01df

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/ContactPickerFragment$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactPickerFragment$2;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 541
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 542
    .local v0, actionCode:I
    const/16 v3, 0x64

    if-ne v0, v3, :cond_1

    .line 543
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 558
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 583
    :cond_2
    :goto_0
    return-object v2

    .line 560
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 566
    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getHideCreateLabel()Z

    move-result v3

    if-nez v3, :cond_2

    .line 570
    const v3, 0x7f09016a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 571
    .local v1, newButton:Landroid/widget/ImageButton;
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 572
    new-instance v3, Lcom/android/contacts/list/ContactPickerFragment$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/ContactPickerFragment$3;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 558
    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public isCreateContactEnabled()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    const-string v4, "ContactPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateLoader(id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 321
    new-instance v2, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 322
    .local v2, loader:Lcom/android/contacts/list/DirectoryListLoader;
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    .line 350
    .end local v2           #loader:Lcom/android/contacts/list/DirectoryListLoader;
    :cond_0
    :goto_0
    return-object v2

    .line 326
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    new-instance v2, Lcom/android/contacts/list/ProfileAndContactsLoader;

    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    .line 331
    .local v2, loader:Landroid/content/CursorLoader;
    :goto_1
    if-eqz p2, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 334
    .local v0, directoryId:J
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 337
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_0

    .line 338
    iget v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-nez v4, :cond_0

    .line 339
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    const-string v4, "ContactPickerFragment"

    const-string v5, "onCreateLoader(), set fake mode"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    .line 343
    invoke-virtual {v2}, Landroid/content/CursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, sortOrder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 30"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual {v2, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    .end local v0           #directoryId:J
    .end local v2           #loader:Landroid/content/CursorLoader;
    .end local v3           #sortOrder:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v2

    .restart local v2       #loader:Landroid/content/CursorLoader;
    goto :goto_1

    .line 331
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    .line 182
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    .line 185
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 195
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 197
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/android/contacts/list/ContactPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactPickerFragment$1;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 7
    .parameter "position"
    .parameter "id"

    .prologue
    const v6, 0x7f0d003a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 223
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 230
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    if-nez v2, :cond_2

    .line 256
    :cond_0
    :goto_1
    return-void

    .line 226
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 232
    :cond_2
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    :cond_3
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz v3, :cond_7

    .line 236
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmailMode:Z

    if-ne v3, v4, :cond_6

    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->isSimContact(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 239
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/contacts/list/ContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 240
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->isSim2Contact(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 244
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/contacts/list/ContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 246
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_1

    .line 249
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_1

    .line 250
    :cond_7
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz v3, :cond_8

    .line 251
    new-instance v1, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 252
    .local v1, builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 254
    .end local v1           #builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->pickContact(Landroid/net/Uri;)V

    goto/16 :goto_1
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 217
    return-void
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

    .line 368
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEnabled:Z

    if-nez v3, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 373
    .local v0, loaderId:I
    if-ne v0, v4, :cond_4

    .line 374
    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 375
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startLoading()V

    .line 419
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 420
    if-nez v0, :cond_3

    .line 421
    if-eqz p2, :cond_a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 423
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    .line 427
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    if-nez v3, :cond_b

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 384
    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    .line 386
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 387
    if-nez v0, :cond_5

    .line 389
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_1

    .line 391
    :cond_5
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    goto :goto_1

    .line 395
    :cond_6
    if-nez v0, :cond_7

    .line 396
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_1

    .line 399
    :cond_7
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    goto :goto_1

    .line 404
    :cond_8
    iput v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 405
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 408
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v3, :cond_2

    .line 409
    iget v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-ne v3, v1, :cond_9

    .line 410
    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    .line 411
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startFullQuery()V

    goto :goto_1

    .line 412
    :cond_9
    iget v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 413
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 425
    :cond_a
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_b
    move v1, v2

    .line 427
    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 618
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "editMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    const-string v0, "createContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    const-string v0, "shortcutRequested"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    const-string v0, "onlyphonnumberprojection"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    const-string v0, "photomode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    const-string v0, "ringtonemode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v0, "finishActivityCreatedComplete"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .parameter "uri"
    .parameter "shortcutIntent"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnContactPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 613
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 291
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 165
    if-nez p1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "editMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 170
    const-string v0, "createContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    .line 171
    const-string v0, "shortcutRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    .line 172
    const-string v0, "onlyphonnumberprojection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    .line 173
    const-string v0, "photomode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    .line 174
    const-string v0, "ringtonemode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    .line 175
    const-string v0, "finishActivityCreatedComplete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    goto :goto_0
.end method

.method public setAttachPhotoMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    .line 626
    return-void
.end method

.method public setCreateContactEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    .line 122
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 130
    return-void
.end method

.method public setEmailMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmailMode:Z

    .line 630
    return-void
.end method

.method public setFinishActivityonCreateComplete(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    .line 142
    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    .line 114
    return-void
.end method

.method public setOnlyPhoneNumberProjection(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    .line 147
    return-void
.end method

.method public setRingToneMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 621
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    .line 622
    return-void
.end method

.method public setShortcutRequested(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    .line 138
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 8
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 434
    if-nez p2, :cond_0

    .line 435
    const-string v4, "ContactPickerFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/list/LegacyContactListAdapter;

    if-eqz v4, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    .line 449
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    :goto_1
    if-nez v0, :cond_2

    .line 472
    :goto_2
    return-void

    .line 437
    .end local v0           #adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 438
    .local v1, count:I
    const-string v4, "ContactPickerFragment"

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

    .line 446
    .end local v1           #count:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .restart local v0       #adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    goto :goto_1

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 456
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/contacts/list/ContactPickerFragment;->showNoMatchesView(Z)V

    goto :goto_2

    .line 458
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09030b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 459
    .local v3, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09014c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 461
    .local v2, progress:Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->showNoMatchesView(Z)V

    .line 463
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 464
    const v4, 0x7f0d01b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 465
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 467
    :cond_5
    const v4, 0x7f0d0302

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 468
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 469
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

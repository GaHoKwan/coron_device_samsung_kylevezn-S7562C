.class public Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "SIMContactPickerFragment.java"


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
.field private mActionCode:I

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFrameContainer:Landroid/widget/FrameLayout;

.field private mHeaderView:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

.field private mNoMatchView:Landroid/view/View;

.field private mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private selectAllAtFirstLoad:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    .line 92
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setQuickContactEnabled(Z)V

    .line 95
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    .line 99
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllChecked(Z)V

    return-void
.end method

.method private addContactFromSelectAll(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_0
    return-void
.end method

.method private addSelectedContact(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v0, "SIMContactPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSelectedContact : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is added in array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 349
    return-void
.end method

.method private isSelectedContact(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshSelectAllState()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/16 v8, 0x136

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 399
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v3, 0x0

    .local v3, position:I
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 400
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 401
    .local v1, id:J
    cmp-long v4, v1, v9

    if-nez v4, :cond_1

    .line 399
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KDDI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    if-ne v4, v8, :cond_3

    cmp-long v4, v1, v9

    if-lez v4, :cond_3

    .line 408
    const-wide/16 v4, 0x1

    sub-long/2addr v1, v4

    .line 409
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 410
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 425
    .end local v1           #id:J
    :goto_1
    return-void

    .line 415
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KDDI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    if-ne v4, v8, :cond_7

    .line 418
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 419
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 421
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 424
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private removeContact(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 341
    const-string v0, "SIMContactPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContact : id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is removed in array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 343
    return-void
.end method

.method private removeContactFromSelectAll(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 394
    :cond_0
    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 352
    if-nez p1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onAllDataDeleted()V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    if-lez p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onOneDataInputed()V

    goto :goto_0
.end method

.method private setSelectAllChecked(Z)V
    .locals 5
    .parameter "isChecked"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 370
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v3, 0x0

    .local v3, position:I
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 371
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 370
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 376
    .local v1, id:J
    if-nez p1, :cond_1

    .line 377
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->addContactFromSelectAll(J)V

    goto :goto_1

    .line 379
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->removeContactFromSelectAll(J)V

    goto :goto_1

    .line 383
    .end local v1           #id:J
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 384
    return-void
.end method

.method private setSoftInputMode(I)V
    .locals 1
    .parameter "inputMode"

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 448
    :cond_0
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    .prologue
    .line 234
    const-string v1, "SIMContactPickerFragment"

    const-string v2, " === configureAdapter() === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 238
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setEmptyListEnabled(Z)V

    .line 242
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    const-string v1, "SIMContactPickerFragment"

    const-string v2, " === createListAdapter() === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, adapter:Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 219
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 220
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setDisplayPhotos(Z)V

    .line 221
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setQuickContactEnabled(Z)V

    .line 222
    iget v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setActionCode(I)V

    .line 228
    .end local v0           #adapter:Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;
    :goto_0
    return-object v0

    .line 225
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 227
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 246
    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === inflateView() === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const v0, 0x7f040160

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 132
    const-string v0, "selectedInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 137
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onCancelAction()V

    .line 322
    return-void
.end method

.method public onCopyResult()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onCopyAction(Ljava/util/HashSet;)V

    .line 314
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    if-eqz p1, :cond_0

    .line 153
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f04014e

    .line 166
    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === onCreateView === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 168
    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    .line 170
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    .line 188
    return-void
.end method

.method public onDeleteResult()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;->onDeleteAction(Ljava/util/HashSet;)V

    .line 310
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllChecked(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 198
    :cond_2
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .parameter "position"
    .parameter "id"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 206
    .local v0, selectedId:J
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isSelectedContact(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->removeContact(J)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->addSelectedContact(J)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 293
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 295
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->refreshSelectAllState()V

    .line 298
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 301
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllContacts()V

    .line 305
    .end local v0           #adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    const-string v0, "selectedInfo"

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 144
    const-string v0, "filter"

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactListAdapter;->setSelectedInfoHashSet(Ljava/util/HashSet;)V

    .line 330
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDoneButton(I)V

    .line 332
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->refreshSelectAllState()V

    .line 333
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 115
    return-void
.end method

.method public selectAllContacts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    .line 436
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllChecked(Z)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onSelectedInfoChanged()V

    .line 442
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 111
    return-void
.end method

.method public setOnSIMContactPickerActionListener(Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mListener:Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;

    .line 107
    return-void
.end method

.method public setSelectAllAtFirstLoad(Z)V
    .locals 0
    .parameter "selectAllAtFirstLoad"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    .line 89
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 6
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/16 v5, 0x30

    const/16 v2, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 254
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 260
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    if-eqz v0, :cond_2

    .line 263
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSoftInputMode(I)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSoftInputMode(I)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f09014d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f090115

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 279
    if-eqz v0, :cond_4

    .line 280
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSoftInputMode(I)V

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSoftInputMode(I)V

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

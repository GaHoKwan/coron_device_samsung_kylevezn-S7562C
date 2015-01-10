.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionPickerFavoritesFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;"
    }
.end annotation


# instance fields
.field private dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

.field private mActionCode:I

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCurrentCount:I

.field private mCurrentSelectItem:I

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewText:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFocusState:Z

.field private mFromSelectAll:Z

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mHeaderContainer:Landroid/widget/FrameLayout;

.field private mHeaderView:Landroid/view/View;

.field private mIsDataQueryTaskRunning:Z

.field private mIsDataQueryTaskRunning2:Z

.field private mIsDoneButtonClicked:Z

.field private mIsFragmentShowing:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectAllRunning:Z

.field private mIsSendingMSG:Z

.field private mLimitedCount:I

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowMaxCountDialog:Z

.field private mSoftInputMode:I

.field private mSpeedDial:Z

.field private nUri:Landroid/net/Uri;

.field private selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

.field private selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 111
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 113
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    .line 127
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneSearchData:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasGalSearchData:Z

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    .line 166
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    .line 169
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "InteractionPickerFavoritesFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setPhotoLoaderEnabled(Z)V

    .line 171
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 173
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setVisibleScrollbarEnabled(Z)V

    .line 174
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 176
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setQuickContactEnabled(Z)V

    .line 177
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDirectorySearchMode(I)V

    .line 179
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSweepActionEnabled(Z)V

    .line 182
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setFakeQueryModeEnabled(Z)V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllVcard()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog()V

    return-void
.end method

.method static synthetic access$1502(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllContacts(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    return-void
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 924
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 916
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    .line 920
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v1

    .line 905
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p0, p3, p4, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V

    .line 912
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMaxAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 885
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_0
    if-eqz p4, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectAllInfoChanged()V

    .line 899
    :goto_0
    return-void

    .line 893
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    if-eqz v0, :cond_2

    .line 894
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V

    goto :goto_0

    .line 897
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    if-eqz p1, :cond_3

    .line 1427
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    if-nez v0, :cond_2

    .line 1428
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    .line 1436
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSoftInputMode()V

    .line 1438
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyViewText:Landroid/widget/TextView;

    const v2, 0x7f0d0079

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1442
    if-eqz p1, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    goto :goto_0

    .line 1431
    :cond_2
    const/16 v0, 0x31

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    goto :goto_1

    .line 1434
    :cond_3
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1438
    goto :goto_2

    :cond_5
    move v2, v1

    .line 1439
    goto :goto_3
.end method

.method private excuteSelectAllContacts(Z)V
    .locals 4
    .parameter "isDataTaskRunning"

    .prologue
    const/4 v2, 0x1

    .line 427
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 428
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 429
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    .line 430
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 434
    :cond_0
    return-void
.end method

.method private excuteSelectAllVcard()V
    .locals 2

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    .line 421
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 424
    :cond_0
    return-void
.end method

.method private getSelectedContactCount()I
    .locals 9

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 856
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    const/4 v1, 0x0

    .line 857
    .local v1, currentSelectedCnt:I
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v6

    .line 859
    .local v6, totalNumOfContacts:I
    const/4 v5, 0x0

    .local v5, position:I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 860
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 861
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_1

    .line 859
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 865
    .local v2, id:J
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v4

    .line 867
    .local v4, partition:I
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 871
    .end local v2           #id:J
    .end local v4           #partition:I
    .end local v7           #uri:Landroid/net/Uri;
    :cond_2
    return v1
.end method

.method private isMaxAdded()Z
    .locals 3

    .prologue
    .line 1130
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1131
    const/4 v0, 0x1

    .line 1133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectedContact(Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 949
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 950
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 951
    iget-object v2, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v3, ","

    const-string v4, "P"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    const-string v4, "W"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 953
    const-string v3, ";"

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    return-object v0
.end method

.method private margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "args1"
    .parameter "args2"
    .parameter "args3"
    .parameter "token"

    .prologue
    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 962
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState(Z)V
    .locals 9
    .parameter "flag"

    .prologue
    const/4 v8, 0x0

    .line 1093
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1094
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v5

    .line 1095
    .local v5, totalNumOfContacts:I
    const/4 v4, 0x0

    .local v4, position:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 1097
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1098
    .local v1, id:J
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 1100
    .local v3, partition:I
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    .line 1095
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1104
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1105
    if-eqz p1, :cond_2

    .line 1106
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    .line 1107
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v6, :cond_2

    .line 1108
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_1

    .line 1113
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1123
    .end local v1           #id:J
    .end local v3           #partition:I
    :cond_3
    :goto_2
    return-void

    .line 1118
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1119
    if-eqz p1, :cond_3

    .line 1120
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    .line 1121
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_2
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 876
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    .line 878
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 941
    return-void
.end method

.method private setSelectAllCheckedContacts(Z)Z
    .locals 13
    .parameter "isChecked"

    .prologue
    .line 1028
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1029
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1033
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1034
    .local v0, CurrentSelectItem:I
    iget-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v10, :cond_0

    .line 1035
    const/4 v0, 0x0

    .line 1036
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v8

    .line 1037
    .local v8, totalNumOfContacts:I
    const/4 v7, 0x0

    .local v7, position:I
    :goto_0
    if-ge v7, v8, :cond_8

    .line 1038
    const-wide/16 v4, -0x1

    .line 1039
    .local v4, id:J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 1040
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_1

    .line 1041
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1042
    :cond_1
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1043
    .local v6, partition:I
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 1048
    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v10, v12

    if-lt v0, v10, :cond_6

    .line 1049
    if-nez p1, :cond_6

    .line 1050
    if-ge v0, v8, :cond_2

    .line 1051
    const/4 v10, 0x0

    monitor-exit v11

    .line 1089
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v9           #uri:Landroid/net/Uri;
    :goto_1
    return v10

    .line 1052
    .restart local v4       #id:J
    .restart local v6       #partition:I
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_2
    if-eqz v9, :cond_3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1053
    const/4 v10, 0x0

    monitor-exit v11

    goto :goto_1

    .line 1088
    .end local v0           #CurrentSelectItem:I
    .end local v1           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v7           #position:I
    .end local v8           #totalNumOfContacts:I
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1054
    .restart local v0       #CurrentSelectItem:I
    .restart local v1       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v4       #id:J
    .restart local v6       #partition:I
    .restart local v7       #position:I
    .restart local v8       #totalNumOfContacts:I
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_3
    if-nez v9, :cond_5

    .line 1037
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1056
    :cond_5
    if-gt v0, v8, :cond_4

    .line 1059
    const/4 v10, 0x1

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1064
    :cond_6
    if-eqz v9, :cond_4

    .line 1067
    :try_start_2
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, contactId:Ljava/lang/String;
    if-nez p1, :cond_7

    .line 1070
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1071
    const/4 v10, 0x1

    invoke-virtual {p0, v9, v6, v10}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 1072
    add-int/lit8 v0, v0, 0x1

    .line 1073
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentSelectItem:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1082
    .end local v2           #contactId:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1083
    .local v3, e:Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1078
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #contactId:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    :try_start_4
    iput-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 1080
    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1084
    .end local v2           #contactId:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1085
    .local v3, e:Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_5
    monitor-exit v11

    goto :goto_1

    .line 1088
    .end local v3           #e:Landroid/database/StaleDataException;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v9           #uri:Landroid/net/Uri;
    :cond_8
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1089
    const/4 v10, 0x1

    goto :goto_1
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .locals 14
    .parameter "isChecked"

    .prologue
    .line 972
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 973
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 976
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 977
    .local v0, CurrentSelectItem:I
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 979
    .local v8, totalNumOfContacts:I
    const/4 v7, 0x0

    .local v7, position:I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 981
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMaxAdded()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 982
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 983
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 984
    .local v4, id:J
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 986
    .local v6, partition:I
    const-wide/16 v12, 0x0

    cmp-long v10, v4, v12

    if-nez v10, :cond_1

    .line 982
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 989
    :cond_1
    if-nez p1, :cond_0

    .line 990
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-nez v10, :cond_0

    .line 991
    const/4 v10, 0x0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    .end local v3           #i:I
    .end local v4           #id:J
    .end local v6           #partition:I
    :goto_2
    return v10

    .line 997
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isLegacyCompatibilityMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 998
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v10, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 1002
    .local v9, uri:Landroid/net/Uri;
    :goto_3
    if-nez v9, :cond_4

    .line 979
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1000
    .end local v9           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {v10, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v9

    .restart local v9       #uri:Landroid/net/Uri;
    goto :goto_3

    .line 1005
    :cond_4
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1006
    .restart local v4       #id:J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1008
    .restart local v6       #partition:I
    if-nez p1, :cond_5

    .line 1009
    add-int/lit8 v0, v0, 0x1

    .line 1010
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentSelectItem:I

    .line 1011
    invoke-direct {p0, v4, v5, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 1016
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v9           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1017
    .local v2, e:Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_4
    monitor-exit v11

    goto :goto_2

    .line 1022
    .end local v0           #CurrentSelectItem:I
    .end local v1           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v7           #position:I
    .end local v8           #totalNumOfContacts:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1014
    .restart local v0       #CurrentSelectItem:I
    .restart local v1       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v4       #id:J
    .restart local v6       #partition:I
    .restart local v7       #position:I
    .restart local v8       #totalNumOfContacts:I
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_5
    :try_start_5
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeVcardFromSelectAll(JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 1018
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v9           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 1019
    .local v2, e:Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_6
    monitor-exit v11

    goto :goto_2

    .line 1022
    .end local v2           #e:Landroid/database/StaleDataException;
    :cond_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1024
    const/4 v10, 0x1

    goto :goto_2
.end method

.method private showMaxCountAlertDialog()V
    .locals 6

    .prologue
    .line 1139
    :try_start_0
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSendingMSG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d042d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    .line 1176
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1178
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    .line 1182
    :goto_1
    return-void

    .line 1156
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 1157
    const v0, 0x7f0d0365

    .line 1162
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$4;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1160
    :cond_2
    const v0, 0x7f0d0366

    goto :goto_2
.end method

.method private showNoMatchesView(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 695
    goto :goto_0

    :cond_3
    move v2, v1

    .line 696
    goto :goto_1
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 416
    return-void
.end method

.method public clearSelectedArray()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 802
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 807
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 493
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 495
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isLegacyCompatibilityMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 439
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 440
    .local v2, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 441
    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 442
    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setDisplayPhotos(Z)V

    .line 443
    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setQuickContactEnabled(Z)V

    .line 444
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setActionCode(I)V

    .line 445
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 446
    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setTopDividerEnabled(Z)V

    .line 449
    :cond_0
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v5, 0x123

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v5, 0x124

    if-ne v4, v5, :cond_2

    .line 451
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setExtra(I)V

    .line 456
    :cond_2
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v5, 0x125

    if-ne v4, v5, :cond_3

    .line 457
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 458
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 484
    .end local v1           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_3
    :goto_0
    return-object v2

    .line 460
    .restart local v1       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .restart local v2       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 461
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.sec.chaton"

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 462
    iget-object v4, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v3           #i$:Ljava/util/Iterator;
    :pswitch_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 469
    .restart local v0       #account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.sec.chaton"

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 470
    iget-object v4, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    new-instance v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 482
    .local v2, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v2, v6}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 483
    invoke-virtual {v2, v6}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;
    .locals 2
    .parameter "contactDatas"

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 794
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 796
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

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

    .line 329
    const-string v1, "InteractionPickerFavoritesFragment"

    const-string v2, " === inflateView() === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const v1, 0x7f04005a

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, view:Landroid/view/View;
    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    .line 332
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v7, v5, v7, v5}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0d01df

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchQuery()V

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 349
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_3

    .line 350
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 358
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    if-eqz v1, :cond_2

    .line 359
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllContacts(Z)V

    .line 360
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    .line 363
    :cond_2
    return-object v0

    .line 356
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public isSendingMSG()Z
    .locals 1

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 246
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 252
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 283
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 285
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    .line 286
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog()V

    .line 289
    :cond_0
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "inflater"
    .parameter "container"

    .prologue
    const v2, 0x7f04014e

    .line 293
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyView:Landroid/view/View;

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEmptyViewText:Landroid/widget/TextView;

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 303
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    .line 305
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :cond_0
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 7
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "checked"
    .parameter "uri"

    .prologue
    .line 1317
    const-wide/16 v4, 0x0

    .line 1320
    .local v4, dataid:J
    :try_start_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 1322
    if-eqz p3, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 1325
    .local v6, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #serviceIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 1329
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1330
    return-void

    .line 1327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    if-eqz v0, :cond_1

    .line 274
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_2

    .line 277
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    .line 279
    :cond_2
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1186
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 1188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1189
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_3

    .line 1192
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllVcard()V

    .line 1197
    :cond_2
    :goto_0
    return-void

    .line 1194
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->excuteSelectAllContacts(Z)V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 7
    .parameter "position"
    .parameter "id"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 508
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 510
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 559
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, contactId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v2

    .line 517
    .local v2, partition:I
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    sparse-switch v4, :sswitch_data_0

    .line 554
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unhandled action code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 522
    :sswitch_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 525
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMaxAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 527
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 529
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog()V

    goto :goto_0

    .line 538
    :sswitch_1
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 539
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 541
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMaxAdded()Z

    move-result v4

    if-nez v4, :cond_4

    .line 542
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    .line 544
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog()V

    goto :goto_0

    .line 550
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 517
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x123 -> :sswitch_1
        0x125 -> :sswitch_0
    .end sparse-switch
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 500
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 502
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

    .line 564
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mEnabled:Z

    if-nez v3, :cond_0

    .line 643
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 569
    .local v0, loaderId:I
    if-ne v0, v4, :cond_6

    .line 570
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mDirectoryListStatus:I

    .line 571
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 572
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->startLoading()V

    .line 616
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 617
    if-nez v0, :cond_2

    .line 618
    if-eqz p2, :cond_c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    .line 620
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    .line 625
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    if-nez v3, :cond_d

    :goto_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->configureEmptyView(Z)V

    .line 626
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getSelectedContactCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 628
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 629
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    .line 634
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 635
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    .line 638
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    .line 642
    :cond_5
    const-string v1, "InteractionPickerFavoritesFragment"

    const-string v2, "====================================================="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 580
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->configureEmptyView(Z)V

    .line 583
    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 584
    if-nez v0, :cond_7

    .line 586
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneSearchData:Z

    goto :goto_1

    .line 588
    :cond_7
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasGalSearchData:Z

    goto :goto_1

    .line 592
    :cond_8
    if-nez v0, :cond_9

    .line 593
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneSearchData:Z

    goto/16 :goto_1

    .line 596
    :cond_9
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasGalSearchData:Z

    goto/16 :goto_1

    .line 601
    :cond_a
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mDirectoryListStatus:I

    .line 602
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 605
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryModeEnabled:Z

    if-eqz v3, :cond_1

    .line 606
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    if-ne v3, v1, :cond_b

    .line 607
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    .line 608
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->startFullQuery()V

    goto/16 :goto_1

    .line 609
    :cond_b
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 610
    const/4 v3, 0x4

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFakeQueryStatus:I

    goto/16 :goto_1

    .line 622
    :cond_c
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHasPhoneData:Z

    goto/16 :goto_2

    :cond_d
    move v1, v2

    .line 625
    goto/16 :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 256
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    .line 259
    const-string v0, "InteractionPickerFavoritesFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 3

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z

    .line 762
    :goto_0
    return-void

    .line 743
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 759
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 755
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 743
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x123 -> :sswitch_1
        0x125 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 723
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;)V

    .line 728
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .locals 1
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;J)V

    .line 734
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 9
    .parameter "cursor"
    .parameter "partition"
    .parameter "uri"
    .parameter "flag"

    .prologue
    const/4 v8, 0x0

    .line 770
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    .line 772
    .local v0, contactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 773
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 774
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3, p4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 780
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 782
    :cond_0
    return-void

    .line 776
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 205
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 208
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    const-string v0, "filter"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 213
    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "searchFocusState"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    const-string v0, "IsDataQueryTaskRunning"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    const-string v0, "IsDataQueryTaskRunning2"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string v0, "msg_dialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    return-void
.end method

.method public onSelectAllInfoChanged()V
    .locals 3

    .prologue
    .line 833
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 834
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 835
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 836
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v0, :cond_1

    .line 837
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    .line 844
    :cond_0
    :goto_0
    monitor-exit v1

    .line 845
    return-void

    .line 838
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentSelectItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    goto :goto_0

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 821
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult()V

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 825
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->refreshSelectAllState(Z)V

    goto :goto_0
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult(Landroid/net/Uri;)V

    .line 811
    return-void
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V
    .locals 0
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 815
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult(Landroid/net/Uri;J)V

    .line 816
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onInteractionPickerAction(Landroid/net/Uri;)V

    .line 702
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .locals 5
    .parameter "uri"
    .parameter "partition"
    .parameter "flag"

    .prologue
    .line 705
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setUri(Landroid/net/Uri;)V

    .line 707
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setFromSelectall(Z)V

    .line 709
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->dismissAllowingStateLoss()V

    .line 711
    :cond_0
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    .line 712
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 713
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 201
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 224
    const-string v0, "InteractionPickerFavoritesFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 227
    if-nez p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 231
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    .line 232
    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    .line 233
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    .line 234
    const-string v0, "from_speed_dial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSpeedDial:Z

    .line 235
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 236
    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 237
    const-string v0, "searchFocusState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFocusState:Z

    .line 238
    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z

    .line 239
    const-string v0, "IsDataQueryTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z

    .line 240
    const-string v0, "IsDataQueryTaskRunning2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z

    .line 241
    const-string v0, "msg_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 197
    return-void
.end method

.method public setFromSelectall(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1126
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mFromSelectAll:Z

    .line 1127
    return-void
.end method

.method public setIsFragmentShowing(Z)V
    .locals 0
    .parameter "isFragmentShowing"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsFragmentShowing:Z

    .line 189
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0
    .parameter "ActionCode"
    .parameter "LimitedCount"
    .parameter "CurrentCount"

    .prologue
    .line 1454
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mActionCode:I

    .line 1455
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mLimitedCount:I

    .line 1456
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCurrentCount:I

    .line 1457
    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 193
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 717
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 718
    return-void
.end method

.method public setSearchQuery()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 410
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .parameter "FromMMS"

    .prologue
    .line 1481
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSendingMSG:Z

    .line 1482
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsFragmentShowing:Z

    if-eqz v0, :cond_0

    .line 1461
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1462
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1463
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->nUri:Landroid/net/Uri;

    .line 786
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 9
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 648
    if-nez p2, :cond_1

    .line 649
    const-string v4, "InteractionPickerFavoritesFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 657
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    if-nez v0, :cond_2

    .line 689
    :cond_0
    :goto_1
    return-void

    .line 651
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 652
    .local v1, count:I
    const-string v4, "InteractionPickerFavoritesFragment"

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

    .line 662
    .end local v1           #count:I
    .restart local v0       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 664
    :cond_3
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showNoMatchesView(Z)V

    .line 667
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 668
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 671
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09030b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 672
    .local v3, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09014c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 674
    .local v2, progress:Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showNoMatchesView(Z)V

    .line 677
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 678
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 681
    const v4, 0x7f0d01b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 682
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 684
    :cond_6
    const v4, 0x7f0d0302

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 685
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 686
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

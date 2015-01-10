.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;,
        Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;
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
.field private dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

.field private mActionCode:I

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCurrentCount:I

.field private mCurrentSelectItem:I

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

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

.field private mSelectAllEnabled:Z

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

.field private selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

.field private selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 112
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 114
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 121
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    .line 123
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    .line 127
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneSearchData:Z

    .line 129
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasGalSearchData:Z

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    .line 170
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    .line 173
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "InteractionPickerContactsFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setPhotoLoaderEnabled(Z)V

    .line 175
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 177
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setVisibleScrollbarEnabled(Z)V

    .line 178
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 180
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setQuickContactEnabled(Z)V

    .line 181
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    .line 183
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSweepActionEnabled(Z)V

    .line 186
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setFakeQueryModeEnabled(Z)V

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllVcard()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsFragmentShowing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllContacts(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    return-void
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 972
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

    .line 973
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 964
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

    .line 965
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    .line 969
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 952
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

    .line 953
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v1

    .line 954
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {p0, p3, p4, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V

    .line 961
    :goto_0
    return-void

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 931
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

    .line 932
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v1

    .line 933
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 934
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_0
    if-eqz p4, :cond_1

    .line 939
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectAllInfoChanged()V

    .line 948
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    if-eqz v0, :cond_2

    .line 943
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V

    goto :goto_0

    .line 946
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    if-eqz p1, :cond_3

    .line 1494
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-nez v0, :cond_2

    .line 1495
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    .line 1503
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSoftInputMode()V

    .line 1505
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1506
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1508
    if-eqz p1, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1514
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    goto :goto_0

    .line 1498
    :cond_2
    const/16 v0, 0x31

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    goto :goto_1

    .line 1501
    :cond_3
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1505
    goto :goto_2

    :cond_5
    move v2, v1

    .line 1506
    goto :goto_3
.end method

.method private excuteSelectAllContacts(Z)V
    .locals 4
    .parameter "isDataTaskRunning"

    .prologue
    const/4 v2, 0x1

    .line 445
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 446
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 447
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    .line 448
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 452
    :cond_0
    return-void
.end method

.method private excuteSelectAllVcard()V
    .locals 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 439
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->selectAllTaskVcard:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 442
    :cond_0
    return-void
.end method

.method private isMaxAdded()Z
    .locals 3

    .prologue
    .line 1182
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1183
    const/4 v0, 0x1

    .line 1185
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
    .line 918
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

    .line 920
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 998
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 999
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 1000
    iget-object v2, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v3, ","

    const-string v4, "P"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    const-string v4, "W"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1001
    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->rawContactId:Ljava/lang/String;

    .line 1003
    const-string v4, ";"

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v2, 0x118

    if-ne v1, v2, :cond_0

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    :cond_0
    return-object v0
.end method

.method private margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "args1"
    .parameter "args2"
    .parameter "args3"
    .parameter "token"

    .prologue
    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1018
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState(Z)V
    .locals 9
    .parameter "flag"

    .prologue
    const/4 v8, 0x0

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1146
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v5

    .line 1147
    .local v5, totalNumOfContacts:I
    const/4 v4, 0x0

    .local v4, position:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 1149
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1150
    .local v1, id:J
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 1152
    .local v3, partition:I
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    .line 1147
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1156
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1157
    if-eqz p1, :cond_2

    .line 1158
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    .line 1159
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v6, :cond_2

    .line 1160
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_1

    .line 1165
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1175
    .end local v1           #id:J
    .end local v3           #partition:I
    :cond_3
    :goto_2
    return-void

    .line 1170
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1171
    if-eqz p1, :cond_3

    .line 1172
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    .line 1173
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_2
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 924
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

    .line 925
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    .line 927
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 983
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

    .line 984
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 978
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

    .line 979
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 990
    return-void
.end method

.method private setSelectAllCheckedContacts(Z)Z
    .locals 15
    .parameter "isChecked"

    .prologue
    .line 1084
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 1085
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1089
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1090
    .local v0, CurrentSelectItem:I
    iget-boolean v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v11, :cond_0

    .line 1091
    const/4 v0, 0x0

    .line 1092
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I

    move-result v9

    .line 1093
    .local v9, totalNumOfContacts:I
    const/4 v8, 0x0

    .local v8, position:I
    :goto_0
    if-ge v8, v9, :cond_7

    .line 1094
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 1096
    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v11, v13

    if-lt v0, v11, :cond_3

    .line 1097
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v9, :cond_3

    .line 1099
    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v5

    .line 1100
    .local v5, id:J
    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 1102
    .local v7, partition:I
    const-wide/16 v13, 0x0

    cmp-long v11, v5, v13

    if-nez v11, :cond_2

    .line 1097
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1105
    :cond_2
    if-nez p1, :cond_1

    .line 1106
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1107
    const/4 v11, 0x0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    .end local v4           #i:I
    .end local v5           #id:J
    .end local v7           #partition:I
    :goto_2
    return v11

    .line 1114
    :cond_3
    :try_start_1
    invoke-virtual {v1, v8}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v10

    .line 1115
    .local v10, uri:Landroid/net/Uri;
    if-nez v10, :cond_5

    .line 1093
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1118
    :cond_5
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, contactId:Ljava/lang/String;
    invoke-virtual {v1, v8}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v5

    .line 1120
    .restart local v5       #id:J
    invoke-virtual {v1, v8}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 1121
    .restart local v7       #partition:I
    if-nez p1, :cond_6

    .line 1122
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1123
    const/4 v11, 0x1

    invoke-virtual {p0, v10, v7, v11}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 1124
    add-int/lit8 v0, v0, 0x1

    .line 1125
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentSelectItem:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1134
    .end local v2           #contactId:Ljava/lang/String;
    .end local v5           #id:J
    .end local v7           #partition:I
    .end local v10           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 1135
    .local v3, e:Ljava/lang/IllegalStateException;
    const/4 v11, 0x1

    :try_start_2
    monitor-exit v12

    goto :goto_2

    .line 1140
    .end local v0           #CurrentSelectItem:I
    .end local v1           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .end local v8           #position:I
    .end local v9           #totalNumOfContacts:I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 1130
    .restart local v0       #CurrentSelectItem:I
    .restart local v1       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v2       #contactId:Ljava/lang/String;
    .restart local v5       #id:J
    .restart local v7       #partition:I
    .restart local v8       #position:I
    .restart local v9       #totalNumOfContacts:I
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_6
    const/4 v11, 0x0

    :try_start_3
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 1132
    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1136
    .end local v2           #contactId:Ljava/lang/String;
    .end local v5           #id:J
    .end local v7           #partition:I
    .end local v10           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 1137
    .local v3, e:Landroid/database/StaleDataException;
    const/4 v11, 0x1

    :try_start_4
    monitor-exit v12

    goto :goto_2

    .line 1140
    .end local v3           #e:Landroid/database/StaleDataException;
    :cond_7
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1141
    const/4 v11, 0x1

    goto :goto_2
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .locals 14
    .parameter "isChecked"

    .prologue
    .line 1028
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1029
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 1032
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1033
    .local v0, CurrentSelectItem:I
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1035
    .local v8, totalNumOfContacts:I
    const/4 v7, 0x0

    .local v7, position:I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 1037
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1038
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 1039
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1040
    .local v4, id:J
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1042
    .local v6, partition:I
    const-wide/16 v12, 0x0

    cmp-long v10, v4, v12

    if-nez v10, :cond_1

    .line 1038
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1045
    :cond_1
    if-nez p1, :cond_0

    .line 1046
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-nez v10, :cond_0

    .line 1047
    const/4 v10, 0x0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1080
    .end local v3           #i:I
    .end local v4           #id:J
    .end local v6           #partition:I
    :goto_2
    return v10

    .line 1053
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isLegacyCompatibilityMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v10, v7}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 1058
    .local v9, uri:Landroid/net/Uri;
    :goto_3
    if-nez v9, :cond_4

    .line 1035
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1056
    .end local v9           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {v10, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v9

    .restart local v9       #uri:Landroid/net/Uri;
    goto :goto_3

    .line 1061
    :cond_4
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1062
    .restart local v4       #id:J
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 1064
    .restart local v6       #partition:I
    if-nez p1, :cond_5

    .line 1065
    add-int/lit8 v0, v0, 0x1

    .line 1066
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentSelectItem:I

    .line 1067
    invoke-direct {p0, v4, v5, v6, v9}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 1072
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v9           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1073
    .local v2, e:Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_4
    monitor-exit v11

    goto :goto_2

    .line 1078
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

    .line 1070
    .restart local v0       #CurrentSelectItem:I
    .restart local v1       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .restart local v4       #id:J
    .restart local v6       #partition:I
    .restart local v7       #position:I
    .restart local v8       #totalNumOfContacts:I
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_5
    :try_start_5
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeVcardFromSelectAll(JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 1074
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v9           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 1075
    .local v2, e:Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_6
    monitor-exit v11

    goto :goto_2

    .line 1078
    .end local v2           #e:Landroid/database/StaleDataException;
    :cond_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1080
    const/4 v10, 0x1

    goto :goto_2
.end method

.method private showMaxCountAlertDialog(Z)V
    .locals 6
    .parameter

    .prologue
    .line 1189
    .line 1192
    :try_start_0
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSendingMSG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getResources()Landroid/content/res/Resources;

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

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    .line 1230
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1232
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    .line 1236
    :goto_1
    return-void

    .line 1209
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 1210
    const v0, 0x7f0d0365

    .line 1215
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1213
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

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 737
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 734
    goto :goto_0

    :cond_3
    move v2, v1

    .line 735
    goto :goto_1
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 434
    return-void
.end method

.method public clearSelectedArray()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->cancel(Z)Z

    .line 858
    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->cancel(Z)Z

    .line 862
    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 865
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 866
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 868
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    .line 869
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    .line 872
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 873
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 510
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 512
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 513
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 515
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 8

    .prologue
    const/16 v7, 0x125

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isLegacyCompatibilityMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 457
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 458
    .local v2, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 459
    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 460
    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setDisplayPhotos(Z)V

    .line 461
    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setQuickContactEnabled(Z)V

    .line 462
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setActionCode(I)V

    .line 463
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 464
    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setTopDividerEnabled(Z)V

    .line 467
    :cond_0
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v5, 0x123

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v5, 0x124

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    if-ne v4, v7, :cond_2

    .line 470
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setExtra(I)V

    .line 475
    :cond_2
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    if-ne v4, v7, :cond_3

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 477
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 504
    .end local v1           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_3
    :goto_0
    return-object v2

    .line 479
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

    .line 480
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.sec.chaton"

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 481
    iget-object v4, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 487
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

    .line 488
    .restart local v0       #account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.sec.chaton"

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 489
    iget-object v4, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    new-instance v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 502
    .local v2, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v2, v6}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 503
    invoke-virtual {v2, v6}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0

    .line 477
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
    .line 848
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 849
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 851
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

    .line 347
    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, " === inflateView() === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const v1, 0x7f04005a

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, view:Landroid/view/View;
    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    .line 350
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v7, v5, v7, v5}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0d01df

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchQuery()V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 366
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_3

    .line 369
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 377
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    if-eqz v1, :cond_1

    .line 378
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllContacts(Z)V

    .line 379
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    .line 382
    :cond_1
    return-object v0

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public isSelectAllEnable()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    return v0
.end method

.method public isSendingMSG()Z
    .locals 1

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 260
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 266
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 297
    const-string v0, "InteractionPickerContactsFragment"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 299
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    .line 300
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    .line 303
    :cond_0
    return-void

    .line 299
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

    .line 307
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    .line 319
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
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
    .line 1380
    const-wide/16 v4, 0x0

    .line 1383
    .local v4, dataid:J
    :try_start_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 1385
    if-eqz p3, :cond_0

    .line 1386
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 1388
    .local v6, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

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

    .line 1392
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1393
    return-void

    .line 1390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    if-eqz v0, :cond_1

    .line 288
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_2

    .line 291
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    .line 293
    :cond_2
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1240
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 1242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1243
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x123

    if-ne v0, v1, :cond_3

    .line 1250
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllVcard()V

    .line 1255
    :cond_2
    :goto_0
    return-void

    .line 1252
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllContacts(Z)V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 7
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 528
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 530
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 589
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, contactId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v2

    .line 537
    .local v2, partition:I
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v4, :sswitch_data_0

    .line 584
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unhandled action code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 543
    :sswitch_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 544
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 546
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 548
    invoke-virtual {p0, v3, v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 550
    :cond_2
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    .line 562
    :sswitch_1
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 563
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_0

    .line 565
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v4

    if-nez v4, :cond_4

    .line 566
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    .line 568
    :cond_4
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    .line 574
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 579
    :sswitch_3
    invoke-virtual {p0, v3, v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xbe -> :sswitch_0
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x118 -> :sswitch_3
        0x123 -> :sswitch_1
        0x125 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
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
    .line 520
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 522
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
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

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 594
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mEnabled:Z

    if-nez v4, :cond_0

    .line 678
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 599
    .local v1, loaderId:I
    if-ne v1, v6, :cond_6

    .line 600
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    .line 601
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 602
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->startLoading()V

    .line 656
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 657
    if-nez v1, :cond_2

    .line 658
    if-eqz p2, :cond_d

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_d

    .line 660
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    .line 664
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    if-nez v4, :cond_e

    :goto_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->configureEmptyView(Z)V

    .line 667
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 668
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 669
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    .line 673
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 674
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    .line 676
    :cond_5
    const-string v2, "InteractionPickerContactsFragment"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_6
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 607
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 610
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->configureEmptyView(Z)V

    .line 613
    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 614
    if-nez v1, :cond_7

    .line 616
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneSearchData:Z

    .line 631
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getDirectorySearchMode()I

    move-result v0

    .line 632
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_1

    .line 633
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    if-nez v4, :cond_a

    .line 634
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    .line 635
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    .line 618
    .end local v0           #directorySearchMode:I
    :cond_7
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 622
    :cond_8
    if-nez v1, :cond_9

    .line 623
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneSearchData:Z

    goto :goto_4

    .line 626
    :cond_9
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 637
    .restart local v0       #directorySearchMode:I
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->startLoading()V

    goto :goto_1

    .line 641
    .end local v0           #directorySearchMode:I
    :cond_b
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    .line 642
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 645
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_1

    .line 646
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    if-ne v4, v2, :cond_c

    .line 647
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->startFullQuery()V

    goto/16 :goto_1

    .line 649
    :cond_c
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 650
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFakeQueryStatus:I

    goto/16 :goto_1

    .line 662
    :cond_d
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHasPhoneData:Z

    goto/16 :goto_2

    :cond_e
    move v2, v3

    .line 664
    goto/16 :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 270
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    .line 273
    const-string v0, "InteractionPickerContactsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 3

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    .line 806
    :goto_0
    return-void

    .line 782
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 803
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 799
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    goto :goto_0

    .line 782
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xbe -> :sswitch_0
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x118 -> :sswitch_0
        0x123 -> :sswitch_1
        0x125 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 762
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;)V

    .line 767
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .locals 1
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickSpeedDialAction(Landroid/net/Uri;J)V

    .line 773
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 814
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    .line 816
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 817
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v2, 0xbe

    if-ne v1, v2, :cond_2

    .line 818
    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 831
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 837
    :cond_1
    :goto_1
    return-void

    .line 820
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isEasAccountPartition(I)Z

    move-result v7

    .line 822
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    if-eqz v1, :cond_4

    .line 823
    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    .line 827
    :cond_3
    :goto_2
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 824
    :cond_4
    if-nez v7, :cond_3

    move v7, v8

    goto :goto_2

    .line 833
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d003a

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 217
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 220
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string v0, "msg_dialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    const-string v0, "filter"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    const-string v0, "SelectAllEnabled"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "searchFocusState"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    const-string v0, "IsDataQueryTaskRunning"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    const-string v0, "IsDataQueryTaskRunning2"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    return-void
.end method

.method public onSelectAllInfoChanged()V
    .locals 3

    .prologue
    .line 901
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 902
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 903
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 904
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v0, :cond_1

    .line 905
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    .line 914
    :cond_0
    :goto_0
    monitor-exit v1

    .line 915
    return-void

    .line 906
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentSelectItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    .line 908
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    goto :goto_0

    .line 914
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
    .line 886
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 891
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V

    .line 893
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->refreshSelectAllState(Z)V

    goto :goto_0
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 876
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult(Landroid/net/Uri;)V

    .line 877
    return-void
.end method

.method public onSelectedSpeedDialInfoChanged(Landroid/net/Uri;J)V
    .locals 0
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 881
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult(Landroid/net/Uri;J)V

    .line 882
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onInteractionPickerAction(Landroid/net/Uri;)V

    .line 741
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .locals 5
    .parameter "uri"
    .parameter "partition"
    .parameter "flag"

    .prologue
    .line 744
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setUri(Landroid/net/Uri;)V

    .line 746
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setFromSelectall(Z)V

    .line 748
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->dismissAllowingStateLoss()V

    .line 750
    :cond_0
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

    .line 751
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;

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

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 752
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 205
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 237
    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 240
    if-nez p1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 244
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    .line 245
    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    .line 246
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    .line 247
    const-string v0, "from_speed_dial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    .line 248
    const-string v0, "msg_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    .line 249
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 250
    const-string v0, "SelectAllEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    .line 251
    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 252
    const-string v0, "searchFocusState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFocusState:Z

    .line 253
    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    .line 254
    const-string v0, "IsDataQueryTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z

    .line 255
    const-string v0, "IsDataQueryTaskRunning2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 201
    return-void
.end method

.method public setFromSelectall(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1178
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mFromSelectAll:Z

    .line 1179
    return-void
.end method

.method public setIsFragmentShowing(Z)V
    .locals 0
    .parameter "isFragmentShowing"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsFragmentShowing:Z

    .line 193
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 3
    .parameter "ActionCode"
    .parameter "LimitedCount"
    .parameter "CurrentCount"

    .prologue
    const/4 v2, 0x0

    .line 1520
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    .line 1521
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    .line 1522
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    .line 1523
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_0

    .line 1524
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    .line 1531
    :goto_0
    return-void

    .line 1526
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1527
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    goto :goto_0

    .line 1529
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    goto :goto_0
.end method

.method public setMMSinformation(IIIZ)V
    .locals 4
    .parameter "ActionCode"
    .parameter "LimitedCount"
    .parameter "CurrentCount"
    .parameter "EnableSelectAllFromMMS"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1535
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    .line 1536
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mLimitedCount:I

    .line 1537
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCurrentCount:I

    .line 1538
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_1

    .line 1539
    if-eqz p4, :cond_0

    .line 1540
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    .line 1550
    :goto_0
    return-void

    .line 1542
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    goto :goto_0

    .line 1545
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1546
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    goto :goto_0

    .line 1548
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    goto :goto_0
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 197
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 756
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 757
    return-void
.end method

.method public setSearchQuery()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 428
    return-void
.end method

.method public setSearchViewClearFocus()V
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1568
    :cond_0
    return-void
.end method

.method public setSelectAllEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    .line 213
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .parameter "FromMMS"

    .prologue
    .line 1573
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    .line 1574
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 1553
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsFragmentShowing:Z

    if-eqz v0, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1555
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1556
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setSpeedDial(Z)V
    .locals 0
    .parameter "SpeedDial"

    .prologue
    .line 844
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSpeedDial:Z

    .line 845
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 840
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->nUri:Landroid/net/Uri;

    .line 841
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 9
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 683
    if-nez p2, :cond_1

    .line 684
    const-string v4, "InteractionPickerContactsFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;

    .line 692
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    if-nez v0, :cond_2

    .line 728
    :cond_0
    :goto_1
    return-void

    .line 686
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 687
    .local v1, count:I
    const-string v4, "InteractionPickerContactsFragment"

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

    .line 697
    .end local v1           #count:I
    .restart local v0       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 699
    :cond_3
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showNoMatchesView(Z)V

    .line 702
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 704
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 708
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09030b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 709
    .local v3, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09014c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 711
    .local v2, progress:Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showNoMatchesView(Z)V

    .line 714
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 715
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isSelectAllEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 716
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 719
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 720
    const v4, 0x7f0d01b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 721
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 723
    :cond_6
    const v4, 0x7f0d0302

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 724
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 725
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1
.end method

.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "InteractionGroupMemberPickerFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;
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
.field private dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

.field private mActionCode:I

.field private mActivity:Landroid/app/Activity;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCurrentCount:I

.field private mCurrentSelectItem:I

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

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

.field private mFocusState:Z

.field private mFromSelectAll:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mHeaderContainer:Landroid/widget/FrameLayout;

.field private mHeaderView:Landroid/view/View;

.field private mIsDataQueryTaskRunning:Z

.field private mIsDataQueryTaskRunning2:Z

.field private mIsDoneButtonClicked:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectAllRunning:Z

.field private mIsSendingMSG:Z

.field private mLimitedCount:I

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

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

.field private nUri:Landroid/net/Uri;

.field private selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

.field private selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 108
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    .line 114
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    .line 116
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    .line 125
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    .line 167
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    .line 170
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 173
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 174
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 176
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setQuickContactEnabled(Z)V

    .line 177
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSweepActionEnabled(Z)V

    .line 182
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllPick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllCheckedPick(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog()V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllCheckedContacts(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V

    return-void
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 790
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

    .line 791
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 797
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

    .line 798
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    .line 802
    return-void
.end method

.method private addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 738
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v1, 0x122

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    :goto_0
    return-void

    .line 740
    :cond_0
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

    .line 741
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v1

    .line 742
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    if-eqz p3, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectAllInfoChanged()V

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1246
    if-eqz p1, :cond_3

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1254
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1257
    if-eqz p1, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1261
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V

    goto :goto_0

    .line 1250
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1254
    goto :goto_2

    :cond_5
    move v2, v1

    .line 1255
    goto :goto_3
.end method

.method private excuteSelectAllContacts(Z)V
    .locals 4
    .parameter "isDataTaskRunning"

    .prologue
    const/4 v2, 0x1

    .line 442
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 443
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    .line 444
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    .line 445
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 449
    :cond_0
    return-void
.end method

.method private excuteSelectAllPick()V
    .locals 2

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    .line 436
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 439
    :cond_0
    return-void
.end method

.method private isMaxAdded()Z
    .locals 3

    .prologue
    .line 962
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 963
    const/4 v0, 0x1

    .line 965
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
    .line 726
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

    .line 728
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 766
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 767
    iget-object v1, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 768
    iget-object v2, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v3, ","

    const-string v4, "P"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    const-string v4, "W"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 770
    const-string v3, ";"

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    return-object v0
.end method

.method private margeStringWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "args1"
    .parameter "args2"
    .parameter "args3"
    .parameter "token"

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshSelectAllState(Z)V
    .locals 9
    .parameter "flag"

    .prologue
    const/4 v8, 0x0

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 926
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v5

    .line 927
    .local v5, totalNumOfContacts:I
    const/4 v4, 0x0

    .local v4, position:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 929
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 930
    .local v1, id:J
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 932
    .local v3, partition:I
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    .line 927
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 936
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 937
    if-eqz p1, :cond_2

    .line 938
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    .line 939
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v6, :cond_2

    .line 940
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_1

    .line 945
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 955
    .end local v1           #id:J
    .end local v3           #partition:I
    :cond_3
    :goto_2
    return-void

    .line 950
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 951
    if-eqz p1, :cond_3

    .line 952
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    .line 953
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    goto :goto_2
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 732
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

    .line 733
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    .line 735
    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 751
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

    .line 752
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 758
    return-void
.end method

.method private setSelectAllCheckedContacts(Z)Z
    .locals 13
    .parameter "isChecked"

    .prologue
    .line 858
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 859
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 863
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 864
    .local v0, CurrentSelectItem:I
    iget-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v10, :cond_0

    .line 865
    const/4 v0, 0x0

    .line 866
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 867
    .local v8, totalNumOfContacts:I
    const/4 v7, 0x0

    .local v7, position:I
    :goto_0
    if-ge v7, v8, :cond_7

    .line 868
    const-wide/16 v4, -0x1

    .line 870
    .local v4, id:J
    :try_start_1
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 875
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_1

    .line 876
    :try_start_2
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 877
    :cond_1
    invoke-virtual {v1, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 878
    .local v6, partition:I
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 883
    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v10, v12

    if-lt v0, v10, :cond_5

    .line 884
    if-nez p1, :cond_5

    .line 885
    iget v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    if-ge v0, v10, :cond_2

    .line 886
    const/4 v10, 0x0

    monitor-exit v11

    .line 921
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v9           #uri:Landroid/net/Uri;
    :goto_1
    return v10

    .line 872
    .restart local v4       #id:J
    :catch_0
    move-exception v3

    .line 873
    .local v3, e:Landroid/database/StaleDataException;
    const/4 v10, 0x1

    monitor-exit v11

    goto :goto_1

    .line 920
    .end local v0           #CurrentSelectItem:I
    .end local v1           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .end local v3           #e:Landroid/database/StaleDataException;
    .end local v4           #id:J
    .end local v7           #position:I
    .end local v8           #totalNumOfContacts:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 887
    .restart local v0       #CurrentSelectItem:I
    .restart local v1       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .restart local v4       #id:J
    .restart local v6       #partition:I
    .restart local v7       #position:I
    .restart local v8       #totalNumOfContacts:I
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_2
    if-eqz v9, :cond_3

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 888
    const/4 v10, 0x0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 889
    :cond_3
    if-nez v9, :cond_5

    .line 867
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 896
    :cond_5
    if-eqz v9, :cond_4

    .line 899
    :try_start_4
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, contactId:Ljava/lang/String;
    if-nez p1, :cond_6

    .line 902
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 903
    const/4 v10, 0x1

    invoke-virtual {p0, v9, v6, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 904
    add-int/lit8 v0, v0, 0x1

    .line 905
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentSelectItem:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 914
    .end local v2           #contactId:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 915
    .local v3, e:Ljava/lang/IllegalStateException;
    const/4 v10, 0x1

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 910
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #contactId:Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    :try_start_6
    iput-boolean v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 912
    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 916
    .end local v2           #contactId:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 917
    .local v3, e:Landroid/database/StaleDataException;
    const/4 v10, 0x1

    :try_start_7
    monitor-exit v11

    goto :goto_1

    .line 920
    .end local v3           #e:Landroid/database/StaleDataException;
    .end local v4           #id:J
    .end local v6           #partition:I
    .end local v9           #uri:Landroid/net/Uri;
    :cond_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 921
    const/4 v10, 0x1

    goto :goto_1
.end method

.method private setSelectAllCheckedPick(Z)Z
    .locals 15
    .parameter "isChecked"

    .prologue
    .line 805
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 806
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 809
    .local v1, adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 810
    .local v0, CurrentSelectItem:I
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 812
    .local v9, totalNumOfContacts:I
    const/4 v8, 0x0

    .local v8, position:I
    :goto_0
    if-ge v8, v9, :cond_5

    .line 814
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 815
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v9, :cond_2

    .line 816
    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v5

    .line 817
    .local v5, id:J
    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 819
    .local v7, partition:I
    const-wide/16 v13, 0x0

    cmp-long v11, v5, v13

    if-nez v11, :cond_1

    .line 815
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 822
    :cond_1
    if-nez p1, :cond_0

    .line 823
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-nez v11, :cond_0

    .line 824
    const/4 v11, 0x0

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    .end local v4           #i:I
    .end local v5           #id:J
    .end local v7           #partition:I
    :goto_2
    return v11

    .line 829
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v11, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v10

    .line 831
    .local v10, uri:Landroid/net/Uri;
    if-nez v10, :cond_3

    .line 812
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 834
    :cond_3
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, contactId:Ljava/lang/String;
    invoke-virtual {v1, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v5

    .line 836
    .restart local v5       #id:J
    invoke-virtual {v1, v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 838
    .restart local v7       #partition:I
    if-nez p1, :cond_4

    .line 839
    add-int/lit8 v0, v0, 0x1

    .line 840
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentSelectItem:I

    .line 841
    invoke-direct {p0, v5, v6, v7, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 846
    .end local v2           #contactId:Ljava/lang/String;
    .end local v5           #id:J
    .end local v7           #partition:I
    .end local v10           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 847
    .local v3, e:Ljava/lang/IllegalStateException;
    const/4 v11, 0x1

    :try_start_4
    monitor-exit v12

    goto :goto_2

    .line 852
    .end local v0           #CurrentSelectItem:I
    .end local v1           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .end local v8           #position:I
    .end local v9           #totalNumOfContacts:I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 844
    .restart local v0       #CurrentSelectItem:I
    .restart local v1       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    .restart local v2       #contactId:Ljava/lang/String;
    .restart local v5       #id:J
    .restart local v7       #partition:I
    .restart local v8       #position:I
    .restart local v9       #totalNumOfContacts:I
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_4
    :try_start_5
    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 848
    .end local v2           #contactId:Ljava/lang/String;
    .end local v5           #id:J
    .end local v7           #partition:I
    .end local v10           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 849
    .local v3, e:Landroid/database/StaleDataException;
    const/4 v11, 0x1

    :try_start_6
    monitor-exit v12

    goto :goto_2

    .line 852
    .end local v3           #e:Landroid/database/StaleDataException;
    :cond_5
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 854
    const/4 v11, 0x1

    goto :goto_2
.end method

.method private showMaxCountAlertDialog()V
    .locals 6

    .prologue
    .line 971
    :try_start_0
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSendingMSG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getResources()Landroid/content/res/Resources;

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

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    .line 1008
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1010
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    .line 1014
    :goto_1
    return-void

    .line 988
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 989
    const v0, 0x7f0d0365

    .line 994
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$4;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1011
    :catch_0
    move-exception v0

    goto :goto_1

    .line 992
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

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 623
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 620
    goto :goto_0

    :cond_3
    move v2, v1

    .line 621
    goto :goto_1
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 474
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 477
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 480
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 481
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 456
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setDisplayPhotos(Z)V

    .line 457
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setQuickContactEnabled(Z)V

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setModifiedMemeberIds(Ljava/util/List;)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setExceptedAccounts(Ljava/util/List;)V

    .line 461
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setActionCode(I)V

    .line 462
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setMode(I)V

    .line 468
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    :goto_0
    return-object v0

    .line 465
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 466
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 467
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;
    .locals 2
    .parameter "contactDatas"

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 695
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 697
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

    .line 355
    const-string v1, "InteractionGroupMemberPickerFragment"

    const-string v2, "inflateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const v1, 0x7f04005a

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, view:Landroid/view/View;
    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 358
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v7, v5, v7, v5}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0d01df

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSearchQuery()V

    .line 374
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 375
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_3

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 383
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    if-eqz v1, :cond_2

    .line 384
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts(Z)V

    .line 385
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    .line 387
    :cond_2
    return-object v0

    .line 381
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public isSendingMSG()Z
    .locals 1

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 264
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 270
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 305
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 307
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    .line 308
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog()V

    .line 311
    :cond_0
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    const v4, 0x7f04014e

    const/4 v3, 0x0

    .line 315
    const-string v1, "InteractionGroupMemberPickerFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActivity:Landroid/app/Activity;

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09016d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    .line 321
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09016b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    .line 328
    const-string v1, "DEFAULT"

    const-string v2, "PHONE_WHITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0901a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, list_divider:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .end local v0           #list_divider:Landroid/view/View;
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 336
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0900f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :cond_1
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 4
    .parameter "dataInfo"
    .parameter "partition"
    .parameter "checked"
    .parameter "uri"

    .prologue
    .line 1139
    const-wide/16 v0, 0x0

    .line 1142
    .local v0, dataid:J
    :try_start_0
    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    .line 1144
    if-eqz p3, :cond_0

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 1147
    .local v2, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    .end local v2           #serviceIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Z)V

    .line 1152
    return-void

    .line 1149
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

    if-eqz v0, :cond_1

    .line 292
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_2

    .line 295
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    if-eqz v0, :cond_3

    .line 299
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->selectAllTaskPick:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;

    .line 301
    :cond_3
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1018
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 1020
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1021
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts(Z)V

    .line 1023
    :cond_1
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 8
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v5, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 498
    .local v4, uri:Landroid/net/Uri;
    :goto_0
    if-nez v4, :cond_1

    .line 548
    :goto_1
    return-void

    .line 496
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 503
    .local v1, partition:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 504
    .local v2, targetId:J
    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    sparse-switch v5, :sswitch_data_0

    .line 543
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid or unhandled action code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 509
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 510
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContact(Ljava/lang/String;I)V

    .line 511
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 547
    :goto_2
    const-string v5, "InteractionGroupMemberPickerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onItemClick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 513
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_3

    .line 515
    invoke-virtual {p0, v4, v1, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    .line 516
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 518
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog()V

    goto :goto_2

    .line 524
    :sswitch_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 525
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->removeContact(Ljava/lang/String;I)V

    .line 526
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 528
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_5

    .line 529
    invoke-direct {p0, v0, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 530
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 533
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog()V

    goto :goto_2

    .line 539
    :sswitch_2
    invoke-virtual {p0, v4, v1, v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IZ)V

    goto :goto_2

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0x122 -> :sswitch_2
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
    .line 486
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 488
    return-void
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
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    .line 552
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 553
    if-nez p2, :cond_1

    .line 554
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v2, "Data is NULL"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 564
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState(Z)V

    .line 567
    :cond_0
    return-void

    .line 556
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 560
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->configureEmptyView(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 274
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    .line 277
    const-string v0, "InteractionGroupMemberPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 2

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z

    .line 662
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickGroupDataAction(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V

    .line 642
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Z)V
    .locals 9
    .parameter "cursor"
    .parameter "partition"
    .parameter "flag"

    .prologue
    const/4 v8, 0x0

    .line 669
    const-string v1, "InteractionGroupMemberPickerFragment"

    const-string v2, " === onQueryCompleted === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->nUri:Landroid/net/Uri;

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    .line 673
    .local v0, contactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 674
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 675
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->addSelectedInfo(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;Z)V

    .line 686
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 691
    :cond_0
    :goto_1
    return-void

    .line 678
    :cond_1
    const/4 v7, 0x0

    .line 679
    .local v7, bHideSetPrimary:Z
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v2, 0x122

    if-ne v1, v2, :cond_2

    .line 680
    const/4 v7, 0x1

    .line 682
    :cond_2
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 688
    .end local v7           #bHideSetPrimary:Z
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d003a

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 226
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 229
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "searchFocusState"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    const-string v0, "IsDataQueryTaskRunning"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v0, "IsDataQueryTaskRunning2"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v0, "sendMessageForATT"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method public onSelectAllInfoChanged()V
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 714
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 715
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 716
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    if-eqz v0, :cond_1

    .line 717
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState(Z)V

    .line 722
    :cond_0
    :goto_0
    monitor-exit v1

    .line 723
    return-void

    .line 718
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentSelectItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V

    .line 720
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState(Z)V

    goto :goto_0

    .line 722
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
    .line 702
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onPickerResult()V

    .line 710
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    .line 707
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V

    .line 709
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->refreshSelectAllState(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1288
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onStop()V

    .line 1289
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 1291
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1293
    if-eqz v0, :cond_0

    .line 1294
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1299
    :cond_1
    return-void
.end method

.method public pickContact(Landroid/net/Uri;IZ)V
    .locals 5
    .parameter "uri"
    .parameter "partition"
    .parameter "flag"

    .prologue
    .line 630
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, contactId:Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setFromSelectall(Z)V

    .line 633
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->dismissAllowingStateLoss()V

    .line 635
    :cond_0
    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

    .line 636
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;

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

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 637
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 243
    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 246
    if-nez p1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 250
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    .line 251
    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    .line 252
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    .line 253
    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 254
    const-string v0, "searchFocusState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFocusState:Z

    .line 255
    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    .line 256
    const-string v0, "IsDataQueryTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z

    .line 257
    const-string v0, "IsDataQueryTaskRunning2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z

    .line 258
    const-string v0, "sendMessageForATT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    goto :goto_0
.end method

.method public setExceptedAccounts(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, exceptedAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 220
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 222
    :cond_0
    return-void
.end method

.method public setFromSelectall(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 958
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mFromSelectAll:Z

    .line 959
    return-void
.end method

.method public setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 206
    return-void
.end method

.method public setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 190
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0
    .parameter "ActionCode"
    .parameter "LimitedCount"
    .parameter "CurrentCount"

    .prologue
    .line 1269
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I

    .line 1270
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    .line 1271
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    .line 1272
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 197
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mMode:I

    .line 198
    return-void
.end method

.method public setModifiedMemberIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, modifiedMemberIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 214
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 216
    :cond_0
    return-void
.end method

.method public setSearchQuery()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 430
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .parameter "FromMMS"

    .prologue
    .line 1277
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    .line 1278
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 9
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 572
    if-nez p2, :cond_1

    .line 573
    const-string v4, "InteractionGroupMemberPickerFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;

    .line 581
    .local v0, adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    if-nez v0, :cond_2

    .line 615
    :cond_0
    :goto_1
    return-void

    .line 575
    .end local v0           #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 576
    .local v1, count:I
    const-string v4, "InteractionGroupMemberPickerFragment"

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

    .line 586
    .end local v1           #count:I
    .restart local v0       #adapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 588
    :cond_3
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showNoMatchesView(Z)V

    .line 591
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 596
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09030b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 597
    .local v3, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09014c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 599
    .local v2, progress:Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showNoMatchesView(Z)V

    .line 602
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 603
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 606
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 607
    const v4, 0x7f0d01b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 608
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 610
    :cond_6
    const v4, 0x7f0d0302

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 611
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 612
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.class public Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "GroupMemberPickerFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;,
        Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;,
        Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/list/OnActionBarClickListener;"
    }
.end annotation


# instance fields
.field private mAddAllRunning:Z

.field private mContactsUnavailableView:Landroid/view/View;

.field private mCursor:Landroid/database/Cursor;

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

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mHeaderView:Landroid/view/View;

.field private mICEGroupCount:I

.field private mIsAutoAdd:Z

.field private mListContainer:Landroid/view/View;

.field private mListContentFrame:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

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

.field private mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

.field private mRemoveAllRunning:Z

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectAllEnabled:Z

.field private mSelectAllVisible:Z

.field private mSoftInputMode:I

.field private mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mAddAllRunning:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mRemoveAllRunning:Z

    .line 90
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->NOTLOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    .line 96
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    .line 104
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setQuickContactEnabled(Z)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSelectAllVisible(Z)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;)Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mICEGroupCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mAddAllRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->addAllMember()V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mRemoveAllRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->removeAllMember()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addAllMember()V
    .locals 7

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    .line 455
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getCount()I

    move-result v1

    .line 456
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 457
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mAddAllRunning:Z

    if-nez v5, :cond_1

    .line 469
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mAddAllRunning:Z

    .line 470
    return-void

    .line 459
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 462
    .local v3, targetId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    .line 456
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 466
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    if-eqz p1, :cond_3

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iput v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    .line 512
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSoftInputMode()V

    .line 513
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setNoMatchesText()V

    goto :goto_0

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSoftInputMode()V

    .line 519
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setNoContactText()V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iput v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSoftInputMode()V

    goto :goto_0
.end method

.method private configureListBackgound()V
    .locals 2

    .prologue
    .line 228
    sget-boolean v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/AutoScrollListView;

    .line 230
    .local v0, listView:Lcom/android/contacts/widget/AutoScrollListView;
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/AutoScrollListView;->setSelector(I)V

    .line 232
    .end local v0           #listView:Lcom/android/contacts/widget/AutoScrollListView;
    :cond_0
    return-void
.end method

.method private configureSelectAll()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0900f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, headerLayout:Landroid/view/View;
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 216
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    if-nez v2, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    .line 222
    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 224
    .end local v0           #headerLayout:Landroid/view/View;
    :cond_1
    return-void

    .line 216
    .restart local v0       #headerLayout:Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 219
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    goto :goto_1
.end method

.method private configureUri(I)Landroid/net/Uri;
    .locals 5
    .parameter "mode"

    .prologue
    .line 659
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, title:Ljava/lang/String;
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 672
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 663
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 666
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 668
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "emergency"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 670
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private removeAllMember()V
    .locals 7

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    .line 414
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getCount()I

    move-result v1

    .line 415
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 416
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mRemoveAllRunning:Z

    if-nez v5, :cond_1

    .line 429
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mRemoveAllRunning:Z

    .line 435
    .end local v0           #adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    .end local v1           #count:I
    .end local v2           #i:I
    :goto_1
    return-void

    .line 418
    .restart local v0       #adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 422
    .local v3, targetId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    .line 415
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 426
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 433
    .end local v0           #adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #targetId:J
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method private setNoContactText()V
    .locals 4

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09014d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, imageView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 541
    .local v1, textView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 542
    const v2, 0x7f0d0069

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 543
    return-void
.end method

.method private setNoMatchesText()V
    .locals 4

    .prologue
    .line 531
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v3, 0x7f09030b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 532
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v3, 0x7f09014c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 533
    .local v0, progress:Landroid/widget/ProgressBar;
    const v2, 0x7f0d0302

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 534
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 535
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 536
    return-void
.end method

.method private updateDoneButton()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    .line 601
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onTitleUpdated(I)V

    .line 602
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v5

    .line 547
    .local v5, total:I
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v9, 0x7f0900f8

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 553
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 555
    const/4 v3, 0x1

    .line 557
    .local v3, isAllContain:Z
    const/4 v4, 0x0

    .local v4, position:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 558
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 561
    .local v1, id:J
    const-wide/16 v9, 0x0

    cmp-long v6, v1, v9

    if-nez v6, :cond_1

    .line 557
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 564
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 565
    const/4 v3, 0x0

    .line 570
    .end local v1           #id:J
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 583
    .end local v3           #isAllContain:Z
    .end local v4           #position:I
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 584
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v6, v8}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    .line 589
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onTitleUpdated(I)V

    .line 590
    return-void

    .line 573
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_4

    .line 575
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 576
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->addAllMember()V

    .line 579
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_3

    .line 586
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v6, v7}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 347
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 348
    return-void
.end method

.method protected configureSearchbar()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0d01df

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 248
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 285
    :cond_1
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 325
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setDisplayPhotos(Z)V

    .line 326
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setQuickContactEnabled(Z)V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setModifiedMemeberIds(Ljava/util/List;)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setExceptedAccounts(Ljava/util/List;)V

    .line 330
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setMode(I)V

    .line 332
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setAutoAdd(Z)V

    .line 339
    .end local v0           #adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    :goto_0
    return-object v0

    .line 336
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 338
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 352
    const v0, 0x7f04005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 167
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 169
    :cond_1
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->runQuery()V

    .line 172
    :cond_2
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    .line 189
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContactsUnavailableView:Landroid/view/View;

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContentFrame:Landroid/view/View;

    .line 196
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v0, :cond_0

    .line 197
    const v0, 0x7f04014e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    .line 199
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSelectAll()V

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureListBackgound()V

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSearchbar()V

    .line 206
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDetach()V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->cancelOperation(I)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    .line 184
    :cond_1
    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onSelectedAction(Ljava/util/List;)V

    .line 399
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 5
    .parameter "position"
    .parameter "id"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    .line 305
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 307
    .local v1, targetId:J
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 313
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->notifyDataSetChanged()V

    .line 314
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v3, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 319
    :goto_1
    return-void

    .line 310
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateDoneButton()V

    goto :goto_1
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    const/4 v4, 0x0

    .line 289
    if-nez p3, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0900f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 292
    .local v0, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mAddAllRunning:Z

    if-eqz v1, :cond_0

    .line 293
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mAddAllRunning:Z

    .line 294
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mRemoveAllRunning:Z

    if-eqz v1, :cond_1

    .line 295
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mRemoveAllRunning:Z

    .line 296
    :cond_1
    new-instance v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    .end local v0           #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :goto_0
    return-void

    .line 298
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 358
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 368
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureEmptyView(Z)V

    .line 362
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 363
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v0, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateDoneButton()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onRevertAction()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onRevertAction()V

    .line 406
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 439
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 440
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 444
    const-string v0, "GroupMemberPickerFragment"

    const-string v1, " === restoreSavedState === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 446
    if-nez p1, :cond_0

    .line 450
    :cond_0
    return-void
.end method

.method public setAutoAdd(Z)V
    .locals 0
    .parameter "isAutoAdd"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    .line 144
    return-void
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
    .line 158
    .local p1, exceptedAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 159
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 161
    :cond_0
    return-void
.end method

.method public setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 139
    return-void
.end method

.method public setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    .line 117
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 130
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    .line 131
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
    .line 152
    .local p1, modifiedMemberIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 155
    :cond_0
    return-void
.end method

.method public setSelectAllVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    .line 124
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

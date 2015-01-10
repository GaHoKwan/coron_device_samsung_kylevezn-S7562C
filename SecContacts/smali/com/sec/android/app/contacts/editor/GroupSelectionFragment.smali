.class public Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
.super Landroid/app/ListFragment;
.source "GroupSelectionFragment.java"


# static fields
.field public static mHasPhoneNumber:Z

.field private static mSystemTitleMap:Ljava/util/HashMap;
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


# instance fields
.field private final LOADER_COUNT:I

.field private final LOADER_META_DATA:I

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

.field private mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

.field mCheckedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedGroupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactId:J

.field private mContext:Landroid/content/Context;

.field private mCreateFieldButton:Landroid/widget/Button;

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private mICEMemberCount:I

.field private mIsContainGoogle:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private final mMemberCountLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mICEMemberCount:I

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->LOADER_COUNT:I

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->LOADER_META_DATA:I

    .line 486
    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 548
    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mMemberCountLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private UpdateItems(Landroid/database/Cursor;)V
    .locals 13
    .parameter "curGroupMetaData"

    .prologue
    .line 596
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v10, defaultcheckedGroupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    .line 612
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "auto_add"

    aput-object v12, v2, v11

    const-string v3, "auto_add = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 620
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 622
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 624
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 628
    .local v8, defaultGroupId:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 606
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #defaultGroupId:J
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 632
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 639
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    if-nez p1, :cond_4

    .line 640
    const-string v0, "SelectGroupFragment"

    const-string v11, "UpdateItems, curGroupMetaData is null. mItems will be empty ArrayList"

    invoke-static {v0, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_3
    return-void

    .line 643
    :cond_4
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 647
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 653
    .local v1, groupId:J
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 655
    .local v6, realTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 661
    .local v4, checked:Z
    const/4 v5, 0x0

    .line 665
    .local v5, enabled:Z
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 667
    const/4 v5, 0x0

    .line 677
    :goto_3
    iget-object v11, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 671
    :cond_5
    const/4 v5, 0x1

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->UpdateItems(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->considerBindData()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateHeaderUnCheckState()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method private considerBindData()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    if-nez v0, :cond_2

    .line 389
    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f04010d

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 403
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 407
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 409
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 443
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 445
    return-void

    :cond_1
    move v0, v2

    .line 381
    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->notifyDataSetChanged()V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->forceLayout()V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 407
    goto :goto_2

    :cond_4
    move v0, v2

    .line 409
    goto :goto_3

    :cond_5
    move v1, v2

    .line 411
    goto :goto_4

    .line 415
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_7

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_5

    .line 427
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_5
.end method

.method public static covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "title"

    .prologue
    .line 982
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 983
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 986
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 988
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    .line 990
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Friends"

    const v2, 0x7f0d02ad

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Family"

    const v2, 0x7f0d02ae

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Coworkers"

    const v2, 0x7f0d02af

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "My Contacts"

    const v2, 0x7f0d02b0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 999
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "ICE"

    const v2, 0x7f0d0285

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1011
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1017
    :goto_1
    return-object v0

    .line 1002
    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "ICE"

    const v2, 0x7f0d0284

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 1017
    goto :goto_1
.end method

.method private getGoogleAccounts()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 344
    .local v0, accountTypemanager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getGroupValues(Ljava/lang/String;JJ)Landroid/content/ContentValues;
    .locals 3
    .parameter "title"
    .parameter "groupId"
    .parameter "contactId"

    .prologue
    .line 829
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 833
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v1, "account_type"

    const-string v2, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v1, "account_name"

    const-string v2, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v1, "data1"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v1, "contact_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 847
    return-object v0
.end method

.method private getRawContactId(J)J
    .locals 10
    .parameter "contactId"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 1023
    const-wide/16 v6, -0x1

    .line 1025
    .local v6, rawContactId:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1029
    .local v8, rawContactIdCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1031
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_0
    :goto_0
    return-wide v6

    .line 1032
    :cond_1
    if-eqz v8, :cond_0

    .line 1033
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private resetGroups()V
    .locals 4

    .prologue
    .line 965
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 967
    .local v0, selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 969
    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v0, v1

    .line 971
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND  mimetype=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 977
    return-void
.end method

.method private updateAggregatedGroup()V
    .locals 15

    .prologue
    .line 907
    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    .line 909
    .local v12, select:[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 911
    .local v14, where:Ljava/lang/StringBuffer;
    const-string v0, "contact_id"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = ? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = ? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 915
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v0

    .line 917
    const/4 v0, 0x1

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v12, v0

    .line 919
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v10

    .line 923
    .local v10, isChecked:Z
    if-eqz v10, :cond_0

    .line 925
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v11, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "group_membership"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 931
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v7

    .line 933
    .local v7, groupId:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v1

    .line 935
    .local v1, realTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getGroupValues(Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v13

    .line 939
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual {v6, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 941
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    .end local v1           #realTitle:Ljava/lang/String;
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #groupId:J
    .end local v11           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 959
    .end local v10           #isChecked:Z
    :cond_1
    return-void

    .line 949
    .restart local v1       #realTitle:Ljava/lang/String;
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v7       #groupId:J
    .restart local v10       #isChecked:Z
    .restart local v11       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v13       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateAllUnCheckState()V
    .locals 3

    .prologue
    .line 763
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 775
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 777
    :cond_2
    return-void
.end method

.method private updateHeaderUnCheckState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 783
    const/4 v0, 0x0

    .line 785
    .local v0, checkedcount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 787
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 791
    add-int/lit8 v0, v0, 0x1

    .line 785
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    :cond_1
    if-gtz v0, :cond_2

    .line 801
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 807
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    if-eqz v2, :cond_4

    .line 809
    if-gtz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 811
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    .line 821
    :cond_4
    :goto_1
    return-void

    .line 815
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getSelecedGroupId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedGroupTitle()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 899
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadData(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x1

    .line 451
    const-string v0, "hasPhoneNumber"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHasPhoneNumber:Z

    .line 453
    const-string v0, "android.intent.extra.CONTACT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    .line 455
    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 459
    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    .line 465
    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    .line 467
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountName:Ljava/lang/String;

    .line 468
    const-string v0, "account_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountType:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    .line 478
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "show_ICE"

    sget-boolean v2, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHasPhoneNumber:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mMemberCountLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 373
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 356
    instance-of v0, p1, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 358
    check-cast v0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    .line 362
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    .line 364
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 216
    const-string v0, "SelectGroupFragment"

    const-string v1, "========== onCreate(Bundle savedInstanceState) =========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    .line 226
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 236
    const-string v0, "SelectGroupFragment"

    const-string v1, "========== onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedState) =========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflater = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const v0, 0x7f04010c

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 256
    const v0, 0x7f04010d

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f09028b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0273

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x7f090288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCreateFieldButton:Landroid/widget/Button;

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCreateFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 691
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 695
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 699
    .local v0, headerCount:I
    if-nez p3, :cond_4

    .line 701
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-nez v2, :cond_1

    .line 703
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 705
    .local v1, isheaderchecked:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 707
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    if-eqz v2, :cond_0

    .line 709
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    .line 721
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateAllUnCheckState()V

    .line 723
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setActivated(Z)V

    .line 755
    .end local v1           #isheaderchecked:Ljava/lang/Boolean;
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->notifyDataSetChanged()V

    .line 757
    return-void

    .restart local v1       #isheaderchecked:Ljava/lang/Boolean;
    :cond_2
    move v2, v4

    .line 705
    goto :goto_0

    .line 715
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    goto :goto_1

    .line 729
    .end local v1           #isheaderchecked:Ljava/lang/Boolean;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 731
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v3, p3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2, v4}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 733
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 735
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 747
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateHeaderUnCheckState()V

    .line 749
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_2

    .line 739
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 741
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 332
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 336
    :cond_0
    return-void
.end method

.method public updateGroup()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    if-nez v0, :cond_1

    .line 859
    const-string v0, "SelectGroupFragment"

    const-string v1, "updateAggregatedGroup, mAdapter is null so do not reset action."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->resetGroups()V

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 869
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateAggregatedGroup()V

    .line 873
    :cond_2
    iget-wide v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getRawContactId(J)J

    move-result-wide v7

    .line 874
    .local v7, rawContactId:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "raw_contact_id =?"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 876
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 877
    :cond_3
    new-array v9, v11, [Ljava/lang/String;

    .line 878
    .local v9, selectionArgs:[Ljava/lang/String;
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 882
    .end local v9           #selectionArgs:[Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_0

    .line 883
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

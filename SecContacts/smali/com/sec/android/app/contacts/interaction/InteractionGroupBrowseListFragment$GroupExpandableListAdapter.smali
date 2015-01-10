.class public final Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "InteractionGroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GroupExpandableListAdapter"
.end annotation


# instance fields
.field mAccountsCursor:Landroid/database/Cursor;

.field mCursor:Landroid/database/Cursor;

.field mDocomoCursor:Landroid/database/Cursor;

.field mGoogleAccountsCursor:Landroid/database/Cursor;

.field mGroupCursor:Landroid/database/Cursor;

.field mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

.field mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field subTitlePosition:I

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 266
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 262
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    .line 267
    return-void
.end method

.method private MergeAllCursor()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 748
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 750
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-nez v7, :cond_5

    .line 751
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-nez v7, :cond_1

    move v1, v5

    .line 752
    .local v1, result1:Z
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_2

    move v2, v5

    .line 753
    .local v2, result2:Z
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_3

    move v3, v5

    .line 754
    .local v3, result3:Z
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-nez v7, :cond_4

    move v4, v5

    .line 755
    .local v4, result4:Z
    :goto_3
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group cursor is null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "google cursor is  null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account cursor is  null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v1           #result1:Z
    .end local v2           #result2:Z
    .end local v3           #result3:Z
    .end local v4           #result4:Z
    :goto_4
    return-object v0

    :cond_1
    move v1, v6

    .line 751
    goto :goto_0

    .restart local v1       #result1:Z
    :cond_2
    move v2, v6

    .line 752
    goto :goto_1

    .restart local v2       #result2:Z
    :cond_3
    move v3, v6

    .line 753
    goto :goto_2

    .restart local v3       #result3:Z
    :cond_4
    move v4, v6

    .line 754
    goto :goto_3

    .line 760
    .end local v1           #result1:Z
    .end local v2           #result2:Z
    .end local v3           #result3:Z
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 762
    :cond_6
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group cursor is closed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "google cursor is closed :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account cursor is closed :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "docomo cursor is closed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 770
    :cond_7
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/database/Cursor;

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    aput-object v8, v7, v6

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    aput-object v6, v7, v5

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v5, v7, v9

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v5, v7, v10

    invoke-direct {v0, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 772
    .local v0, cursor:Landroid/database/Cursor;
    goto/16 :goto_4

    .line 776
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_d

    .line 777
    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-nez v7, :cond_a

    move v1, v5

    .line 778
    .restart local v1       #result1:Z
    :goto_5
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_b

    move v2, v5

    .line 779
    .restart local v2       #result2:Z
    :goto_6
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_c

    move v3, v5

    .line 780
    .restart local v3       #result3:Z
    :goto_7
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group cursor is null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "google cursor is  null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account cursor is  null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v1           #result1:Z
    .end local v2           #result2:Z
    .end local v3           #result3:Z
    :cond_a
    move v1, v6

    .line 777
    goto :goto_5

    .restart local v1       #result1:Z
    :cond_b
    move v2, v6

    .line 778
    goto :goto_6

    .restart local v2       #result2:Z
    :cond_c
    move v3, v6

    .line 779
    goto :goto_7

    .line 785
    .end local v1           #result1:Z
    .end local v2           #result2:Z
    :cond_d
    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 787
    :cond_e
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group cursor is closed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "google cursor is closed :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v5, "InteractionGroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account cursor is closed :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 794
    :cond_f
    new-instance v0, Landroid/database/MergeCursor;

    new-array v7, v10, [Landroid/database/Cursor;

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    aput-object v8, v7, v6

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v7, v5

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v5, v7, v9

    invoke-direct {v0, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 797
    .restart local v0       #cursor:Landroid/database/Cursor;
    goto/16 :goto_4
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->MergeAllCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePosition(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->cancelQuery()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->closeAllCursor()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->startGooglePlusQuery()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getGoogleAccountInfo(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getDocomoAccountInfo()V

    return-void
.end method

.method private cancelQuery()V
    .locals 2

    .prologue
    .line 636
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "cancelQuery"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 641
    return-void
.end method

.method private closeAllCursor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 802
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "closeallCursor"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 810
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 815
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    .line 818
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 820
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    .line 824
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 826
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    .line 828
    :cond_4
    return-void
.end method

.method private getAllGoogleAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v2, googleAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 683
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 684
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.google"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 685
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v2
.end method

.method private getDocomoAccountInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 720
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v2, accountSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v4, docomoAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 725
    .local v3, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 726
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v6, "com.android.nttdocomo"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 727
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 730
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 732
    .restart local v0       #account:Lcom/android/contacts/model/AccountWithDataSet;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 735
    .local v1, accountInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    const-string v6, "xxx"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 743
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1           #accountInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v6, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;

    sget-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    .line 744
    return-void
.end method

.method private getGoogleAccountInfo(Z)V
    .locals 7
    .parameter "shouldGooglePlusVisible"

    .prologue
    .line 694
    const-string v5, "InteractionGroupBrowseListFragment"

    const-string v6, "getGoogleAccountInfo"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v2, accountSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v3

    .line 699
    .local v3, googleAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 700
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v5, "plus"

    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_0

    .line 704
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x6

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 706
    .local v1, accountInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    const-string v5, "xxx"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 714
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1           #accountInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;

    sget-object v6, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    .line 715
    const-string v5, "InteractionGroupBrowseListFragment"

    const-string v6, "google query is finished "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method private getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 8
    .parameter "cursor"

    .prologue
    .line 319
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v0, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    return-object v0
.end method

.method private resetAsyncQueryHandler()V
    .locals 3

    .prologue
    .line 649
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    .line 650
    return-void
.end method

.method private setSubTitlePosition(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x3

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, curr_AccountType:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 469
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 470
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    goto :goto_0
.end method

.method private startGooglePlusQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 669
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "startGooglePlusQuery"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v0, "data_set"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " == \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2b

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data_set"

    aput-object v6, v4, v5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 653
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->resetAsyncQueryHandler()V

    .line 656
    const-string v0, "content://com.android.contacts/groups_list/aggregated_not_assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 658
    .local v3, groupUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "noGroupsCount"

    const-string v4, "true"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 664
    .local v8, sb:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void

    :cond_0
    move-object v5, v2

    .line 664
    goto :goto_0
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 423
    .local v1, cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 424
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f110044

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 425
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f110045

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 428
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v4, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, groupTitle:Ljava/lang/String;
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    const/4 v4, 0x5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, systemId:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, accountType:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.android.nttdocomo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 436
    :cond_1
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f0d027b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 437
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :goto_0
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c7

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 451
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsHugeFontMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mHugeFontSize:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 454
    :cond_2
    return-void

    .line 439
    :cond_3
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 512
    .local v2, cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    const-string v4, "com.google"

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "com.android.nttdocomo"

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 516
    :cond_0
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 520
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f110044

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 521
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f110045

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 523
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 525
    .local v1, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 530
    if-eqz p4, :cond_4

    .line 531
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v5, 0x7f020584

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 535
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c7

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 587
    .end local v1           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsHugeFontMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 588
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mHugeFontSize:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 590
    :cond_3
    return-void

    .line 533
    .restart local v1       #accountType:Lcom/android/contacts/model/AccountType;
    :cond_4
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v5, 0x7f020585

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 540
    .end local v1           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_5
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_8

    .line 542
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 546
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f11003e

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 547
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f11003f

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 549
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 551
    .restart local v1       #accountType:Lcom/android/contacts/model/AccountType;
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, accountName:Ljava/lang/String;
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 559
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 561
    :cond_7
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c7

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 567
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_8
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 571
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f11003e

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 572
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f11003f

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 574
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v4, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, groupTitle:Ljava/lang/String;
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 581
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 583
    :cond_a
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c7

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public bindHeader(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 6
    .parameter "view"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 483
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "bindHeader"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 488
    .local v0, cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    if-nez p3, :cond_2

    .line 489
    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :goto_0
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    if-eq p3, v1, :cond_1

    if-ne p3, v4, :cond_4

    .line 495
    :cond_1
    if-ne p3, v4, :cond_3

    .line 496
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0d027c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 497
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    :goto_1
    return-void

    .line 491
    :cond_2
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 499
    :cond_3
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0128

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 500
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 503
    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 412
    .local v0, oldCursor:Landroid/database/Cursor;
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 414
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 418
    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 384
    const-string v3, "InteractionGroupBrowseListFragment"

    const-string v4, "getChildView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0, p1, p2}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v1

    .line 388
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 389
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "couldn\'t move cursor to position "

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 395
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p3, p5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 400
    .local v2, v:Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 402
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 403
    .local v0, cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v4, 0x7f0204cc

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 406
    :cond_2
    return-object v2

    .line 397
    .end local v0           #cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    .end local v2           #v:Landroid/view/View;
    :cond_3
    move-object v2, p4

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .parameter "groupCursor"

    .prologue
    const/4 v4, 0x0

    .line 272
    const/4 v8, 0x0

    .line 273
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, accountName:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, accountType:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 276
    .local v9, dataSet:Ljava/lang/String;
    const-string v0, "com.google"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.nttdocomo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    const-string v0, "content://com.android.contacts/groups_list/assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 282
    .local v1, groupsUri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v10, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_type==\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_name==\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    if-nez v9, :cond_2

    .line 286
    const-string v0, "data_set IS NULL"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    const/4 v8, 0x0

    .line 298
    .end local v1           #groupsUri:Landroid/net/Uri;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-object v8

    .line 288
    .restart local v1       #groupsUri:Landroid/net/Uri;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_set==\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 346
    const-string v3, "InteractionGroupBrowseListFragment"

    const-string v4, "getGroupView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v1

    .line 350
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 351
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "couldn\'t move cursor to position "

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 356
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 357
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p2, p4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 362
    .local v2, v:Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 363
    invoke-virtual {p0, v2, v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->bindHeader(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 365
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 367
    .local v0, cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    const-string v3, "DEFAULT"

    const-string v4, "TABLET_BLACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 370
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v4, 0x7f020725

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 376
    :goto_1
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v4, 0x7f0204cc

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 379
    :cond_2
    return-object v2

    .line 359
    .end local v0           #cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    .end local v2           #v:Landroid/view/View;
    :cond_3
    move-object v2, p3

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0

    .line 373
    .restart local v0       #cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    :cond_4
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v4, 0x7f020727

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method public getSelectedGroupPosition()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 302
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 315
    :cond_1
    :goto_0
    return v1

    .line 306
    :cond_2
    const/4 v1, 0x0

    .line 307
    .local v1, index:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 308
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 310
    .local v0, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 313
    add-int/lit8 v1, v1, 0x1

    .line 314
    goto :goto_1

    .end local v0           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    :cond_3
    move v1, v2

    .line 315
    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 595
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 596
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400fb

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 597
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DEFAULT"

    const-string v4, "PHONE_WHITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 598
    const v3, 0x7f0206fe

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 600
    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;-><init>()V

    .line 601
    .local v0, cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    const v3, 0x7f090266

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    .line 602
    const v3, 0x7f09026a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    .line 603
    const v3, 0x7f090267

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    .line 604
    const v3, 0x7f090268

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    .line 606
    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    .line 608
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 609
    return-object v2
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 615
    const-string v3, "InteractionGroupBrowseListFragment"

    const-string v4, "newGroupView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 618
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400fb

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 619
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;-><init>()V

    .line 621
    .local v0, cache:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    const v3, 0x7f090265

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    .line 622
    const v3, 0x7f090257

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    .line 623
    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    .line 624
    const v3, 0x7f090266

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    .line 625
    const v3, 0x7f09026a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    .line 626
    const v3, 0x7f090267

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    .line 627
    const v3, 0x7f090268

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    .line 629
    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    .line 631
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 632
    return-object v2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePosition(Landroid/database/Cursor;)V

    .line 339
    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 341
    return-void
.end method

.method public setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 330
    return-void
.end method

.class public final Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
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

.field mIceCount:I

.field mIsAutoAdd:Z

.field mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

.field mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field mSelectionVisible:Z

.field subTitlePosition:I

.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 643
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 636
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIceCount:I

    .line 644
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

    .line 1258
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1260
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-nez v7, :cond_5

    .line 1261
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-nez v7, :cond_1

    move v1, v5

    .line 1262
    .local v1, result1:Z
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_2

    move v2, v5

    .line 1263
    .local v2, result2:Z
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_3

    move v3, v5

    .line 1264
    .local v3, result3:Z
    :goto_2
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-nez v7, :cond_4

    move v4, v5

    .line 1265
    .local v4, result4:Z
    :goto_3
    const-string v5, "GroupBrowseListFragment"

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

    .line 1266
    const-string v5, "GroupBrowseListFragment"

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

    .line 1267
    const-string v5, "GroupBrowseListFragment"

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

    .line 1306
    .end local v1           #result1:Z
    .end local v2           #result2:Z
    .end local v3           #result3:Z
    .end local v4           #result4:Z
    :goto_4
    return-object v0

    :cond_1
    move v1, v6

    .line 1261
    goto :goto_0

    .restart local v1       #result1:Z
    :cond_2
    move v2, v6

    .line 1262
    goto :goto_1

    .restart local v2       #result2:Z
    :cond_3
    move v3, v6

    .line 1263
    goto :goto_2

    .restart local v3       #result3:Z
    :cond_4
    move v4, v6

    .line 1264
    goto :goto_3

    .line 1270
    .end local v1           #result1:Z
    .end local v2           #result2:Z
    .end local v3           #result3:Z
    :cond_5
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1272
    :cond_6
    const-string v5, "GroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group cursor is closed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-string v5, "GroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "google cursor is closed :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const-string v5, "GroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account cursor is closed :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const-string v5, "GroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "docomo cursor is closed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1280
    :cond_7
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    aput-object v8, v7, v6

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    aput-object v6, v7, v5

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v5, v7, v9

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v5, v7, v10

    invoke-direct {v0, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1282
    .local v0, cursor:Landroid/database/Cursor;
    goto/16 :goto_4

    .line 1286
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_8
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_d

    .line 1287
    :cond_9
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-nez v7, :cond_a

    move v1, v5

    .line 1288
    .restart local v1       #result1:Z
    :goto_5
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_b

    move v2, v5

    .line 1289
    .restart local v2       #result2:Z
    :goto_6
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v7, :cond_c

    move v3, v5

    .line 1290
    .restart local v3       #result3:Z
    :goto_7
    const-string v5, "GroupBrowseListFragment"

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

    .line 1291
    const-string v5, "GroupBrowseListFragment"

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

    .line 1292
    const-string v5, "GroupBrowseListFragment"

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

    .line 1287
    goto :goto_5

    .restart local v1       #result1:Z
    :cond_b
    move v2, v6

    .line 1288
    goto :goto_6

    .restart local v2       #result2:Z
    :cond_c
    move v3, v6

    .line 1289
    goto :goto_7

    .line 1295
    .end local v1           #result1:Z
    .end local v2           #result2:Z
    :cond_d
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1297
    :cond_e
    const-string v5, "GroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group cursor is closed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const-string v5, "GroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "google cursor is closed :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-string v5, "GroupBrowseListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account cursor is closed :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1304
    :cond_f
    new-instance v0, Landroid/database/MergeCursor;

    new-array v7, v10, [Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    aput-object v8, v7, v6

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v7, v5

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v5, v7, v9

    invoke-direct {v0, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1306
    .restart local v0       #cursor:Landroid/database/Cursor;
    goto/16 :goto_4
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startGooglePlusQuery()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGoogleAccountInfo(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getDocomoAccountInfo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->MergeAllCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePositon(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getParentPostion(Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->cancelQuery()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->closeAllCursor()V

    return-void
.end method

.method private cancelQuery()V
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1142
    :cond_0
    return-void
.end method

.method private closeAllCursor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1312
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "closeallCursor"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1320
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1324
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1325
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    .line 1328
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1329
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1330
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    .line 1334
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1335
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1336
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    .line 1338
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
    .line 1183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v2, googleAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 1186
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

    .line 1187
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.google"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1188
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1192
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v2
.end method

.method private getDocomoAccountInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v2, accountSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v4, docomoAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 1231
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

    .line 1232
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v6, "com.android.nttdocomo"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1233
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1236
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

    .line 1238
    .restart local v0       #account:Lcom/android/contacts/model/AccountWithDataSet;
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1241
    .local v1, accountInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    const-string v6, "xxx"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1253
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1           #accountInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v6, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;

    sget-object v7, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    .line 1254
    return-void
.end method

.method private getGoogleAccountInfo(Z)V
    .locals 8
    .parameter "shouldGooglePlusVisible"

    .prologue
    const/4 v7, 0x0

    .line 1197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v2, accountSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v3

    .line 1200
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

    .line 1201
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v5, "plus"

    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_0

    .line 1205
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1208
    .local v1, accountInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    const-string v5, "xxx"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1220
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1           #accountInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v5, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;

    sget-object v6, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    .line 1221
    const-string v5, "GroupBrowseListFragment"

    const-string v6, "google query is finished "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-void
.end method

.method private getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 8
    .parameter "cursor"

    .prologue
    .line 751
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 757
    .local v0, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    return-object v0
.end method

.method private getParentPostion(Lcom/sec/android/app/contacts/group/GroupInfo;)I
    .locals 7
    .parameter "groupInfo"

    .prologue
    const/4 v4, -0x1

    .line 715
    const/4 v3, 0x0

    .line 720
    .local v3, index:I
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 721
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 722
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, accountType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, accountName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, dataSet:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 734
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v3           #index:I
    :cond_0
    :goto_1
    return v3

    .line 732
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v2       #dataSet:Ljava/lang/String;
    .restart local v3       #index:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 734
    goto :goto_1
.end method

.method private getSelectedGroupPosition(Landroid/database/Cursor;)I
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v2, -0x1

    .line 738
    const/4 v1, 0x0

    .line 739
    .local v1, index:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 740
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 741
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 742
    .local v0, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    .end local v0           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v1           #index:I
    :goto_1
    return v1

    .line 745
    .restart local v0       #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 746
    goto :goto_0

    .end local v0           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    :cond_1
    move v1, v2

    .line 747
    goto :goto_1
.end method

.method private isSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    .locals 1
    .parameter "groupInfo"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAsyncQueryHandler()V
    .locals 3

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1151
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    .line 1153
    :cond_0
    return-void
.end method

.method private setSubTitlePositon(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x4

    .line 938
    const/4 v0, 0x0

    .line 940
    .local v0, curr_AccountType:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 942
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 947
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 948
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 949
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 952
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 954
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    goto :goto_0
.end method

.method private startGooglePlusQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1175
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

    .line 1176
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

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

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1156
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->resetAsyncQueryHandler()V

    .line 1157
    const-string v0, "content://com.android.contacts/groups_list/aggregated_not_assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1159
    .local v3, groupUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1161
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "noGroupsCount"

    const-string v4, "true"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    sget-object v4, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$402(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 1171
    :cond_1
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    const v6, 0x7f110044

    const v9, 0x7f090181

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 893
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 894
    .local v1, cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 895
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 896
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f110045

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 897
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    invoke-virtual {v4, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 900
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v4, p2, p3}, Lcom/android/contacts/group/GroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, groupTitle:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    const/4 v4, 0x6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, systemId:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 906
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

    .line 908
    :cond_1
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f0d027b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 909
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 914
    :goto_0
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 915
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 916
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 918
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 924
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 925
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c8

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 931
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1000(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 932
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1100(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 934
    :cond_2
    return-void

    .line 911
    :cond_3
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 920
    :cond_4
    iget-object v4, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 927
    :cond_5
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c7

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 990
    .local v2, cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    const-string v4, "com.google"

    const/4 v5, 0x4

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

    if-eqz v4, :cond_6

    const-string v4, "com.android.nttdocomo"

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 994
    :cond_0
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 997
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f110044

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 998
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f110045

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1000
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 1002
    .local v1, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1005
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    if-eqz p4, :cond_4

    .line 1008
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v5, 0x7f020584

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1012
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1013
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1014
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c8

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1089
    .end local v1           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1000(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1090
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1100(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1092
    :cond_3
    return-void

    .line 1010
    .restart local v1       #accountType:Lcom/android/contacts/model/AccountType;
    :cond_4
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v5, 0x7f020585

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1016
    :cond_5
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c7

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1021
    .end local v1           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_6
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 1023
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1026
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f11003e

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1027
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f11003f

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1029
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 1031
    .restart local v1       #accountType:Lcom/android/contacts/model/AccountType;
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, accountName:Ljava/lang/String;
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1036
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 1038
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1044
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1040
    :cond_8
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1046
    :cond_9
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1047
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c8

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1049
    :cond_a
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c7

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1056
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_b
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1059
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f11003e

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1060
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f11003f

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1062
    :cond_c
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v4, p2, p3}, Lcom/android/contacts/group/GroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 1063
    .local v3, groupTitle:Ljava/lang/String;
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isICEGroup(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIceCount:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    .line 1065
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIceCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    :goto_3
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1071
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 1073
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    :goto_4
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1079
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1067
    :cond_d
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1075
    :cond_e
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1081
    :cond_f
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1082
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c8

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1084
    :cond_10
    const v4, 0x7f090181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0204c7

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public bindHeader(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 5
    .parameter "view"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 966
    .local v0, cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    if-nez p3, :cond_2

    .line 967
    :cond_0
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 972
    :goto_0
    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    if-eq p3, v1, :cond_1

    if-ne p3, v2, :cond_4

    .line 973
    :cond_1
    if-ne p3, v2, :cond_3

    .line 974
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0d027c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 975
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 983
    :goto_1
    return-void

    .line 969
    :cond_2
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 977
    :cond_3
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0128

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 978
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 981
    :cond_4
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 883
    .local v0, oldCursor:Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 885
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 886
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 888
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 889
    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 837
    invoke-virtual {p0, p1, p2}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v1

    .line 839
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 840
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "couldn\'t move cursor to position "

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 845
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 846
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v1, p3, p5}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 851
    .local v4, v:Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v1, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 853
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 854
    .local v0, cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_2

    .line 855
    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    .line 856
    .local v2, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v3

    .line 857
    .local v3, isSelected:Z
    invoke-virtual {v4, v3}, Landroid/view/View;->setActivated(Z)V

    .line 864
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 865
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 866
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 869
    .end local v2           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v3           #isSelected:Z
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 870
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 871
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v6, 0x7f02073a

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 877
    :cond_3
    :goto_1
    return-object v4

    .line 848
    .end local v0           #cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    .end local v4           #v:Landroid/view/View;
    :cond_4
    move-object v4, p4

    .restart local v4       #v:Landroid/view/View;
    goto :goto_0

    .line 874
    .restart local v0       #cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    :cond_5
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v6, 0x7f0204cc

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .parameter "groupCursor"

    .prologue
    const/4 v4, 0x0

    .line 648
    if-nez p1, :cond_1

    move-object v8, v4

    .line 690
    :cond_0
    :goto_0
    return-object v8

    .line 652
    :cond_1
    const/4 v8, 0x0

    .line 653
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 654
    .local v6, accountName:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, accountType:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 657
    .local v9, dataSet:Ljava/lang/String;
    const-string v0, "com.coolots.chaton"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    const-string v0, "com.google"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.nttdocomo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    :cond_2
    const/4 v1, 0x0

    .line 666
    .local v1, groupsUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 667
    const-string v0, "content://com.android.contacts/groups_list/assigned_nocount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 674
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
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

    .line 677
    if-nez v9, :cond_4

    .line 678
    const-string v0, "data_set IS NULL"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 684
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 685
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 686
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 670
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const-string v0, "content://com.android.contacts/groups_list/assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 680
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    :cond_4
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

    goto :goto_2
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 787
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v1

    .line 789
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 790
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "couldn\'t move cursor to position "

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 795
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 796
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v1, p2, p4}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 801
    .local v4, v:Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 802
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->bindHeader(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 804
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 805
    .local v0, cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_2

    .line 806
    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    .line 807
    .local v2, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v3

    .line 808
    .local v3, isSelected:Z
    invoke-virtual {v4, v3}, Landroid/view/View;->setActivated(Z)V

    .line 814
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 815
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 819
    .end local v2           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v3           #isSelected:Z
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 820
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 821
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v6, 0x7f0205a2

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 823
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v6, 0x7f02073a

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 832
    :cond_3
    :goto_1
    return-object v4

    .line 798
    .end local v0           #cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    .end local v4           #v:Landroid/view/View;
    :cond_4
    move-object v4, p3

    .restart local v4       #v:Landroid/view/View;
    goto :goto_0

    .line 826
    .restart local v0       #cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    :cond_5
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v6, 0x7f0205a1

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 828
    iget-object v5, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v6, 0x7f0204cc

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method public getSelectedGroupPosition()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 694
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v2

    .line 698
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->isExpanedListItem(Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    invoke-static {v6, v7}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$600(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 699
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v6}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getParentPostion(Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v5

    .line 700
    .local v5, parentPostion:I
    invoke-virtual {p0, v5}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 701
    .local v1, childCursor:Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition(Landroid/database/Cursor;)I

    move-result v0

    .line 702
    .local v0, ChildPosition:I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 703
    if-eq v0, v2, :cond_0

    .line 706
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$700(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/ExpandableListView;

    invoke-static {v5, v0}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    .line 707
    .local v3, packedPosition:J
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$700(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v2

    .line 708
    .local v2, flatListPosition:I
    goto :goto_0

    .line 710
    .end local v0           #ChildPosition:I
    .end local v1           #childCursor:Landroid/database/Cursor;
    .end local v2           #flatListPosition:I
    .end local v3           #packedPosition:J
    .end local v5           #parentPostion:I
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v6}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition(Landroid/database/Cursor;)I

    move-result v2

    goto :goto_0
.end method

.method public isAutoAdd()Z
    .locals 1

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIsAutoAdd:Z

    return v0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 1098
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1099
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400fb

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1100
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DEFAULT"

    const-string v4, "PHONE_WHITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    const v3, 0x7f0206fe

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1103
    :cond_0
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;-><init>()V

    .line 1104
    .local v0, cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    const v3, 0x7f090266

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    .line 1105
    const v3, 0x7f09026a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    .line 1106
    const v3, 0x7f090267

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    .line 1107
    const v3, 0x7f090268

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    .line 1108
    const v3, 0x7f090269

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    .line 1109
    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    .line 1111
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1112
    return-object v2
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 1118
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1119
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400fb

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1120
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;-><init>()V

    .line 1122
    .local v0, cache:Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    const v3, 0x7f090265

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    .line 1123
    const v3, 0x7f090257

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    .line 1124
    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    .line 1125
    const v3, 0x7f090266

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    .line 1126
    const v3, 0x7f09026a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    .line 1127
    const v3, 0x7f090267

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    .line 1128
    const v3, 0x7f090268

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    .line 1129
    const v3, 0x7f090269

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    .line 1130
    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    .line 1132
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1133
    return-object v2
.end method

.method public setAutoAdd(Z)V
    .locals 0
    .parameter "isAutoAdd"

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIsAutoAdd:Z

    .line 766
    return-void
.end method

.method public setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 762
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    .line 782
    return-void
.end method

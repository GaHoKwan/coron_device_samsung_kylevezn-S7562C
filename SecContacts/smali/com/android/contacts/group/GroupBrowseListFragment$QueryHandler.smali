.class Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private isAccountQuerycompleted:Z

.field private isGoogleQueryCompleted:Z

.field private isGroupQueryCompleted:Z

.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 1363
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1364
    iput-object p2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->context:Landroid/content/Context;

    .line 1366
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 19
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1382
    if-eqz p3, :cond_0

    .line 1383
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    move-object/from16 v0, p0

    if-eq v0, v1, :cond_c

    .line 1388
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/16 v1, 0x2a

    move/from16 v0, p1

    if-ne v1, v0, :cond_2

    .line 1390
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "group cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :goto_1
    if-eqz p3, :cond_0

    .line 1426
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1391
    :cond_2
    const/16 v1, 0x2b

    move/from16 v0, p1

    if-ne v1, v0, :cond_4

    .line 1392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 1393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1394
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "group cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_3
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google plus cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1397
    :cond_4
    const/16 v1, 0x2c

    move/from16 v0, p1

    if-ne v1, v0, :cond_7

    .line 1398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    .line 1399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1400
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "group cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_6

    .line 1403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1404
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_6
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "account cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1407
    :cond_7
    const/16 v1, 0x2d

    move/from16 v0, p1

    if-ne v1, v0, :cond_b

    .line 1408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_8

    .line 1409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1410
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "group cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_9

    .line 1413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1414
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_a

    .line 1417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1418
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "account cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_a
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "ice count cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1422
    :cond_b
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "unknown query, anyway, cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1431
    :cond_c
    if-eqz p3, :cond_16

    .line 1432
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1434
    :pswitch_0
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "group query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    .line 1436
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    .line 1437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startGooglePlusQuery()V
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$1300(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    goto/16 :goto_0

    .line 1440
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    if-eqz v1, :cond_0

    .line 1441
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google plus query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_f

    const/4 v1, 0x1

    :goto_2
    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGoogleAccountInfo(Z)V
    invoke-static {v2, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$1400(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Z)V

    .line 1444
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getDocomoAccountInfo()V
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 1446
    :cond_d
    if-eqz p3, :cond_e

    .line 1447
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1448
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google plus cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_e
    const/4 v4, 0x0

    .line 1452
    .local v4, accountUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 1453
    const-string v1, "content://com.android.contacts/groups_list/account_nocount"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1460
    :goto_3
    const/16 v2, 0x2c

    const/4 v3, 0x0

    sget-object v5, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    goto/16 :goto_0

    .line 1442
    .end local v4           #accountUri:Landroid/net/Uri;
    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    .line 1457
    .restart local v4       #accountUri:Landroid/net/Uri;
    :cond_10
    const-string v1, "content://com.android.contacts/groups_list/account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    .line 1466
    .end local v4           #accountUri:Landroid/net/Uri;
    :pswitch_2
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "account query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    .line 1468
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isAccountQuerycompleted:Z

    .line 1469
    const-string v1, "content://com.android.contacts/groups/title/ICE/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1471
    .local v8, iceCountUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "emergency"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 1473
    const/16 v6, 0x2d

    const/4 v7, 0x0

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1478
    .end local v8           #iceCountUri:Landroid/net/Uri;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isAccountQuerycompleted:Z

    if-eqz v1, :cond_0

    .line 1480
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "ICE count query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIceCount:I

    .line 1482
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1483
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "ICE count cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->MergeAllCursor()Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;

    move-result-object v18

    .line 1485
    .local v18, mergedCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_11

    .line 1486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, v18

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePositon(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$1700(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V

    .line 1490
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    .line 1491
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    .line 1492
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isAccountQuerycompleted:Z

    .line 1494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x0

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1802(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 1496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->requestSelectionToScreen()V

    .line 1500
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->isExpanedListItem(Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$600(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v3

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getParentPostion(Lcom/sec/android/app/contacts/group/GroupInfo;)I
    invoke-static {v2, v3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2200(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v2

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2102(Lcom/android/contacts/group/GroupBrowseListFragment;I)I

    .line 1503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2100(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 1504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$700(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2100(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1509
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->invalidateSeltectedGroupInfo()V
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2400(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2302(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2300(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isAutoAdd()Z

    move-result v17

    .line 1513
    .local v17, isAutoAdd:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2300(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    move/from16 v0, v17

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2500(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    goto/16 :goto_0

    .line 1506
    .end local v17           #isAutoAdd:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    if-nez v1, :cond_13

    .line 1507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x0

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2302(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Lcom/sec/android/app/contacts/group/GroupInfo;

    goto :goto_4

    .line 1515
    :cond_15
    new-instance v9, Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-wide/16 v13, 0x0

    const-string v15, "Not Assigned"

    const-string v16, "Not Assigned"

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1518
    .local v9, notAssignedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x0

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    invoke-static {v1, v9, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2500(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    goto/16 :goto_0

    .line 1526
    .end local v9           #notAssignedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v18           #mergedCursor:Landroid/database/Cursor;
    :cond_16
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "cursor null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1432
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 1371
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "startQuery is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/16 v0, 0x2a

    if-ne v0, p1, :cond_0

    .line 1373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    .line 1375
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    return-void
.end method

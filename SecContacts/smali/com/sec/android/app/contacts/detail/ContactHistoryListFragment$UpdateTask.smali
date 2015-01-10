.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "ContactHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

.field private parentContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 750
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-direct {p0, v0}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 751
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 752
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1
    check-cast p2, [Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->doInBackground(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;[Ljava/lang/Long;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;[Ljava/lang/Long;)Ljava/lang/Void;
    .locals 28
    .parameter "target"
    .parameter "params"

    .prologue
    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "data1"

    aput-object v9, v4, v5

    const/4 v5, 0x2

    const-string v9, "mimetype"

    aput-object v9, v4, v5

    const/4 v5, 0x3

    const-string v9, "account_type"

    aput-object v9, v4, v5

    const/4 v5, 0x4

    const-string v9, "display_name"

    aput-object v9, v4, v5

    const-string v5, "contact_id = ? "

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$500()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 809
    .local v17, c:Landroid/database/Cursor;
    if-eqz v17, :cond_4

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 810
    const/16 v25, 0x0

    .line 811
    .local v25, type:Ljava/lang/String;
    const/16 v23, 0x0

    .line 812
    .local v23, number:Ljava/lang/String;
    const/16 v16, 0x0

    .line 813
    .local v16, accountType:Ljava/lang/String;
    const/16 v18, 0x0

    .line 814
    .local v18, displayName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 815
    .local v7, initWhere:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$500()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 820
    .local v8, whereArgs:[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 821
    .local v20, initSelection:Ljava/lang/StringBuffer;
    const-string v2, "contactid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    const-string v2, "=?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 826
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 827
    .local v6, initValues:Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v2, "contactid"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 831
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;
    invoke-static {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    move-result-object v2

    const/16 v3, 0x14

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v2 .. v8}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 843
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 844
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 845
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 848
    const/4 v14, 0x0

    .line 849
    .local v14, where:Ljava/lang/String;
    if-eqz v23, :cond_3

    .line 851
    const-string v2, "\'"

    const-string v3, "\'\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 852
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 853
    const-string v2, "-"

    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 856
    :cond_1
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 857
    .local v24, selection:Ljava/lang/StringBuffer;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    .line 858
    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 860
    .local v22, minmatchReverse:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 862
    .local v21, minmatch:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 863
    if-eqz v21, :cond_2

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 864
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 865
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_NUMBERS_EQUAL(number, \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', ?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 880
    .end local v21           #minmatch:Ljava/lang/String;
    .end local v22           #minmatchReverse:Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 882
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 883
    .local v13, values:Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, v18

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v2, "contactid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$500()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 886
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v10, 0x1e

    .line 887
    .local v10, token:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;
    invoke-static {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    move-result-object v9

    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 898
    .end local v10           #token:I
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v24           #selection:Ljava/lang/StringBuffer;
    :cond_3
    :goto_4
    :try_start_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 904
    .end local v6           #initValues:Landroid/content/ContentValues;
    .end local v7           #initWhere:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v14           #where:Ljava/lang/String;
    .end local v16           #accountType:Ljava/lang/String;
    .end local v18           #displayName:Ljava/lang/String;
    .end local v20           #initSelection:Ljava/lang/StringBuffer;
    .end local v23           #number:Ljava/lang/String;
    .end local v25           #type:Ljava/lang/String;
    :cond_4
    if-eqz v17, :cond_5

    .line 905
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 908
    :cond_5
    :goto_5
    const/4 v2, 0x0

    return-object v2

    .line 833
    .restart local v6       #initValues:Landroid/content/ContentValues;
    .restart local v7       #initWhere:Ljava/lang/String;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    .restart local v16       #accountType:Ljava/lang/String;
    .restart local v18       #displayName:Ljava/lang/String;
    .restart local v20       #initSelection:Ljava/lang/StringBuffer;
    .restart local v23       #number:Ljava/lang/String;
    .restart local v25       #type:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 834
    .local v19, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 901
    .end local v6           #initValues:Landroid/content/ContentValues;
    .end local v7           #initWhere:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v16           #accountType:Ljava/lang/String;
    .end local v18           #displayName:Ljava/lang/String;
    .end local v19           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v20           #initSelection:Ljava/lang/StringBuffer;
    .end local v23           #number:Ljava/lang/String;
    .end local v25           #type:Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 902
    .local v19, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 904
    if-eqz v17, :cond_5

    .line 905
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 835
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v6       #initValues:Landroid/content/ContentValues;
    .restart local v7       #initWhere:Ljava/lang/String;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    .restart local v16       #accountType:Ljava/lang/String;
    .restart local v18       #displayName:Ljava/lang/String;
    .restart local v20       #initSelection:Ljava/lang/StringBuffer;
    .restart local v23       #number:Ljava/lang/String;
    .restart local v25       #type:Ljava/lang/String;
    :catch_2
    move-exception v19

    .line 836
    .local v19, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 904
    .end local v6           #initValues:Landroid/content/ContentValues;
    .end local v7           #initWhere:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v16           #accountType:Ljava/lang/String;
    .end local v18           #displayName:Ljava/lang/String;
    .end local v19           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v20           #initSelection:Ljava/lang/StringBuffer;
    .end local v23           #number:Ljava/lang/String;
    .end local v25           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_6

    .line 905
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 837
    .restart local v6       #initValues:Landroid/content/ContentValues;
    .restart local v7       #initWhere:Ljava/lang/String;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    .restart local v16       #accountType:Ljava/lang/String;
    .restart local v18       #displayName:Ljava/lang/String;
    .restart local v20       #initSelection:Ljava/lang/StringBuffer;
    .restart local v23       #number:Ljava/lang/String;
    .restart local v25       #type:Ljava/lang/String;
    :catch_3
    move-exception v19

    .line 838
    .local v19, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 868
    .end local v19           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local v14       #where:Ljava/lang/String;
    .restart local v21       #minmatch:Ljava/lang/String;
    .restart local v22       #minmatchReverse:Ljava/lang/String;
    .restart local v24       #selection:Ljava/lang/StringBuffer;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 871
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 877
    .end local v21           #minmatch:Ljava/lang/String;
    .end local v22           #minmatchReverse:Ljava/lang/String;
    :cond_9
    const-string v2, "number"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 886
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_a
    const/16 v10, 0x14

    goto/16 :goto_3

    .line 889
    :catch_4
    move-exception v19

    .line 890
    .local v19, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 891
    .end local v19           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_5
    move-exception v19

    .line 892
    .local v19, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 893
    .end local v19           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_6
    move-exception v19

    .line 894
    .local v19, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V
    .locals 2
    .parameter "target"
    .parameter "result"

    .prologue
    .line 786
    invoke-super {p0, p1, p2}, Lcom/android/contacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 787
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getAdapter()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setUpdateEnable(Z)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parent:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->startQuery()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 790
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->onPostExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 756
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parentContext:Landroid/content/Context;

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parentContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parentContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 758
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$302(Landroid/content/Context;)Landroid/content/Context;

    .line 762
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 763
    const-string v0, "contactid"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$500()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->parentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v5, "contactid"

    aput-object v5, v2, v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 767
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getAdapter()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setUpdateEnable(Z)V

    .line 769
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 770
    iget-boolean v1, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    if-nez v1, :cond_1

    .line 771
    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 772
    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$900(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 776
    :cond_1
    if-eqz v0, :cond_2

    .line 777
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 780
    :cond_2
    iput-boolean v7, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    .line 781
    #setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z
    invoke-static {p1, v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z

    .line 782
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 742
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->onPreExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    return-void
.end method

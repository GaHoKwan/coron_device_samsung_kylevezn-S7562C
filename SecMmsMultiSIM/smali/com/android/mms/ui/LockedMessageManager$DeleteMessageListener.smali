.class Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LockedMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mbIsDeleteLockedMsg:Z

.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "bIsDeleteLockedMessage"

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1895
    iput-object p2, p0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    .line 1896
    iput-boolean p3, p0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    .line 1897
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 29
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 1901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    #calls: Lcom/android/mms/ui/LockedMessageManager;->deleteMessage(Landroid/net/Uri;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/LockedMessageManager;->access$2700(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V

    .line 2005
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2006
    return-void

    .line 1914
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    .local v9, arrayDeleteUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/16 v24, 0x0

    .line 1916
    .local v24, sizeCheckedMsg:I
    const/4 v12, 0x0

    .line 1918
    .local v12, deleteCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    .line 1919
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1920
    const/4 v10, 0x0

    .line 1921
    .local v10, checked:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCheckedCount()I

    move-result v24

    .line 1922
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 1923
    .local v25, sizeCursor:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v25

    if-ge v14, v0, :cond_7

    .line 1924
    const/16 v18, 0x0

    .line 1925
    .local v18, idxMsgType:I
    const/16 v17, 0x1

    .line 1926
    .local v17, idxMsgId:I
    const/16 v15, 0x15

    .line 1927
    .local v15, idxGroupId:I
    const/16 v16, 0x14

    .line 1930
    .local v16, idxLockedMsg:I
    :try_start_0
    const-string v3, "transport_type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 1934
    :goto_2
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1937
    .local v26, szMessageType:Ljava/lang/String;
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 1941
    :goto_3
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1944
    .local v21, lMessageId:J
    :try_start_2
    const-string v3, "group_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    .line 1948
    :goto_4
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1951
    .local v19, lMessageGroupId:J
    :try_start_3
    const-string v3, "locked"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v16

    .line 1955
    :goto_5
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v23, 0x1

    .line 1957
    .local v23, lMessageLocked:Z
    :goto_6
    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    if-nez v3, :cond_2

    .line 1958
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1923
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1931
    .end local v19           #lMessageGroupId:J
    .end local v21           #lMessageId:J
    .end local v23           #lMessageLocked:Z
    .end local v26           #szMessageType:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1932
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1938
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v26       #szMessageType:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 1939
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1945
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v21       #lMessageId:J
    :catch_2
    move-exception v13

    .line 1946
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1952
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v19       #lMessageGroupId:J
    :catch_3
    move-exception v13

    .line 1953
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1955
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    const/16 v23, 0x0

    goto :goto_6

    .line 1962
    .restart local v23       #lMessageLocked:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v3

    move-wide/from16 v0, v21

    move-object/from16 v2, v26

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v10

    .line 1964
    if-nez v10, :cond_3

    .line 1965
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    .line 1969
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 1970
    const-string v3, "mms"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1971
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1983
    .local v6, deleteUri:Landroid/net/Uri;
    :goto_8
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    .line 1972
    .end local v6           #deleteUri:Landroid/net/Uri;
    :cond_4
    const-string v3, "wpm"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1973
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #deleteUri:Landroid/net/Uri;
    goto :goto_8

    .line 1976
    .end local v6           #deleteUri:Landroid/net/Uri;
    :cond_5
    cmp-long v3, v21, v19

    if-nez v3, :cond_6

    .line 1977
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #deleteUri:Landroid/net/Uri;
    goto :goto_8

    .line 1980
    .end local v6           #deleteUri:Landroid/net/Uri;
    :cond_6
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #deleteUri:Landroid/net/Uri;
    goto :goto_8

    .line 1988
    .end local v6           #deleteUri:Landroid/net/Uri;
    .end local v10           #checked:Z
    .end local v14           #i:I
    .end local v15           #idxGroupId:I
    .end local v16           #idxLockedMsg:I
    .end local v17           #idxMsgId:I
    .end local v18           #idxMsgType:I
    .end local v19           #lMessageGroupId:J
    .end local v21           #lMessageId:J
    .end local v23           #lMessageLocked:Z
    .end local v25           #sizeCursor:I
    .end local v26           #szMessageType:Ljava/lang/String;
    :cond_7
    if-nez v12, :cond_8

    .line 1989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto/16 :goto_0

    .line 1991
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$2800(Lcom/android/mms/ui/LockedMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$2800(Lcom/android/mms/ui/LockedMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1994
    :cond_9
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_9
    if-ge v14, v12, :cond_d

    .line 1995
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1996
    .restart local v6       #deleteUri:Landroid/net/Uri;
    if-eqz v6, :cond_a

    .line 1997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$2900(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    move-result-object v3

    const/16 v4, 0x70a

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v27, 0x0

    add-int/lit8 v7, v12, -0x1

    if-ne v14, v7, :cond_b

    const/4 v7, 0x1

    :goto_a
    move-wide/from16 v0, v27

    invoke-direct {v5, v0, v1, v7}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    :goto_b
    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1994
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 1997
    :cond_b
    const/4 v7, 0x0

    goto :goto_a

    :cond_c
    const-string v7, "locked=0"

    goto :goto_b

    .line 2001
    .end local v6           #deleteUri:Landroid/net/Uri;
    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

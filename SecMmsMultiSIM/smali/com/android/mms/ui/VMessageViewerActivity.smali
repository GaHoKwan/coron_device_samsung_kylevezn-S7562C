.class public Lcom/android/mms/ui/VMessageViewerActivity;
.super Landroid/app/Activity;
.source "VMessageViewerActivity.java"


# static fields
.field private static final VMSG_BODY:I = 0x5

.field private static final VMSG_DATE:I = 0x4

.field private static final VMSG_INBOX_ADDR:I = 0x2

.field private static final VMSG_SENT_ADDR:I = 0x3

.field private static final VMSG_TYPE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMessageList:Landroid/widget/ListView;

.field private mMsgListAdapter:Lcom/android/mms/ui/VMessageListAdapter;

.field private msgItem:Lcom/android/mms/ui/MsgItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, "VMessageViewerActivity"

    iput-object v0, p0, Lcom/android/mms/ui/VMessageViewerActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public importMessageFromSDCARD()Z
    .locals 18

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 129
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 131
    .local v8, content:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 134
    .local v12, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 135
    new-instance v1, Lcom/android/mms/ui/VMessage;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Lcom/android/mms/ui/VMessage;->readStreamFromViewer1(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v7

    .line 136
    .local v7, arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mma, yyyy MMM dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 137
    .local v16, sdf:Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 140
    .local v9, date:Ljava/util/Date;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 141
    .local v13, msgType:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    .local v3, body:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 144
    .local v17, time:Ljava/lang/String;
    const-string v1, "SENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, addr:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 152
    const v1, 0x7f0a0188

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    :cond_0
    if-nez v17, :cond_1

    .line 155
    const-string v17, "2000.1.1.12.00.00"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 158
    :cond_1
    :try_start_1
    invoke-virtual/range {v16 .. v17}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 163
    :goto_1
    const-wide/16 v14, 0x0

    .line 165
    .local v14, restoreTime:J
    if-eqz v9, :cond_3

    .line 166
    :try_start_2
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 175
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "SENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    .line 182
    :goto_3
    const/4 v1, 0x1

    .line 188
    .end local v2           #addr:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v7           #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #date:Ljava/util/Date;
    .end local v13           #msgType:Ljava/lang/String;
    .end local v14           #restoreTime:J
    .end local v16           #sdf:Ljava/text/SimpleDateFormat;
    .end local v17           #time:Ljava/lang/String;
    :goto_4
    return v1

    .line 147
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #date:Ljava/util/Date;
    .restart local v13       #msgType:Ljava/lang/String;
    .restart local v16       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v17       #time:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2       #addr:Ljava/lang/String;
    goto :goto_0

    .line 159
    :catch_0
    move-exception v10

    .line 160
    .local v10, e:Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 183
    .end local v2           #addr:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v7           #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #date:Ljava/util/Date;
    .end local v10           #e:Ljava/text/ParseException;
    .end local v13           #msgType:Ljava/lang/String;
    .end local v16           #sdf:Ljava/text/SimpleDateFormat;
    .end local v17           #time:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 184
    .local v10, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :goto_5
    const/4 v1, 0x0

    goto :goto_4

    .line 169
    .restart local v2       #addr:Ljava/lang/String;
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #date:Ljava/util/Date;
    .restart local v13       #msgType:Ljava/lang/String;
    .restart local v14       #restoreTime:J
    .restart local v16       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v17       #time:Ljava/lang/String;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/VMessageViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "value of date is null!"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    goto :goto_2

    .line 180
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 185
    .end local v2           #addr:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v7           #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #date:Ljava/util/Date;
    .end local v13           #msgType:Ljava/lang/String;
    .end local v14           #restoreTime:J
    .end local v16           #sdf:Ljava/text/SimpleDateFormat;
    .end local v17           #time:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 186
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v9, 0x7f03009c

    invoke-virtual {p0, v9}, Landroid/app/Activity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 63
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, content:Landroid/net/Uri;
    new-instance v9, Lcom/android/mms/ui/MsgItem;

    invoke-direct {v9}, Lcom/android/mms/ui/MsgItem;-><init>()V

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    .line 67
    if-eqz v1, :cond_0

    .line 68
    const/4 v8, 0x0

    .line 70
    .local v8, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 72
    new-instance v9, Lcom/android/mms/ui/VMessage;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Lcom/android/mms/ui/VMessage;->readStreamFromViewer2(Ljava/io/InputStream;)Lcom/android/mms/ui/MsgItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 83
    if-eqz v8, :cond_0

    .line 85
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 95
    .end local v8           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget v9, v9, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget v9, v9, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget-object v9, v9, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 96
    :cond_2
    const v9, 0x7f0a033f

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 125
    :goto_1
    return-void

    .line 74
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 76
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    if-eqz v8, :cond_0

    .line 85
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v7

    .line 88
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    .local v7, ioe:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 79
    .local v6, iobe:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    if-eqz v8, :cond_0

    .line 85
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 86
    :catch_3
    move-exception v7

    goto :goto_2

    .line 80
    .end local v6           #iobe:Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v2

    .line 81
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 83
    if-eqz v8, :cond_0

    .line 85
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 86
    :catch_5
    move-exception v7

    goto :goto_2

    .line 83
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_3

    .line 85
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 83
    :cond_3
    :goto_3
    throw v9

    .line 101
    .end local v8           #is:Ljava/io/InputStream;
    :cond_4
    const v9, 0x7f0e0245

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMessageList:Landroid/widget/ListView;

    .line 102
    new-instance v9, Lcom/android/mms/ui/VMessageListAdapter;

    const v10, 0x7f03009d

    iget-object v11, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    invoke-direct {v9, p0, v10, v11}, Lcom/android/mms/ui/VMessageListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MsgItem;)V

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMsgListAdapter:Lcom/android/mms/ui/VMessageListAdapter;

    .line 103
    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMessageList:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMsgListAdapter:Lcom/android/mms/ui/VMessageListAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    const v9, 0x7f0e01de

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 107
    .local v4, importButton:Landroid/widget/Button;
    new-instance v9, Lcom/android/mms/ui/VMessageViewerActivity$1;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/VMessageViewerActivity$1;-><init>(Lcom/android/mms/ui/VMessageViewerActivity;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v9, 0x7f0e01df

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 120
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v9, Lcom/android/mms/ui/VMessageViewerActivity$2;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/VMessageViewerActivity$2;-><init>(Lcom/android/mms/ui/VMessageViewerActivity;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 86
    .end local v0           #cancelButton:Landroid/widget/Button;
    .end local v4           #importButton:Landroid/widget/Button;
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v7

    .line 88
    .restart local v7       #ioe:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 86
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_7
    move-exception v7

    goto :goto_2
.end method

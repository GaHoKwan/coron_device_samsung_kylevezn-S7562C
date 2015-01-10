.class Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;
.super Ljava/lang/Thread;
.source "SetupSpamNumberList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method private constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 153
    .local v10, msg:Landroid/os/Message;
    const/16 v3, 0x64

    iput v3, v10, Landroid/os/Message;->what:I

    .line 156
    const/4 v7, 0x0

    .line 157
    .local v7, contact_cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 158
    .local v11, shouldDefaultName:Z
    const/4 v9, 0x0

    .line 159
    .local v9, index:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v3

    if-nez v3, :cond_4

    move v9, v0

    .line 162
    :cond_0
    :goto_0
    const-string v0, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryThread start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 166
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 168
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 172
    if-eqz v7, :cond_1

    .line 173
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 178
    .local v6, columnIndex:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->setContactName(Ljava/lang/String;)V

    .line 190
    .end local v6           #columnIndex:I
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 191
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_2
    if-eqz v11, :cond_3

    .line 195
    const/4 v11, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$500(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->setContactName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_4
    move v9, v2

    .line 160
    goto/16 :goto_0

    .line 182
    .restart local v1       #contactUri:Landroid/net/Uri;
    .restart local v6       #columnIndex:I
    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    .line 186
    .end local v6           #columnIndex:I
    :cond_6
    const/4 v11, 0x1

    goto :goto_2

    .line 202
    .end local v1           #contactUri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 203
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz v7, :cond_7

    .line 206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryThread end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.class Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2280
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$2600(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2283
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    move-result-object v0

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$2600(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v5

    const/4 v14, 0x0

    invoke-direct {v2, v3, v4, v5, v14}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLandroid/net/Uri;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$2600(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2328
    :cond_0
    :goto_0
    return-void

    .line 2286
    :cond_1
    const/4 v8, 0x0

    .line 2288
    .local v8, deleteCount:I
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$2800(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2289
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$2800(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2291
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 2292
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$2900(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Z

    move-result v1

    #calls: Lcom/android/mms/ui/BoxListFrame;->getCountOfNotDelMsg(Landroid/database/Cursor;Z)I
    invoke-static {v0, v7, v1}, Lcom/android/mms/ui/BoxListFrame;->access$3000(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;Z)I

    move-result v13

    .line 2293
    .local v13, notDelLockedMsgCount:I
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2295
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2296
    .local v10, msgId:J
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/mms/ui/BoxListAdapter;->isCheckedMsgId(JLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2297
    const/16 v0, 0xb

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2298
    .local v12, msgLock:I
    if-nez v12, :cond_8

    .line 2299
    add-int/lit8 v8, v8, 0x1

    .line 2304
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$2900(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Z

    move-result v1

    #calls: Lcom/android/mms/ui/BoxListFrame;->deleteMessage(Landroid/database/Cursor;ZII)V
    invoke-static {v0, v7, v1, v8, v13}, Lcom/android/mms/ui/BoxListFrame;->access$3100(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;ZII)V

    .line 2306
    .end local v12           #msgLock:I
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2308
    .end local v10           #msgId:J
    :cond_6
    if-nez v8, :cond_7

    .line 2309
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$3200(Lcom/android/mms/ui/BoxListFrame;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2310
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$3200(Lcom/android/mms/ui/BoxListFrame;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2313
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$3300(Lcom/android/mms/ui/BoxListFrame;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2314
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 2317
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2319
    .local v6, GcfMode:Ljava/lang/String;
    const-string v0, "On"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2320
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCF Mode On"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 2323
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2324
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2301
    .end local v6           #GcfMode:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v10       #msgId:J
    .restart local v12       #msgLock:I
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->access$2900(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2302
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

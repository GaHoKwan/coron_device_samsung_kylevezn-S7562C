.class Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;
.super Ljava/lang/Object;
.source "ContactHistoryListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x10008000

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 272
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setCheckPosition(I)V

    .line 273
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateAllCheckState()V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 280
    const-wide/16 v0, 0x0

    .line 281
    if-eqz v2, :cond_2

    .line 283
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 287
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 291
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    const-string v0, "videocall"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 306
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    const-string v0, "voipcall"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 314
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    const/16 v3, 0x12c

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMmsForTablet(IJLjava/lang/String;)V
    invoke-static {v2, v3, v0, v1, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 317
    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMmsForTablet(IJLjava/lang/String;)V
    invoke-static {v2, v3, v0, v1, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V
    invoke-static {v2, v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;J)V

    goto/16 :goto_0

    .line 324
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v3, "voicemail"

    const-string v4, ""

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 326
    const-string v2, "MESSAGE_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 333
    :cond_3
    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 338
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const-string v2, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v0, "EXTRA_CALL_LOG_CONTACT"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 348
    :sswitch_8
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v3, "voicemail"

    const-string v4, ""

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    const-string v2, "MESSAGE_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 357
    :sswitch_9
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    const/16 v3, 0x12c

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(IJ)V
    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V

    goto/16 :goto_0

    .line 364
    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    const/16 v3, 0xc8

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(IJ)V
    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V

    goto/16 :goto_0

    .line 368
    :sswitch_b
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V
    invoke-static {v2, v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;J)V

    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_3
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
        0x384 -> :sswitch_6
        0x3e8 -> :sswitch_0
    .end sparse-switch

    .line 333
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_a
        0x12c -> :sswitch_9
        0x190 -> :sswitch_b
        0x1f4 -> :sswitch_7
        0x320 -> :sswitch_7
        0x384 -> :sswitch_8
        0x3e8 -> :sswitch_7
    .end sparse-switch
.end method

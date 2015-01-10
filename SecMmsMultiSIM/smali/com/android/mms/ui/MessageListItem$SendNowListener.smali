.class Lcom/android/mms/ui/MessageListItem$SendNowListener;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendNowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter
    .parameter "msgItem"

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2476
    const-string v3, "Mms/MessageListItem"

    const-string v4, "SendNowListener"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    iget-wide v0, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    .line 2479
    .local v0, mThreadId:J
    const/4 v2, 0x0

    .line 2480
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "sms"

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2481
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2485
    :cond_0
    :goto_0
    const-string v3, "Mms/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNow(),msgItem.mType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageListItem;->access$4502(Lcom/android/mms/ui/MessageListItem;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2488
    const-string v3, "Mms/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNow(),sendnowUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/ui/MessageListItem;->access$4500(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageListItem;->access$4602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 2491
    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageListItem;->access$4702(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 2492
    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/ui/MessageListItem;->access$4802(Lcom/android/mms/ui/MessageListItem;J)J

    .line 2493
    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageListItem;->access$4902(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 2494
    iget v3, p2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v3, v3

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/ui/MessageListItem;->access$5002(Lcom/android/mms/ui/MessageListItem;J)J

    .line 2495
    iget-boolean v3, p2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageListItem;->access$5102(Lcom/android/mms/ui/MessageListItem;Z)Z

    .line 2496
    iget v3, p2, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageListItem;->access$5202(Lcom/android/mms/ui/MessageListItem;I)I

    .line 2497
    return-void

    .line 2482
    :cond_1
    const-string v3, "mms"

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2483
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2500
    const-string v1, "sms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2501
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$4700(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2503
    .local v2, szDests:[Ljava/lang/String;
    const-string v1, "Mms/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendNowListener() mSendSimSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$5200(Lcom/android/mms/ui/MessageListItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$5300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$4800(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$5200(Lcom/android/mms/ui/MessageListItem;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v1, v0

    .line 2505
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5100(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    .line 2506
    const-string v1, "Mms/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),szDests = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgItem.mBody = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$4900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$4800(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$4800(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 2512
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$5400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4500(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2513
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$4800(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2533
    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v2           #szDests:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2534
    return-void

    .line 2514
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    .restart local v2       #szDests:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2515
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, mSendNowThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$4800(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2519
    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v2           #szDests:[Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    const-string v1, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2520
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$5600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$4500(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v5

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$5000(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$5200(Lcom/android/mms/ui/MessageListItem;)I

    move-result v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 2521
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    const-string v1, "Mms/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),sendnowUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$4500(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSendNowSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$5000(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$4800(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2526
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$5700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4500(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2527
    :cond_2
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$4800(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2528
    :catch_1
    move-exception v9

    .line 2529
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$4500(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$4800(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

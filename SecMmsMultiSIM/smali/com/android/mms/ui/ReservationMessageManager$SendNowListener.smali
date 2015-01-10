.class Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendNowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter
    .parameter "msgItem"

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1852
    const-string v3, "Mms/ReservationMessageManager"

    const-string v4, "SendNowListener"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    iget-wide v0, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    .line 1855
    .local v0, mThreadId:J
    const/4 v2, 0x0

    .line 1856
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "sms"

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1857
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1861
    :cond_0
    :goto_0
    const-string v3, "Mms/ReservationMessageManager"

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

    .line 1863
    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1, v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2902(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1864
    const-string v3, "Mms/ReservationMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNow(),sendnowUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3002(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1867
    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3102(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1868
    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3202(Lcom/android/mms/ui/ReservationMessageManager;J)J

    .line 1869
    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3302(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1870
    iget v3, p2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v3, v3

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3402(Lcom/android/mms/ui/ReservationMessageManager;J)J

    .line 1871
    iget-boolean v3, p2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3502(Lcom/android/mms/ui/ReservationMessageManager;Z)Z

    .line 1872
    return-void

    .line 1858
    :cond_1
    const-string v3, "mms"

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1859
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1875
    const-string v1, "sms"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3000(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1876
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3100(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1878
    .local v2, szDests:[Ljava/lang/String;
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3300(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3200(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v1, v0

    .line 1879
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3500(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    .line 1880
    const-string v1, "Mms/ReservationMessageManager"

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

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3300(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3200(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3200(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 1886
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1887
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3200(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v2           #szDests:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1912
    :goto_1
    return-void

    .line 1888
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    .restart local v2       #szDests:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1889
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, mSendNowThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3200(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1893
    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v2           #szDests:[Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    const-string v1, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3000(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1894
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Setting_EnableUSM"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1895
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->showUsmWarningDialog(Landroid/app/Activity;)V

    goto :goto_1

    .line 1898
    :cond_2
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3400(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1899
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),sendnowUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSendNowSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3400(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3200(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1904
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1905
    :cond_3
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3200(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1906
    :catch_1
    move-exception v7

    .line 1907
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$3200(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

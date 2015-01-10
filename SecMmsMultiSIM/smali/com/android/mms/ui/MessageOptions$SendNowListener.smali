.class public Lcom/android/mms/ui/MessageOptions$SendNowListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendNowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter
    .parameter "msgItem"

    .prologue
    .line 2877
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2879
    const-string v3, "Mms/MessageOptions"

    const-string v4, "SendNowListener"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    iget-wide v0, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    .line 2882
    .local v0, mThreadId:J
    const/4 v2, 0x0

    .line 2883
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "sms"

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2884
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2888
    :cond_0
    :goto_0
    const-string v3, "Mms/MessageOptions"

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

    .line 2890
    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    #setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$602(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2891
    const-string v3, "Mms/MessageOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNow(),sendnowUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$702(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 2894
    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$802(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 2895
    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    #setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/ui/MessageOptions;->access$902(Lcom/android/mms/ui/MessageOptions;J)J

    .line 2896
    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    #setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1002(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 2897
    iget v3, p2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v3, v3

    #setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/ui/MessageOptions;->access$1102(Lcom/android/mms/ui/MessageOptions;J)J

    .line 2898
    iget-boolean v3, p2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    #setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1202(Lcom/android/mms/ui/MessageOptions;Z)Z

    .line 2899
    iget v3, p2, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    #setter for: Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1302(Lcom/android/mms/ui/MessageOptions;I)I

    .line 2900
    return-void

    .line 2885
    :cond_1
    const-string v3, "mms"

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2886
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2903
    const-string v1, "sms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$700(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2904
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$800(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2906
    .local v2, szDests:[Ljava/lang/String;
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendNowListener() mSendSimSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1300(Lcom/android/mms/ui/MessageOptions;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I
    invoke-static {v6}, Lcom/android/mms/ui/MessageOptions;->access$1300(Lcom/android/mms/ui/MessageOptions;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v1, v0

    .line 2908
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    .line 2909
    const-string v1, "Mms/MessageOptions"

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

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 2915
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2916
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v3, v3, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2922
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2923
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #calls: Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$300(Lcom/android/mms/ui/MessageOptions;)V

    .line 2951
    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v2           #szDests:[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2952
    :goto_2
    return-void

    .line 2917
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    .restart local v2       #szDests:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2918
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, mSendNowThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2925
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 2927
    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v2           #szDests:[Ljava/lang/String;
    :cond_2
    const-string v1, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$700(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2928
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Setting_EnableUSM"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2929
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->showUsmWarningDialog(Landroid/app/Activity;)V

    goto :goto_2

    .line 2932
    :cond_3
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v4, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v5

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1100(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1300(Lcom/android/mms/ui/MessageOptions;)I

    move-result v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 2933
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),sendnowUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSendNowSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1100(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2938
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2939
    :cond_4
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v3, v3, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2945
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2946
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #calls: Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$300(Lcom/android/mms/ui/MessageOptions;)V

    goto/16 :goto_1

    .line 2940
    :catch_1
    move-exception v9

    .line 2941
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2948
    .end local v9           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method

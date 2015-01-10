.class Lcom/android/phone/CallNotifier$MissedCallRunnable;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedCallRunnable"
.end annotation


# instance fields
.field c:Lcom/android/internal/telephony/Connection;

.field final date:J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "date"

    .prologue
    .line 4049
    iput-object p1, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4050
    iput-object p2, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    .line 4051
    iput-wide p3, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    .line 4052
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 4055
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "MissedCallRunnable: run..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v8}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 4056
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    iget-object v4, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    iget-wide v5, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v10

    .line 4058
    .local v10, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v10, :cond_6

    .line 4061
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "showMissedCallNotification: Querying for CallerInfo on missed call..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v8}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 4062
    iget-boolean v0, v10, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_1

    .line 4065
    iget-object v9, v10, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 4070
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, v9, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 4072
    .local v1, name:Ljava/lang/String;
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4073
    :cond_0
    iget-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 4078
    .local v2, number:Ljava/lang/String;
    :goto_0
    iget v0, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_3

    .line 4079
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v3, 0x7f0e0006

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4086
    :goto_1
    const-string v0, "enable_dormant_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4087
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z
    invoke-static {v0, v3}, Lcom/android/phone/CallNotifier;->access$1802(Lcom/android/phone/CallNotifier;Z)Z

    .line 4088
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v9, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget-wide v6, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JZ)V

    .line 4100
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    :goto_2
    return-void

    .line 4075
    .restart local v1       #name:Ljava/lang/String;
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_2
    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #number:Ljava/lang/String;
    goto :goto_0

    .line 4080
    :cond_3
    iget v0, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_4

    .line 4081
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v3, 0x7f0e0004

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4083
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v3, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v9, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4091
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v9, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget-wide v6, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto :goto_2

    .line 4098
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_6
    const-string v0, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2
.end method

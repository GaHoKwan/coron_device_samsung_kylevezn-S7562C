.class public Lcom/android/phone/RcsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RcsBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/android/phone/RcsBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 112
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    .line 116
    :cond_0
    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    .prologue
    .line 229
    sget-object v1, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createIntentFilter()"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v1, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "com.samsung.rcs.framework.instantmessaging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 255
    const-string v1, "com.samsung.rcs.framework.instantmessaging.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 257
    const-string v1, "com.samsung.rcs.framework.filetransfer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 258
    const-string v1, "com.samsung.rcs.framework.filetransfer.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 260
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TRANSFERING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 269
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 137
    sget-object v5, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, action:Ljava/lang/String;
    const-wide/16 v3, -0x1

    .line 141
    .local v3, sessionId:J
    const/4 v2, -0x1

    .line 142
    .local v2, reason:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 144
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 146
    const-string v5, "reason"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 147
    const-string v5, "sessionId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 149
    :cond_0
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/os/Bundle;)V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 157
    :cond_3
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    sget-object v5, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShareIncoming sessionId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_4
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_PROGRESS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 163
    sget-object v5, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShareProgress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_5
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 167
    sget-object v5, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShareInterrupted sessionId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v5, v2}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto :goto_0

    .line 170
    :cond_6
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 172
    sget-object v5, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShareCompleted sessionId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :cond_7
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 176
    sget-object v5, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShareCanceled sessionId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v5, v2}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_0

    .line 179
    :cond_8
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 181
    sget-object v5, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShareConnected sessionId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    :cond_9
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 185
    sget-object v5, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShareTerminated sessionId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v6, 0xb

    invoke-interface {v5, v6}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_0

    .line 188
    :cond_a
    const-string v5, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 205
    :cond_b
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v5, v0}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_c
    const-string v5, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 210
    :cond_d
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v5, p2}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleIncommingIMandFT(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 212
    :cond_e
    const-string v5, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 214
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v5, p2}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleCshInfo(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    :cond_f
    const-string v5, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 217
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v5, v0}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_10
    const-string v5, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v5, v0}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    .line 121
    invoke-static {}, Lcom/android/phone/RcsBroadcastReceiver;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    .line 128
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    :cond_0
    return-void
.end method

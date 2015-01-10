.class public Lcom/android/mms/transaction/MessagingNotificationAlert;
.super Landroid/app/Service;
.source "MessagingNotificationAlert.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# static fields
.field private static final ALERTONCALL_MODE:Ljava/lang/String; = "alertoncall_mode"

.field private static final ALERTONCALL_OFF:I = 0x0

.field private static final ALERTONCALL_SOUND:I = 0x1

.field private static final ALERTONCALL_VIBRATE:I = 0x3

.field private static final ALERTONCALL_VOICE:I = 0x2

.field private static final DB_KEY_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DRIVINGMODE_ON:I = 0x1

.field private static final NOTIFICATION_VIBRATE:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingNotificationAlert"

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_TIMEOUT_BUFFER:I = 0x14

.field private static final VLINGO_SVOICE_PACKAGE_NAME:Ljava/lang/String; = "com.vlingo.midas"

.field private static final VLINGO_TALKBACK_PACKAGE_NAME:Ljava/lang/String; = "com.vlingo.client.samsung"

.field public static mMediaPlayer:Landroid/media/MediaPlayer;


# instance fields
.field private final ALERTONCALL_VOLUME_SIZE:F

.field private IsCMASType:Z

.field private alertOnCallOff:Z

.field private alertOnChatonCallOff:Z

.field private drivingMode:I

.field private initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mServiceStartId:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private senderRingtonePath:Ljava/lang/String;

.field private simSlot:I

.field private speechInfoText:Ljava/lang/String;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 70
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->ALERTONCALL_VOLUME_SIZE:F

    .line 73
    iput-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 80
    iput-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    .line 85
    iput-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->senderRingtonePath:Ljava/lang/String;

    .line 86
    iput v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->simSlot:I

    .line 88
    new-instance v0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotificationAlert$1;-><init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 407
    new-instance v0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotificationAlert$2;-><init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->setVolume(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/MessagingNotificationAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->speakNewMessageInfo()V

    return-void
.end method

.method private checkVlingoAccepted(Z)Z
    .locals 9
    .parameter "sVoice"

    .prologue
    const/4 v2, 0x0

    .line 525
    const/4 v7, 0x0

    .line 526
    .local v7, isAccepted:Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 527
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 529
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 530
    const-string v3, "content://com.vlingo.client.vlingoconfigprovider/tos_accepted"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 536
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 537
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 538
    const-string v2, "Mms/MessagingNotificationAlert"

    const-string v3, "Vlingo can\'t send content provider yet"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x0

    .line 552
    :goto_1
    return v2

    .line 533
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    const-string v3, "content://com.vlingo.client.vlingoconfigprovider/readback_enabled"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 543
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 545
    .local v8, value:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 548
    .end local v8           #value:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 549
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v2, v7

    .line 552
    goto :goto_1

    .line 548
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    .line 549
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method private isOnCall()Z
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isCallOffhook()Z

    move-result v0

    return v0
.end method

.method private isOnChatonCall()Z
    .locals 3

    .prologue
    .line 124
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 125
    .local v1, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    :cond_0
    const/4 v2, 0x1

    .line 132
    .end local v1           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :goto_0
    return v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .end local v0           #e1:Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeAlertSoundOnCall()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 255
    const/4 v3, 0x0

    .line 256
    .local v3, ringtoneStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->senderRingtonePath:Ljava/lang/String;

    .line 260
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 263
    .local v4, sp:Landroid/content/SharedPreferences;
    iget v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->simSlot:I

    if-eqz v5, :cond_5

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pref_key_ringtone_sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->simSlot:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, preference_ringtone:Ljava/lang/String;
    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .end local v2           #preference_ringtone:Ljava/lang/String;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 275
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/mms/ui/MessageUtils;->checkRingtoneIsValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 280
    .local v1, messageSoundUri:Landroid/net/Uri;
    :goto_1
    :try_start_0
    sget-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_3

    .line 281
    sget-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 282
    const/4 v5, 0x0

    sput-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 285
    :cond_3
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 287
    sget-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_4

    .line 288
    sget-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 289
    sget-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 290
    sget-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 291
    sget-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v5}, Lcom/android/mms/transaction/MessagingNotificationAlert;->setVolume(Landroid/media/MediaPlayer;)V

    .line 292
    sget-object v5, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 293
    const-string v5, "Mms/MessagingNotificationAlert"

    const-string v6, "makeAlertSoundOnCall success"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_4
    :goto_2
    return-void

    .line 270
    .end local v1           #messageSoundUri:Landroid/net/Uri;
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    :cond_5
    const-string v5, "pref_key_ringtone"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 278
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_6
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 295
    .restart local v1       #messageSoundUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Mms/MessagingNotificationAlert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeAlertSound() cated Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private makeAlertType()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVibration4NotiDuringCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeVibrateOnCall()V

    .line 221
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 210
    :cond_1
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTone(I)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 212
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTone(I)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeAlertSoundOnCall()V

    goto :goto_0
.end method

.method private makeTone(I)V
    .locals 8
    .parameter "toneType"

    .prologue
    .line 350
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 352
    .local v0, audioManager:Landroid/media/AudioManager;
    const/16 v5, 0x50

    .line 353
    .local v5, toneVolume:I
    const/16 v4, 0x1f4

    .line 354
    .local v4, toneLengthMillis:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 357
    .local v2, ringerMode:I
    const/4 v3, 0x5

    .line 358
    .local v3, stream:I
    :try_start_0
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v3, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    .line 360
    if-eqz v2, :cond_0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_0

    .line 362
    iget-object v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v6, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 363
    const-string v6, "Mms/MessagingNotificationAlert"

    const-string v7, "makeTone success"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/16 v6, 0x208

    int-to-long v6, v6

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    :cond_0
    :goto_0
    iget v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v6}, Landroid/app/Service;->stopSelf(I)V

    .line 373
    return-void

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 368
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private makeTts()V
    .locals 3

    .prologue
    .line 399
    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 402
    const-string v1, "Mms/MessagingNotificationAlert"

    const-string v2, "TTS create failed."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0
.end method

.method private makeVibrate()V
    .locals 4

    .prologue
    .line 378
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 379
    .local v1, notification:Landroid/app/Notification;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 382
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v2, 0x11

    iput v2, v1, Landroid/app/Notification;->haptic:I

    .line 383
    const/16 v2, 0x7b

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 384
    const-string v2, "Mms/MessagingNotificationAlert"

    const-string v3, "makeVibrate success"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private makeVibrateOnCall()V
    .locals 3

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 393
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 394
    return-void
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "currentEngine"

    .prologue
    .line 556
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_0

    .line 557
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, localeString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 559
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, locale:[Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .local v3, newLocale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 563
    .local v0, engineLocale:Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 564
    const-string v4, "Mms/MessagingNotificationAlert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading language ahead of sample check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 569
    .end local v0           #engineLocale:Ljava/util/Locale;
    .end local v1           #locale:[Ljava/lang/String;
    .end local v2           #localeString:Ljava/lang/String;
    .end local v3           #newLocale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method private registerVolumeIntentReceiver()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, intentFilterVolume:Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method private setVolume(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    .line 308
    if-nez p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 313
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 314
    const/high16 v2, -0x4080

    .line 315
    .local v2, volume:F
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v2, v3

    .line 318
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    .line 320
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 321
    const v2, 0x3dcccccd

    .line 322
    :cond_2
    const-string v3, "Mms/MessagingNotificationAlert"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeAlertSoundOnCall() - am.getStreamVolume() volume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v3, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 324
    sget-object v3, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 330
    :cond_3
    const v2, 0x3dcccccd

    .line 333
    :try_start_0
    invoke-virtual {p1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    .line 336
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v3, "Mms/MessagingNotificationAlert"

    const-string v4, "setVolume() - IllegalStateException"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private speakNewMessageInfo()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 435
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 436
    .local v3, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnCall()Z

    move-result v5

    .line 437
    .local v5, onCall:Z
    if-eqz v5, :cond_5

    .line 438
    const-string v7, "streamType"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :goto_0
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 449
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, currentEngine:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 452
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_0
    new-instance v7, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 455
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->maybeUpdateTtsLanguage(Ljava/lang/String;)V

    .line 456
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 458
    .local v1, currentLocale:Ljava/util/Locale;
    if-nez v1, :cond_2

    .line 459
    const-string v7, "Mms/MessagingNotificationAlert"

    const-string v8, "mTts.getLanguage() returns null"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v2

    .line 462
    .local v2, languageResult:I
    const/4 v7, -0x2

    if-eq v2, v7, :cond_1

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 464
    :cond_1
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 465
    const-string v7, "Mms/MessagingNotificationAlert"

    const-string v8, "TTS cannot use system language, using Locale.US instead"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .end local v2           #languageResult:I
    :cond_2
    const v7, 0x7f070032

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, smsFrom:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    .line 473
    :cond_3
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 474
    const/4 v4, 0x0

    .line 475
    .local v4, nRet:I
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    invoke-virtual {v7, v8, v10, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v4

    .line 476
    const-string v7, "Mms/MessagingNotificationAlert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v7, "utteranceId"

    const-string v8, "New message tts ended"

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9, v10, v3}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v4

    .line 481
    const-string v7, "Mms/MessagingNotificationAlert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playSilence ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .end local v0           #currentEngine:Ljava/lang/String;
    .end local v1           #currentLocale:Ljava/util/Locale;
    .end local v4           #nRet:I
    .end local v6           #smsFrom:Ljava/lang/String;
    :cond_4
    return-void

    .line 440
    :cond_5
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 442
    const-string v7, "streamType"

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 444
    :cond_6
    const-string v7, "streamType"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static stopAlertSoundOnCall()V
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 303
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 305
    :cond_0
    return-void
.end method

.method private unregisterVolumeIntentReceiver()V
    .locals 3

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/MessagingNotificationAlert"

    const-string v2, "onDestroy : mVolumeChangeReceiver is not registered."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getTtsLocalString(I)Ljava/lang/String;
    .locals 7
    .parameter "resId"

    .prologue
    .line 573
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, defaultMessageTTS:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 576
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, currentLang:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, strings:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, langs:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 581
    aget-object v5, v3, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 582
    aget-object v5, v4, v2

    .line 586
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #langs:[Ljava/lang/String;
    .end local v4           #strings:[Ljava/lang/String;
    :goto_1
    return-object v5

    .line 580
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #langs:[Ljava/lang/String;
    .restart local v4       #strings:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #langs:[Ljava/lang/String;
    .end local v4           #strings:[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v1, v5

    goto :goto_1
.end method

.method public isVlingoAvailable()Z
    .locals 10

    .prologue
    .line 492
    const/4 v2, 0x0

    .line 493
    .local v2, isInstalledSvoice:Z
    const/4 v3, 0x0

    .line 494
    .local v3, isInstalledTalkback:Z
    const/4 v1, 0x0

    .line 496
    .local v1, isAccepted:Z
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 497
    .local v5, manager:Landroid/app/ActivityManager;
    if-eqz v5, :cond_1

    .line 498
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 499
    .local v4, liRunInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 501
    .local v6, objInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v7, "com.vlingo.midas"

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 502
    const/4 v2, 0x1

    .line 513
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #liRunInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6           #objInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 514
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->checkVlingoAccepted(Z)Z

    move-result v1

    .line 519
    :cond_2
    :goto_1
    const-string v7, "Mms/MessagingNotificationAlert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInstalledSvoice="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isInstalledTalkback="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isAccepted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return v1

    .line 505
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v4       #liRunInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6       #objInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    const-string v7, "com.vlingo.client.samsung"

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 506
    const/4 v3, 0x1

    .line 507
    goto :goto_0

    .line 515
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #liRunInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6           #objInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    if-eqz v3, :cond_2

    .line 516
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->checkVlingoAccepted(Z)Z

    move-result v1

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 115
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->registerVolumeIntentReceiver()V

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 227
    sget-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 229
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->unregisterVolumeIntentReceiver()V

    .line 234
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 236
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 241
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 243
    :cond_2
    const-string v0, "Mms/MessagingNotificationAlert"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 137
    const-string v4, "voip"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v3

    .line 138
    .local v3, voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "alertoncall_mode"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallOff:Z

    .line 140
    if-eqz v3, :cond_0

    .line 141
    :try_start_0
    invoke-interface {v3}, Landroid/os/IVoIPInterface;->getVoIPInCallAlert()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnChatonCallOff:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "driving_mode_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    .line 149
    iput p2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 152
    :try_start_1
    const-string v4, "simSlot"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->simSlot:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 157
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->isVlingoAvailable()Z

    move-result v2

    .line 160
    .local v2, isVlingoAvailable:Z
    :try_start_2
    const-string v4, "TTS_INFO"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    .line 161
    const-string v4, "IsCMASTyep"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    .line 163
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    const-string v4, "SenderRingtonePath"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->senderRingtonePath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnCall()Z

    move-result v1

    .line 172
    .local v1, isOnCall:Z
    const-string v4, "Mms/MessagingNotificationAlert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Driving mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Vlingo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isOnCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " alertOnCallMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallOff:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isCmas = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz v1, :cond_5

    .line 182
    iget-boolean v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallOff:Z

    if-eqz v4, :cond_4

    .line 183
    iget v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v4}, Landroid/app/Service;->stopSelf(I)V

    .line 203
    :cond_2
    :goto_4
    return-void

    .end local v1           #isOnCall:Z
    .end local v2           #isVlingoAvailable:Z
    :cond_3
    move v4, v6

    .line 138
    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #isOnCall:Z
    .restart local v2       #isVlingoAvailable:Z
    :cond_4
    iget-boolean v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    if-nez v4, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeAlertType()V

    goto :goto_4

    .line 189
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnChatonCall()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 190
    iget-boolean v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnChatonCallOff:Z

    if-eqz v4, :cond_6

    .line 191
    iget v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v4}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_4

    .line 193
    :cond_6
    iget-boolean v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->IsCMASType:Z

    if-nez v4, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeAlertType()V

    goto :goto_4

    .line 197
    :cond_7
    iget v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    if-ne v4, v5, :cond_8

    if-nez v2, :cond_8

    .line 198
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTts()V

    goto :goto_4

    .line 200
    :cond_8
    iget v4, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v4}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_4

    .line 167
    .end local v1           #isOnCall:Z
    :catch_1
    move-exception v4

    goto/16 :goto_3

    .line 153
    .end local v2           #isVlingoAvailable:Z
    :catch_2
    move-exception v4

    goto/16 :goto_2
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 488
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    .line 489
    return-void
.end method

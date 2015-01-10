.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$HeadsetRingtonePlayer;,
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/Ringer;


# instance fields
.field private final INIT_VOLUME:I

.field private final INIT_VOLUME_DELAY:I

.field private final RETURN_ORIGIN_VOLUME:I

.field private final VIB_TIME_IN_RING_AFTER_VIB:I

.field private mActiveSimCardId:I

.field mAudioManager:Landroid/media/AudioManager;

.field private mCallMotion:Lcom/android/phone/CallMotion;

.field private mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

.field mContext:Landroid/content/Context;

.field mCustomRingtoneUri:Landroid/net/Uri;

.field mCustomRingtoneUri2:Landroid/net/Uri;

.field mCustomVibrationUri:Landroid/net/Uri;

.field private mExtraRinger:Lcom/android/phone/ExtraRinger;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

.field private mIsRingEscalating:Z

.field private mIsRingRepeat:Z

.field private mOriginRingtoneVolume:I

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field private mRingtoneAfterVib:I

.field mVibrator:Landroid/os/SystemVibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/Ringer;->RETURN_ORIGIN_VOLUME:I

    .line 71
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/phone/Ringer;->INIT_VOLUME_DELAY:I

    .line 72
    iput v2, p0, Lcom/android/phone/Ringer;->INIT_VOLUME:I

    .line 75
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 82
    iput v1, p0, Lcom/android/phone/Ringer;->mActiveSimCardId:I

    .line 92
    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 93
    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 95
    iput v1, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    .line 97
    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    .line 98
    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 99
    iput-boolean v2, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    .line 102
    iput v1, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    .line 103
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/phone/Ringer;->VIB_TIME_IN_RING_AFTER_VIB:I

    .line 129
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 130
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    .line 131
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    .line 132
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    .line 134
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/android/phone/ExtraRinger;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/ExtraRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    .line 137
    :cond_0
    return-void
.end method

.method private StringToLongArray(Ljava/lang/String;)[J
    .locals 9
    .parameter "string"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 529
    if-nez p1, :cond_1

    move-object v2, v4

    .line 550
    :cond_0
    :goto_0
    return-object v2

    .line 532
    :cond_1
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, temp:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StringToLongArray, size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 535
    array-length v5, v3

    if-gtz v5, :cond_2

    .line 536
    const-string v5, "string is null"

    invoke-direct {p0, v5, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 537
    goto :goto_0

    .line 540
    :cond_2
    array-length v5, v3

    new-array v2, v5, [J

    .line 542
    .local v2, ret:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 543
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v1

    .line 544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 548
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/phone/Ringer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/phone/Ringer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/phone/Ringer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/Ringer;Ljava/lang/String;)[J
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Ringer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/Ringer;->mActiveSimCardId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/Ringer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/Ringer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/Ringer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/Ringer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    return-object v0
.end method

.method private getActualRingtonePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 797
    if-nez p1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-object v3

    .line 798
    :cond_1
    move-object v1, p1

    .line 799
    .local v1, actualUri:Landroid/net/Uri;
    const-string v0, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 802
    :cond_2
    if-eqz v1, :cond_0

    .line 803
    const/4 v6, 0x0

    .line 804
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 805
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 808
    :cond_3
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 809
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 814
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 811
    :catch_0
    move-exception v7

    .line 812
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .locals 4
    .parameter

    .prologue
    .line 117
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 118
    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    .line 123
    :goto_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 121
    :cond_0
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRingtonePlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 820
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 824
    const-string v0, "Ringer"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 825
    return-void
.end method

.method private makeLooper()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 620
    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 732
    :cond_0
    return-void
.end method


# virtual methods
.method initRingerContextForIMS(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 153
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextForVOIP..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 155
    return-void
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isTTSenabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, driveModeForIncoming:Z
    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 370
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 366
    goto :goto_0
.end method

.method isValidRingtoneURI(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 735
    const/4 v7, 0x0

    .line 736
    .local v7, returnValue:Z
    if-eqz p1, :cond_3

    .line 737
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 738
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .line 740
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 742
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    const/4 v7, 0x1

    .line 744
    :cond_2
    const-string v0, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / uri.getScheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    if-nez v7, :cond_4

    const-string v0, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidRingtoneURI : Invalid URI - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_4
    return v7
.end method

.method isVibrating()Z
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resetRingerContextFromIMS(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 158
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextForVOIP..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 160
    return-void
.end method

.method ring()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 207
    const-string v5, "ring()..."

    invoke-direct {p0, v5, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    const-string v5, "voip_interworking"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit p0

    .line 361
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v5, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "led_indicator_incoming_notification"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 217
    .local v2, ledNotification:I
    if-lez v2, :cond_1

    .line 218
    const-string v5, "setAttentionLight!"

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 221
    iget-object v5, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v6, 0x1

    const/16 v7, 0xff

    invoke-interface {v5, v6, v7}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    :cond_1
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_overturn"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v1, v4

    .line 232
    .local v1, isEnable:Z
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRingHandler: MOTION_OVERTURN is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 240
    iget-object v5, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 245
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v5, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 248
    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVoiceRecorder()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 250
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 252
    .local v3, ringerMode:I
    if-eq v3, v4, :cond_3

    if-nez v3, :cond_3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-lez v4, :cond_6

    :cond_3
    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v4, :cond_6

    .line 258
    new-instance v4, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 260
    const-string v4, "- starting vibrator...for voice recording"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 262
    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 274
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v4, :cond_4

    .line 276
    const-string v4, "Play Headset ringtone for voice recording.."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 278
    new-instance v4, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 280
    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 286
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    .line 360
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #isEnable:Z
    .end local v2           #ledNotification:I
    .end local v3           #ringerMode:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 223
    .restart local v2       #ledNotification:I
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v6, 0x1

    const v7, 0xffffff

    invoke-interface {v5, v6, v7}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 225
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .line 268
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #isEnable:Z
    .restart local v3       #ringerMode:I
    :cond_6
    :try_start_4
    const-string v4, "skipping ring because volume is zero for voice recording"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_2

    .line 292
    .end local v3           #ringerMode:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v4, :cond_8

    .line 294
    new-instance v4, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 295
    const-string v4, "- starting vibrator..."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 296
    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 298
    :cond_8
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eq v4, v8, :cond_b

    .line 305
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 306
    const-string v4, "skipping ring because volume is zero"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 307
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v4, :cond_a

    .line 308
    const-string v4, "Play Headset ringtone.."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 309
    new-instance v4, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 310
    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 312
    :cond_a
    monitor-exit p0

    goto/16 :goto_0

    .line 314
    :cond_b
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    .line 315
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    .line 316
    const-string v4, "check_ringtone_repeat"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 317
    const-string v4, "/system/media/audio/ringtones/Beep_once.ogg"

    iget-object v5, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/android/phone/Ringer;->getActualRingtonePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 318
    const-string v4, "Ringtone does not repeat"

    invoke-static {v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 319
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    .line 320
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    .line 323
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 324
    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v4, v4, v9

    if-gez v4, :cond_f

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 329
    iget v4, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    if-lez v4, :cond_e

    .line 330
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 337
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isTTSenabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 338
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 360
    :cond_d
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    .line 332
    :cond_e
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 345
    :cond_f
    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_10

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delaying ring by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v7, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 351
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v8, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 357
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method setActivePhone(I)V
    .locals 2
    .parameter "simSlotID"

    .prologue
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----Ringer: phone id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 614
    iput p1, p0, Lcom/android/phone/Ringer;->mActiveSimCardId:I

    .line 615
    return-void
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 594
    if-eqz p1, :cond_0

    .line 595
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 597
    :cond_0
    return-void
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;I)V
    .locals 1
    .parameter "uri"
    .parameter "simSlotID"

    .prologue
    .line 600
    if-eqz p1, :cond_0

    .line 601
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 602
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri2:Landroid/net/Uri;

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public setCustomVibrationUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 514
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 515
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    .line 517
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    .line 519
    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 520
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 521
    new-instance v0, Lcom/android/phone/Ringer$VibratorThread;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 522
    const-string v0, "- re-starting vibrator..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 523
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 526
    :cond_0
    return-void
.end method

.method shouldVibrate()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 374
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 376
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone_after_vibration"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    .line 378
    iget v4, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    if-lez v4, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v2

    .line 382
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 383
    .local v1, ringerMode:I
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 386
    :cond_2
    if-eq v1, v2, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method stopRing()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    const-string v1, "stopRing()..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v1, :cond_0

    .line 406
    const-string v1, "- stopRing: cleaning up headsetRingtone thread..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 407
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    .line 408
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 413
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 418
    :cond_1
    const-string v1, "extra_ringer"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    invoke-virtual {v1}, Lcom/android/phone/ExtraRinger;->stopExtraRinger()V

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 423
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 424
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 427
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 429
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 430
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 431
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 441
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 442
    const-string v1, "- stopRing: cleaning up vibrator thread..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 444
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 449
    :cond_4
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->cancel()V

    .line 451
    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-eqz v1, :cond_5

    .line 452
    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v1}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 455
    :cond_5
    monitor-exit p0

    .line 456
    return-void

    .line 433
    :cond_6
    const-string v1, "- stopRing: null mRingHandler!"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 434
    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 437
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto :goto_1

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 400
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method updateHeadsetRingtoneState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 779
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/Ringer;->mActiveSimCardId:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 786
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    .line 791
    iput-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    goto :goto_0
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 147
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 149
    return-void
.end method

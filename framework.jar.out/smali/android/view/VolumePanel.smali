.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$LoadListener;,
        Landroid/view/VolumePanel$WarningDialogReceiver;,
        Landroid/view/VolumePanel$StreamControl;,
        Landroid/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final EXTRA_BUTTON_OFF:I = 0x0

.field private static final EXTRA_BUTTON_ON:I = 0x1

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final NUM_VOLUME_EFFECT:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_VOLUME_CONTROL:I = 0x0

.field protected static final STREAMS:[Landroid/view/VolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static getCurrentFMVol:I

.field static getCurrentVol:I

.field static mIsLoadSoundPool:Z

.field static mPrevFMVol:I

.field static mPrevVol:I

.field static mProgressChanged:Z

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field protected final mSliderGroup:Landroid/view/ViewGroup;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    sput-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    .line 76
    sput-boolean v2, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    .line 151
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TW_Volume_control.ogg"

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 164
    sput v2, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 165
    sput v2, Landroid/view/VolumePanel;->mPrevVol:I

    .line 166
    sput v2, Landroid/view/VolumePanel;->getCurrentFMVol:I

    .line 167
    sput v2, Landroid/view/VolumePanel;->mPrevFMVol:I

    .line 169
    sput-boolean v2, Landroid/view/VolumePanel;->mProgressChanged:Z

    .line 248
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VideoCallStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->SystemStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 13
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 139
    const/4 v9, -0x1

    iput v9, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 158
    const/4 v9, 0x1

    new-array v9, v9, [[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    aput-object v11, v9, v10

    iput-object v9, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    .line 356
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 357
    const-string v9, "audio"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 358
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, #android:bool@config_useMasterVolume#t

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 363
    .local v6, useMasterVolume:Z
    if-eqz v6, :cond_1

    .line 364
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v9, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 365
    sget-object v9, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v9, v2

    .line 366
    .local v5, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v9, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v5, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 370
    .end local v2           #i:I
    .end local v5           #streamRes:Landroid/view/VolumePanel$StreamResources;
    :cond_1
    const-string v9, "layout_inflater"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 372
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v9, #android:layout@volume_adjust#t

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 373
    .local v7, view:Landroid/view/View;
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/VolumePanel$1;

    invoke-direct {v10, p0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v10, #android:id@visible_panel#t

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 380
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v10, #android:id@slider_group#t

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 381
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v10, #android:id@expand_button#t

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 382
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v10, #android:id@expand_button_divider#t

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 384
    new-instance v9, Landroid/view/VolumePanel$2;

    const v10, #android:style@Theme.Panel.Volume#t

    invoke-direct {v9, p0, p1, v10}, Landroid/view/VolumePanel$2;-><init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 393
    iget-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v10, "Volume control"

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v10, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 395
    iget-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v10, Landroid/view/VolumePanel$3;

    invoke-direct {v10, p0}, Landroid/view/VolumePanel$3;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 402
    iget-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 403
    .local v8, window:Landroid/view/Window;
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 404
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 405
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x0

    iput-object v9, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 407
    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, #android:dimen@volume_panel_top#t

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 409
    const/16 v9, 0x7e4

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 410
    const/4 v9, -0x2

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 411
    const/4 v9, -0x2

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 412
    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 413
    const v9, 0x40028

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 415
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Landroid/media/ToneGenerator;

    iput-object v9, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 416
    const-string/jumbo v9, "vibrator"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 419
    new-instance v9, Landroid/media/SoundPool;

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v9, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 420
    iget-object v9, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    new-instance v10, Landroid/view/VolumePanel$LoadListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Landroid/view/VolumePanel$LoadListener;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    invoke-virtual {v9, v10}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 421
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    const/4 v9, 0x1

    if-ge v0, v9, :cond_2

    .line 422
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/media/audio/ui/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v11, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, filePath:Ljava/lang/String;
    iget-object v9, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v0

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #filePath:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, #android:bool@config_voice_capable#t

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    .line 428
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_3

    const-string v9, "VolumePanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VolumePanel mVoiceCapable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_3
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_4

    const-string v9, "VolumePanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VolumePanel useMasterVolume : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 435
    iget-boolean v9, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v9, :cond_5

    .line 436
    iget-object v9, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v9, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :goto_3
    invoke-direct {p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    .line 443
    return-void

    .line 439
    :cond_5
    iget-object v9, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 158
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput-object p0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$400(Landroid/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$402(Landroid/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$500(Landroid/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    .line 586
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v4, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 589
    .local v1, res:Landroid/content/res/Resources;
    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v4, v5, :cond_3

    iget-boolean v4, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v4, :cond_3

    .line 590
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 591
    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    const v4, #android:drawable@ic_audio_ring_notif#t

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    const v4, #android:drawable@ic_audio_ring_notif_mute#t

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, #android:string@volumepanel_ringtone#t

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 598
    iget-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 599
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 600
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_2

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_RING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_2
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_3

    .line 602
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 603
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    .line 610
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v3, v4, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 611
    .local v3, streamType:I
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, v4, :cond_5

    .line 608
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 615
    :cond_5
    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 620
    :cond_6
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 621
    .restart local v2       #sc:Landroid/view/VolumePanel$StreamControl;
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 622
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 623
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v5, v0

    iget v5, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 625
    iget-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 626
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 627
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOtherVolumes stream : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_7
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_4

    .line 629
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 630
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 635
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v3           #streamType:I
    :cond_8
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v5, 0x168

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v4, v8, :cond_0

    .line 636
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .restart local v2       #sc:Landroid/view/VolumePanel$StreamControl;
    const v4, #android:drawable@ic_audio_system#t

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    const v4, #android:drawable@ic_audio_system_mute#t

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, #android:string@volumepanel_system#t

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 641
    iget-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 642
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 643
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_9

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_SYSTEM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_9
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 645
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 646
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private collapse()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 742
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 743
    sget-object v5, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v5, v1

    iget v4, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 744
    .local v4, streamType:I
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 745
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5}, Landroid/widget/ExtSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 746
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 747
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x12f

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 752
    :goto_1
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/ExtSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 754
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/widget/ExtSeekBar;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v8, 0xe

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v8}, Landroid/widget/ExtSeekBar;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v10, 0xd

    invoke-static {v9, v10}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ExtSeekBar;->setPadding(IIII)V

    .line 756
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v8, 0x13

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v10, 0x12

    invoke-static {v9, v10}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 742
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_0
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0xcb

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 758
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v4           #streamType:I
    :cond_1
    iget-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v5, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 760
    iget-object v5, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 761
    .local v0, count:I
    const/4 v1, 0x1

    :goto_2
    if-ge v1, v0, :cond_2

    .line 762
    iget-object v5, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 764
    :cond_2
    return-void
.end method

.method private createSliders()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x6

    const/4 v8, 0x1

    .line 514
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 516
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v9, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v9, v9

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 517
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 518
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_4

    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .local v5, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v6, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .local v6, streamType:I
    new-instance v4, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v11}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    .local v4, sc:Landroid/view/VolumePanel$StreamControl;
    iput v6, v4, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const v7, #android:layout@volume_adjust_item#t

    invoke-virtual {v1, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 524
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 525
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, #android:id@stream_icon#t

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 526
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 527
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 528
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 529
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 530
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 531
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, #android:id@volume_title#t

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    .line 532
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget v9, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 534
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, #android:id@expand_volume_divider#t

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    .line 535
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 540
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, #android:id@seekbar#t

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ExtSeekBar;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    .line 543
    if-eq v6, v10, :cond_0

    if-nez v6, :cond_3

    :cond_0
    move v2, v8

    .line 545
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {p0, v6}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v7, v9}, Landroid/widget/ExtSeekBar;->setMax(I)V

    .line 546
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/ExtSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 547
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/ExtSeekBar;->setTag(Ljava/lang/Object;)V

    .line 548
    iget-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    if-eq v6, v10, :cond_1

    if-nez v6, :cond_2

    .line 551
    :cond_1
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, v8}, Landroid/widget/ExtSeekBar;->setMin(I)V

    .line 518
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 543
    .end local v2           #plusOne:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 554
    .end local v4           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Landroid/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_4
    return-void
.end method

.method private expand()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 712
    iget-object v6, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 713
    .local v0, count:I
    iget-object v6, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v7, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 714
    .local v2, last_sc:Landroid/view/VolumePanel$StreamControl;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 715
    iget-object v6, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v6, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 718
    sget-object v6, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v5, v6, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 719
    .local v5, streamType:I
    iget-object v6, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/VolumePanel$StreamControl;

    .line 720
    .local v4, sc:Landroid/view/VolumePanel$StreamControl;
    move-object v2, v4

    .line 721
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/widget/ExtSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 723
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 724
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x16f

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 730
    :goto_2
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6, v3}, Landroid/widget/ExtSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7}, Landroid/widget/ExtSeekBar;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v9}, Landroid/widget/ExtSeekBar;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ExtSeekBar;->setPadding(IIII)V

    .line 734
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v10, v13}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 727
    :cond_1
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x10b

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 736
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #streamType:I
    :cond_2
    iget-object v6, v2, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    iget-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 738
    iget-object v6, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 739
    return-void
.end method

.method private forceTimeout()V
    .locals 2

    .prologue
    const/4 v0, 0x5

    .line 1386
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1387
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1388
    const-string v0, "VolumePanel"

    const-string v1, "call forceTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1242
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 1254
    :goto_0
    return-object v1

    .line 1243
    :cond_0
    monitor-enter p0

    .line 1244
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1246
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1254
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    goto :goto_0

    .line 1255
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 1249
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 484
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 485
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 489
    :goto_0
    return v0

    .line 486
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 487
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 494
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 499
    :goto_0
    return v0

    .line 496
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 497
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 474
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 475
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 479
    :goto_0
    return v0

    .line 476
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 477
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method listenToRingerMode()V
    .locals 3

    .prologue
    .line 458
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 459
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$4;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$4;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    return-void
.end method

.method private phoneIsOffhook()Z
    .locals 6

    .prologue
    .line 289
    const/4 v2, 0x0

    .line 291
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 293
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 294
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 299
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    .line 300
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    return v2

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VolumePanel"

    const-string/jumbo v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reorderSliders(I)V
    .locals 6
    .parameter "activeStreamType"

    .prologue
    const/16 v5, 0x8

    .line 557
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 558
    iget-object v3, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 560
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 561
    .local v0, active:Landroid/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 562
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing stream type! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    iput v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

    return-void

    :cond_0
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 566
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 567
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 568
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 569
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-ne p1, v3, :cond_2

    .line 570
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1380
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1381
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1382
    const-string v0, "VolumePanel"

    const-string v1, "call resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1264
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1265
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1266
    iput p1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 1267
    iput p2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1269
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1285
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, #android:drawable@ic_audio_ring_notif_vibrate#t

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1293
    :cond_0
    :goto_1
    return-void

    .line 1285
    :cond_1
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    .line 1289
    :cond_2
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_2
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 504
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 511
    :goto_0
    return-void

    .line 506
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 507
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateSlider(Landroid/view/VolumePanel$StreamControl;)V
    .locals 5
    .parameter "sc"

    .prologue
    const v4, #android:drawable@ic_audio_ring_notif_vibrate#t

    const/4 v3, 0x1

    .line 654
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 656
    :cond_0
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 662
    :goto_0
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 663
    .local v0, muted:Z
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 664
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 666
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 670
    :cond_1
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v1, :cond_2

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 681
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 686
    :cond_2
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, #android:drawable@ic_audio_notification_vibrate#t

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, #android:drawable@ic_audio_system_vibrate#t

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_7

    .line 699
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/ExtSeekBar;->setEnabled(Z)V

    .line 705
    :goto_2
    return-void

    .line 658
    .end local v0           #muted:Z
    :cond_5
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    goto :goto_0

    .line 663
    .restart local v0       #muted:Z
    :cond_6
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    .line 700
    :cond_7
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v2

    if-eq v1, v2, :cond_8

    if-eqz v0, :cond_8

    .line 701
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExtSeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 703
    :cond_8
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/ExtSeekBar;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 767
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 768
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 769
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public forceDismiss()V
    .locals 0

    .prologue
    .line 1392
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    .line 1393
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1308
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1377
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1311
    :pswitch_1
    const-string v0, "VolumePanel"

    const-string v1, "change volume by MSG_VOLUME_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1317
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1322
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1327
    :pswitch_4
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "stop play sound by MSG_STOP_SOUNDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1333
    :pswitch_5
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "play sound by MSG_PLAY_SOUND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1345
    :pswitch_6
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    const-string v0, "VolumePanel"

    const-string v1, "dismiss by MSG_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1348
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1353
    :pswitch_7
    const-string v0, "VolumePanel"

    const-string v1, "change mode by MSG_RINGER_MODE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    invoke-direct {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1361
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1366
    :pswitch_9
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1370
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1374
    :pswitch_b
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onDisplaySafeVolumeWarning()V

    goto :goto_0

    .line 1308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public isExtraButtonOn()Z
    .locals 5

    .prologue
    .line 306
    const/4 v1, 0x0

    .line 309
    .local v1, rtvalue:Z
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "extraVolume"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, extraButtonOn:Ljava/lang/String;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 311
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    const/4 v1, 0x1

    .line 318
    :goto_0
    return v1

    .line 316
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1452
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1453
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 1455
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1456
    return-void
.end method

.method protected onDisplaySafeVolumeWarning()V
    .locals 5

    .prologue
    .line 1213
    sget-object v2, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1214
    :try_start_0
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1215
    monitor-exit v2

    .line 1236
    :goto_0
    return-void

    .line 1217
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, #android:string@safe_media_volume_warning#t

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, #android:string@yes#t

    new-instance v4, Landroid/view/VolumePanel$5;

    invoke-direct {v4, p0}, Landroid/view/VolumePanel$5;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, #android:string@no#t

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, #android:attr@alertDialogIcon#t

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 1228
    new-instance v0, Landroid/view/VolumePanel$WarningDialogReceiver;

    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v0, v1, v3}, Landroid/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 1231
    .local v0, warning:Landroid/view/VolumePanel$WarningDialogReceiver;
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1232
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7d9

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 1234
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1235
    monitor-exit v2

    goto :goto_0

    .end local v0           #warning:Landroid/view/VolumePanel$WarningDialogReceiver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1296
    monitor-enter p0

    .line 1297
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1298
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1299
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1301
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1297
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1303
    :cond_1
    monitor-exit p0

    .line 1304
    return-void

    .line 1303
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 955
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 958
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 959
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 962
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    .line 963
    return-void

    .line 959
    :cond_2
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 1084
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1087
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 1090
    :cond_0
    monitor-enter p0

    .line 1092
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 1093
    monitor-exit p0

    .line 1120
    :goto_0
    return-void

    .line 1095
    :cond_1
    sget-boolean v0, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    if-nez v0, :cond_3

    .line 1097
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "soundpool is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v8, 0x0

    .local v8, effect:I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v2, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1100
    .local v9, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1103
    .end local v9           #filePath:Ljava/lang/String;
    :cond_2
    const-wide/16 v0, 0x28

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1109
    .end local v8           #effect:I
    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 1110
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1116
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1117
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1104
    .restart local v8       #effect:I
    :catch_0
    move-exception v7

    .line 1106
    .local v7, e1:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1116
    .end local v7           #e1:Ljava/lang/InterruptedException;
    .end local v8           #effect:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1397
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1398
    .local v1, tag:Ljava/lang/Object;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged progress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_0
    if-eqz p3, :cond_7

    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_7

    move-object v0, v1

    .line 1400
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1402
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged stream type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_1
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 1405
    :cond_2
    if-lez p2, :cond_3

    .line 1406
    add-int/lit8 p2, p2, -0x1

    .line 1408
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_5

    .line 1409
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "VolumePanel"

    const-string v3, "Set force progress level 1 for call volume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_4
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 1413
    :cond_5
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_7

    .line 1414
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_6

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch setting volume level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_6
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Landroid/view/VolumePanel;->setStreamVolume(III)V

    .line 1418
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_7
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1419
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 1150
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1153
    :cond_1
    monitor-enter p0

    .line 1154
    :try_start_0
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 1155
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 1157
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 1164
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1165
    invoke-virtual {p0, v4, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1168
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 1169
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1170
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1171
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 1174
    :cond_5
    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1175
    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1177
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1178
    return-void

    .line 1158
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1160
    :cond_6
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1181
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1187
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x0

    const/16 v9, -0xc8

    const/4 v8, 0x1

    .line 966
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 968
    .local v0, index:I
    iput-boolean v10, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 970
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    .line 971
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onShowVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .local v1, max:I
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 1048
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_3

    .line 1049
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5}, Landroid/widget/ExtSeekBar;->getMax()I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 1050
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/ExtSeekBar;->setMax(I)V

    .line 1052
    :cond_2
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 1053
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq p1, v5, :cond_8

    if-eq p1, v9, :cond_8

    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1055
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v10}, Landroid/widget/ExtSeekBar;->setEnabled(Z)V

    .line 1061
    :cond_3
    :goto_1
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1062
    if-ne p1, v9, :cond_9

    const/4 v4, -0x1

    .line 1064
    .local v4, stream:I
    :goto_2
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1065
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1067
    iget-boolean v5, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v5, :cond_4

    .line 1068
    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    .line 1070
    :cond_4
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1074
    .end local v4           #stream:I
    :cond_5
    if-eq p1, v9, :cond_6

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 1078
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1080
    :cond_6
    return-void

    .line 983
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 985
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 986
    const-string v5, "VolumePanel"

    const-string/jumbo v6, "onShowVolumeChanged ringuri is null on STREAM_RING.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 994
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v5

    and-int/lit16 v5, v5, 0x380

    if-eqz v5, :cond_7

    const v5, #android:drawable@ic_audio_bt#t

    const v6, #android:drawable@ic_audio_bt_mute#t

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1000
    :cond_7
    const v5, #android:drawable@ic_audio_vol#t

    const v6, #android:drawable@ic_audio_vol_mute#t

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1011
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 1012
    add-int/lit8 v1, v1, 0x1

    .line 1013
    goto/16 :goto_0

    .line 1021
    :sswitch_4
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1023
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 1024
    const-string v5, "VolumePanel"

    const-string/jumbo v6, "onShowVolumeChanged ringuri is null on STREAM_NOTIFICATION.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1036
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 1037
    add-int/lit8 v1, v1, 0x1

    .line 1038
    goto/16 :goto_0

    .line 1042
    :sswitch_6
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_1

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showing remote volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1057
    .restart local v3       #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_8
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/ExtSeekBar;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_9
    move v4, p1

    .line 1062
    goto/16 :goto_2

    .line 979
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 1198
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1200
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1201
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1202
    .local v2, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v3, v2, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1203
    iput-boolean v1, v2, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 1204
    if-nez v1, :cond_1

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1205
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    .end local v2           #streamRes:Landroid/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1199
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1200
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Landroid/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1198
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Landroid/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 1422
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_0
    iget-boolean v0, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1425
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1434
    :cond_1
    :goto_0
    return-void

    .line 1428
    :pswitch_0
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStopSounds()V
    .locals 5

    .prologue
    .line 1124
    monitor-enter p0

    .line 1125
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1126
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 1127
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 1128
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_1

    .line 1129
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    const-string v4, "VolumePanel onStopSounds"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_0
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1126
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1133
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_2
    monitor-exit p0

    .line 1134
    return-void

    .line 1133
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    const/16 v4, -0xc8

    .line 1437
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    const-string/jumbo v3, "onStopTrackingTouch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1439
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1440
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1445
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v4, :cond_1

    .line 1446
    invoke-direct {p0, v4}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1449
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_1
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1144
    :goto_0
    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 851
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1

    .line 852
    iget-object v1, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    invoke-direct {p0}, Landroid/view/VolumePanel;->updateStates()V

    .line 854
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    const-string/jumbo v2, "onVolumeChanged updateStates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_2

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVolumeChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_2
    if-nez p1, :cond_c

    .line 868
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 870
    .local v0, sc_voice:Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 871
    if-eqz v0, :cond_4

    .line 872
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v1

    if-nez v1, :cond_4

    .line 873
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_3

    .line 874
    const-string v1, "VolumePanel"

    const-string v2, "Call setChangeSeekbarColor(true)_#1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_3
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    .line 914
    .end local v0           #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_4
    :goto_1
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_6

    .line 915
    monitor-enter p0

    .line 916
    :try_start_0
    iget v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 917
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 922
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 923
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :cond_6
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v1, :cond_8

    .line 933
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_7

    const-string v1, "VolumePanel"

    const-string v2, "VolumePanel onVolumeChanged call onPlaySound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_7
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 935
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onPlaySound(II)V

    .line 939
    :cond_8
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_9

    .line 940
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 941
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 942
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 945
    :cond_9
    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 946
    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 948
    if-eqz p2, :cond_0

    .line 949
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    goto/16 :goto_0

    .line 879
    .restart local v0       #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_a
    if-eqz v0, :cond_4

    .line 880
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 881
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_b

    .line 882
    const-string v1, "VolumePanel"

    const-string v2, "Call setChangeSeekbarColor(false)_#2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_b
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto :goto_1

    .line 888
    .end local v0           #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_c
    if-nez p1, :cond_d

    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 891
    :cond_d
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 893
    .restart local v0       #sc_voice:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_4

    .line 894
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 895
    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 897
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_e

    .line 898
    const-string v1, "VolumePanel"

    const-string v2, "Call setChangeSeekbarColor(true)_#3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_e
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto/16 :goto_1

    .line 903
    :cond_f
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_10

    .line 904
    const-string v1, "VolumePanel"

    const-string v2, "Call setChangeSeekbarColor(false)_#4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_10
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto/16 :goto_1

    .line 919
    .end local v0           #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_11
    :try_start_1
    iget v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v1, p1, :cond_5

    .line 920
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    goto/16 :goto_2

    .line 923
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public postDisplaySafeVolumeWarning()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x0

    .line 839
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    :goto_0
    return-void

    .line 840
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 813
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 835
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postMuteChanged(II)V

    .line 836
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 820
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 821
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 829
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 797
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 799
    return-void

    .line 797
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 791
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 780
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getMsgRingerModeChanged()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    return v0
.end method

.method createSlidersBaidu()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/view/VolumePanel;->createSliders()V

    return-void
.end method

.method getmActiveStreamType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method getmPanel()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getmStreamControls()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    return-object v0
.end method

.method reorderSlidersBaidu(I)V
    .locals 0
    .parameter "activeStreamType"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    return-void
.end method

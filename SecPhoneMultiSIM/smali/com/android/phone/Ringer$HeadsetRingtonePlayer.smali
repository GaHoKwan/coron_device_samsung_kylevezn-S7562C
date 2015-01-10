.class Lcom/android/phone/Ringer$HeadsetRingtonePlayer;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetRingtonePlayer"
.end annotation


# instance fields
.field private mToneGenerator:Landroid/media/ToneGenerator;

.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 1
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 756
    const-string v1, "Ringer"

    const-string v2, "HeadsetRingtonePlayer..."

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 758
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x9

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    iget-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 766
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeadsetRingtonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 762
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method public stopRingtone()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 771
    iget-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 774
    :cond_0
    return-void
.end method

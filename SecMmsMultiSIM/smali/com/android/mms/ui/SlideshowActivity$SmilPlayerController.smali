.class Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmilPlayerController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SmilPlayerController"


# instance fields
.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mSmilPlayerStart:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$1;-><init>(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayerStart:Ljava/lang/Runnable;

    .line 1175
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 1176
    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayerStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->startSmilPlayer()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method private startSmilPlayer()V
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->accquireWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1600(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1310
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->setAudioFocus()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1700(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1311
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    .line 1313
    :cond_0
    return-void
.end method


# virtual methods
.method public SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 3
    .parameter "showModel"

    .prologue
    .line 1186
    const-string v1, "Mms/SmilPlayerController"

    const-string v2, "SlideshowActivityRunnable"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    move-object v0, p1

    .line 1189
    .local v0, model:Lcom/android/mms/model/SlideshowModel;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1500(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;-><init>(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1273
    return-void
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1277
    const/16 v0, 0x64

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayed()Z
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartAction()Z
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 1408
    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "next()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->next()V

    .line 1413
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1331
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 1332
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1900(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1334
    :cond_0
    return-void
.end method

.method public pauseSmilPlayer()V
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1360
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 1361
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1900(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1363
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->isVideoCurSlideModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->setVideoPausedImage()V

    .line 1366
    :cond_0
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 1400
    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "prev()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->prev()V

    .line 1405
    :cond_0
    return-void
.end method

.method public releaseSmilPlayer()V
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1418
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1419
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1900(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 1422
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->seek(I)V

    .line 1355
    :cond_0
    return-void
.end method

.method public setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V

    .line 1428
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1316
    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->accquireWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1600(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1320
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->setAudioFocus()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1700(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1324
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    .line 1326
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1342
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1343
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1900(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1349
    :cond_1
    :goto_0
    return-void

    .line 1346
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V

    goto :goto_0
.end method

.method public stopSmilPlayer()V
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1371
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$2000(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$2002(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1388
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1900(Lcom/android/mms/ui/SlideshowActivity;)V

    goto :goto_0
.end method

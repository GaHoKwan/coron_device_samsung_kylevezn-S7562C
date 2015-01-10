.class Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "PhoneVTVoiceRecorder.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVTVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mHiddenFilePath:Ljava/lang/String;

.field private mLastSavedFileUri:Landroid/net/Uri;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PhoneVTVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneVTVoiceRecorder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 207
    iput-object p1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 208
    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 209
    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    .line 498
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneVTVoiceRecorder;Lcom/android/phone/PhoneVTVoiceRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVTVoiceRecorder;)V

    return-void
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 444
    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, t:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 446
    .end local v0           #t:Ljava/lang/String;
    :cond_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0

    .line 449
    .end local v0           #t:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0
.end method

.method private isPhoneNumberChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 495
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 472
    if-nez p1, :cond_1

    .line 473
    const/4 p1, 0x0

    .line 491
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 475
    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$800(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$800(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$800(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 482
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 484
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 485
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 486
    .local v0, c:C
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 487
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public cancelRecording()V
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 295
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 296
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 299
    .end local v0           #f:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    .line 300
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v2, "cancelRecording"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "title"
    .parameter "context"

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 458
    .local v2, files:[Ljava/io/File;
    new-instance v1, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;Ljava/lang/String;)V

    .line 460
    .local v1, filenameFilter:Ljava/io/FilenameFilter;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v3, Lcom/android/phone/PhoneVTVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 466
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 468
    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createNewFileName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 422
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v4, "createNewFileName()"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v0, fileName:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$900(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const/4 v1, 0x1

    .line 430
    .local v1, num:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, prefix:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 433
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 434
    add-int/lit8 v1, v1, 0x1

    .line 435
    goto :goto_0

    .line 439
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v3
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 391
    return-void
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 395
    packed-switch p2, :pswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 397
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max duration reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max filesize reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prepareRecording()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 235
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 238
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/phone/PhoneVTVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, callRecordingDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 240
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/PhoneVTVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".videocall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 242
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v5, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4, v5}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$502(Lcom/android/phone/PhoneVTVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 244
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 245
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 246
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->getAvailableStorage()J
    invoke-static {v5}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$600(Lcom/android/phone/PhoneVTVoiceRecorder;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V

    .line 248
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const v5, 0x2ca2068

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 249
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x2fa8

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 251
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 252
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 253
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 254
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 255
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const-wide/16 v5, 0x300

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    .line 257
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    .line 259
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 260
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 261
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v5, "prepareRecording"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    :goto_0
    return v2

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal State Exception Occured"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 265
    goto :goto_0

    .line 266
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 267
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured while SecMediaRecorder Prepare()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 269
    goto :goto_0
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v1, "releaseMediaRecorder..."

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 414
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 416
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 417
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$502(Lcom/android/phone/PhoneVTVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 419
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v1, "run"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->prepareRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->startRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$200(Lcom/android/phone/PhoneVTVoiceRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsPreparing:Z
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$402(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    .line 231
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v1, "startRecording failed"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v1, "prepareRecording failed"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    goto :goto_0
.end method

.method public startRecording()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 276
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v3, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    .line 287
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mStartRecordTime:J
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$702(Lcom/android/phone/PhoneVTVoiceRecorder;J)J

    .line 288
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v4, "startRecording"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 289
    :goto_0
    return v2

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 279
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 280
    goto :goto_0

    .line 281
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, re:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 283
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 284
    goto :goto_0
.end method

.method public stopRecording()Z
    .locals 17

    .prologue
    .line 306
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v12}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->releaseMediaRecorder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "Recording stopped"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 316
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/phone/PhoneVTVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".amr"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 318
    const/4 v4, 0x0

    .line 319
    .local v4, hiddenFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 321
    .local v9, saveFile:Ljava/io/File;
    :try_start_1
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 322
    .local v8, retriever:Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 324
    const/4 v11, 0x0

    .line 325
    .local v11, value:Ljava/lang/String;
    const/16 v12, 0x9

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 326
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 327
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v2, v12

    .line 329
    .local v2, fileDuration:J
    const-wide/16 v12, 0x3e8

    cmp-long v12, v2, v12

    if-gez v12, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "fileDuration > 1000, failed to save record"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    const/4 v12, 0x0

    .line 385
    .end local v2           #fileDuration:J
    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v8           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v9           #saveFile:Ljava/io/File;
    .end local v11           #value:Ljava/lang/String;
    :goto_0
    return v12

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mRecorder.stop() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 312
    const/4 v12, 0x0

    goto :goto_0

    .line 334
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fileDuration:J
    .restart local v4       #hiddenFile:Ljava/io/File;
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v9       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 335
    .end local v4           #hiddenFile:Ljava/io/File;
    .local v5, hiddenFile:Ljava/io/File;
    :try_start_3
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 336
    .end local v9           #saveFile:Ljava/io/File;
    .local v10, saveFile:Ljava/io/File;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "Hidden file doesn\'t exist"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 339
    const/4 v12, 0x0

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 342
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "Save file doesn\'t exist"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 344
    const/4 v12, 0x0

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v5, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 347
    .local v7, resMove:Z
    if-nez v7, :cond_3

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "resMove failed"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 350
    const/4 v12, 0x0

    goto :goto_0

    .line 352
    .end local v2           #fileDuration:J
    .end local v5           #hiddenFile:Ljava/io/File;
    .end local v7           #resMove:Z
    .end local v8           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v10           #saveFile:Ljava/io/File;
    .end local v11           #value:Ljava/lang/String;
    .restart local v4       #hiddenFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 353
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error occurred while moving temp file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 355
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 357
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v9           #saveFile:Ljava/io/File;
    .restart local v2       #fileDuration:J
    .restart local v5       #hiddenFile:Ljava/io/File;
    .restart local v7       #resMove:Z
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v10       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "Recording file created"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 359
    :try_start_5
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 360
    .local v6, mediaStore:Landroid/content/ContentValues;
    const-string v12, "title"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v12, "mime_type"

    const-string v13, "audio/amr"

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v12, "_data"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v12, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    const-string v12, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 365
    const-string v12, "date_modified"

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    const-string v12, "is_sound"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v12}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$800(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    .line 368
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    if-nez v12, :cond_6

    .line 369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "Content Resolver insert failed"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 371
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 372
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 374
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 376
    .end local v6           #mediaStore:Landroid/content/ContentValues;
    :catch_2
    move-exception v1

    .line 377
    .restart local v1       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error occurred while input data to MediaStore"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 380
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 382
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 384
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #mediaStore:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "Recording saved"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 385
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 352
    .end local v6           #mediaStore:Landroid/content/ContentValues;
    .end local v7           #resMove:Z
    .end local v10           #saveFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5           #hiddenFile:Ljava/io/File;
    .restart local v4       #hiddenFile:Ljava/io/File;
    goto/16 :goto_1

    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v9           #saveFile:Ljava/io/File;
    .restart local v5       #hiddenFile:Ljava/io/File;
    .restart local v10       #saveFile:Ljava/io/File;
    :catch_4
    move-exception v1

    move-object v9, v10

    .end local v10           #saveFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #hiddenFile:Ljava/io/File;
    .restart local v4       #hiddenFile:Ljava/io/File;
    goto/16 :goto_1
.end method

.class public Lcom/android/mms/ui/CMASPreviewDialog;
.super Landroid/app/AlertDialog;
.source "CMASPreviewDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMASPreview/Dialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;

.field private mplayer:Landroid/media/MediaPlayer;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 77
    const-string v1, "CMASPreview/Dialog"

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 80
    .local v0, mStatusbarManager:Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->stopCmasAlert()V

    .line 82
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->stopCmasVibrator()V

    .line 84
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 48
    const-string v4, "CMASPreview/Dialog"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 51
    .local v3, sp:Landroid/content/SharedPreferences;
    const v4, 0x7f0a0477

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 52
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0478

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 53
    const/4 v5, -0x2

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0479

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 56
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 57
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 59
    .local v2, ringerMode:I
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 60
    .local v1, mStatusbarManager:Landroid/app/StatusBarManager;
    const/high16 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 62
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->playCmasAlert()V

    .line 65
    const-string v4, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->playCmasVibrator()V

    .line 72
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void

    .line 68
    :cond_1
    if-ne v2, v7, :cond_0

    const-string v4, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->playCmasVibrator()V

    goto :goto_0
.end method

.method protected playCmasAlert()V
    .locals 5

    .prologue
    .line 88
    const-string v2, "android.resource://com.android.mms/raw/cmas_ringtone"

    .line 89
    .local v2, ringtoneStr:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 93
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 94
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    .line 113
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    .line 98
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, mediaURI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 100
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 101
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 102
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 104
    const-string v3, "CMASPreview/Dialog"

    const-string v4, "Am now in playing"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1           #mediaURI:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "CMASPreview/Dialog"

    const-string v4, "Exception in tree click"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v3, "CMASPreview/Dialog"

    const-string v4, "Ringtone str not found"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected playCmasVibrator()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xc

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0

    .line 132
    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected stopCmasAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method protected stopCmasVibrator()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

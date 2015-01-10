.class Lcom/android/mms/ui/CMASDialog$1;
.super Ljava/lang/Object;
.source "CMASDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog$1;->this$0:Lcom/android/mms/ui/CMASDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_3

    .line 130
    :cond_0
    const-string v1, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown(keycode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog$1;->this$0:Lcom/android/mms/ui/CMASDialog;

    #getter for: Lcom/android/mms/ui/CMASDialog;->mStatusbarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog;->access$000(Lcom/android/mms/ui/CMASDialog;)Landroid/app/StatusBarManager;

    move-result-object v1

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 132
    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog$1;->this$0:Lcom/android/mms/ui/CMASDialog;

    #getter for: Lcom/android/mms/ui/CMASDialog;->mStatusbarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog;->access$000(Lcom/android/mms/ui/CMASDialog;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 134
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 136
    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    .line 138
    :cond_1
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 139
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 140
    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 142
    :cond_2
    const/4 v0, 0x1

    .line 144
    :cond_3
    return v0
.end method

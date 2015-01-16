.class Lcom/sec/widget/lso/LockscreenOverlayView$1;
.super Landroid/content/BroadcastReceiver;
.source "LockscreenOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/widget/lso/LockscreenOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/widget/lso/LockscreenOverlayView;


# direct methods
.method constructor <init>(Lcom/sec/widget/lso/LockscreenOverlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/widget/lso/LockscreenOverlayView$1;->this$0:Lcom/sec/widget/lso/LockscreenOverlayView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView$1;->this$0:Lcom/sec/widget/lso/LockscreenOverlayView;

    #calls: Lcom/sec/widget/lso/LockscreenOverlayView;->setLayout()Z
    invoke-static {v1}, Lcom/sec/widget/lso/LockscreenOverlayView;->access$000(Lcom/sec/widget/lso/LockscreenOverlayView;)Z

    .line 74
    :cond_1
    return-void
.end method

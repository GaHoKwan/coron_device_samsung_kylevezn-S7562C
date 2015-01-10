.class Lcom/android/mms/ui/ComposeMessageFragment$48;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 5863
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$48;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5865
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$48;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5866
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$48;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$48;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5202(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    .line 5868
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$48;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mNoticeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5869
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$48;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mNoticeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$48$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$48$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$48;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5883
    :cond_1
    return-void
.end method

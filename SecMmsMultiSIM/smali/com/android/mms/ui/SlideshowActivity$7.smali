.class Lcom/android/mms/ui/SlideshowActivity$7;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$600(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stopPlayer()V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;Z)V

    goto :goto_0
.end method

.class Lcom/android/mms/ui/SlideshowActivity$16;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V
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
    .line 2149
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$16;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$16;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$16;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1100(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 2153
    :cond_0
    return-void
.end method

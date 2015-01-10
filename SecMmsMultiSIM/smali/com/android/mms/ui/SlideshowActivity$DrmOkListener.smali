.class Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmOkListener"
.end annotation


# instance fields
.field mDrmFileNames:[Ljava/lang/String;

.field mDrmFilePaths:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter "drmFilePaths"
    .parameter "drmFileName"
    .parameter "callback"

    .prologue
    .line 1885
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1886
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    .line 1887
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFileNames:[Ljava/lang/String;

    .line 1888
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1892
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmOkListener : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "DrmOkListener : StartActivity DrmContentsActivity.class"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const-class v2, Lcom/android/mms/ui/DrmContentsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1895
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "drmFilePath"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1896
    const-string v1, "drmFileName"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFileNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1897
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1899
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1900
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1901
    return-void
.end method

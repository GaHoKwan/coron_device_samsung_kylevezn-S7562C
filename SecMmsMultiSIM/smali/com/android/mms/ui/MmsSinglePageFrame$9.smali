.class Lcom/android/mms/ui/MmsSinglePageFrame$9;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mm:Lcom/android/mms/model/MediaModel;

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 1
    .parameter

    .prologue
    .line 1848
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$9;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1849
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$9;->mm:Lcom/android/mms/model/MediaModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$9;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$9;->mm:Lcom/android/mms/model/MediaModel;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$700(Lcom/android/mms/ui/MmsSinglePageFrame;Lcom/android/mms/model/MediaModel;)V

    .line 1853
    return-void
.end method

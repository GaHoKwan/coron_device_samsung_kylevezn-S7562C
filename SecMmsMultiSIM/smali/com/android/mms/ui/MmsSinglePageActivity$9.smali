.class Lcom/android/mms/ui/MmsSinglePageActivity$9;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mm:Lcom/android/mms/model/MediaModel;

.field private slideIndex:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1921
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1923
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticClickUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->uri:Landroid/net/Uri;

    .line 1925
    sget v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticSlideIndex:I

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->slideIndex:I

    .line 1927
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->mm:Lcom/android/mms/model/MediaModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1935
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_EnableUSM"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1938
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a023d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0522

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a011d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1973
    :goto_0
    return-void

    .line 1947
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1948
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1949
    const-string v0, ""

    .line 1951
    .local v0, contentType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->mm:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1953
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->mm:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1961
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->mm:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1968
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1969
    :catch_0
    move-exception v1

    .line 1971
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$500(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V

    goto :goto_0

    .line 1954
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 1956
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1959
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$9;->mm:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

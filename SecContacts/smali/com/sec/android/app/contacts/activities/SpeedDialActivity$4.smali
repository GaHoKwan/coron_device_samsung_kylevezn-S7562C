.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;
.super Landroid/os/AsyncTask;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

.field final synthetic val$displayPhotoUri:Landroid/net/Uri;

.field final synthetic val$photoBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$photoView:Landroid/widget/ImageView;

.field final synthetic val$speedDialDefaultImageId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/net/Uri;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$displayPhotoUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$photoView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$photoBitmap:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$speedDialDefaultImageId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    .line 808
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$displayPhotoUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 810
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 814
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v2

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SpeedDialActivity"

    const-string v3, "Error getting display photo. Ignoring, as we already have the thumbnail"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 804
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 821
    if-eqz p1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$photoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 837
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$photoBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$photoView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$speedDialDefaultImageId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    goto :goto_0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$photoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->val$photoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 804
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

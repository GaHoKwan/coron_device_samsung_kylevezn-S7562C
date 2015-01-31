.class Lcom/sec/android/app/camera/Camera$LastContentUriCallback;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastContentUriCallback"
.end annotation


# instance fields
.field private mKeyValue:Ljava/lang/String;

.field private mRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5797
    .local p3, rectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5798
    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    .line 5799
    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    .line 5800
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 17

    .prologue
    .line 5803
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v13

    if-nez v13, :cond_1

    .line 5804
    const-string v13, "Camera"

    const-string v14, "onCompleted: mCameraEnine is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5953
    :cond_0
    :goto_0
    return-void

    .line 5812
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 5815
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v13, v14}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 5817
    const-string v13, "quickview"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "reviewon"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 5818
    :cond_2
    const-string v13, "reviewon"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v13

    const/16 v14, 0x12

    if-ne v13, v14, :cond_3

    .line 5820
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.BUDDY_PHOTO_SHARING"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5821
    .local v8, intent:Landroid/content/Intent;
    const-string v13, "image/*"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5822
    const-string v13, "FACE_IMAGE_URI"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5823
    const-string v13, "FACE_IMAGE_MODIFIED_DATE"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraEngine;->getLastDateTaken()J

    move-result-wide v14

    invoke-virtual {v8, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5824
    const-string v13, "FACE_IMAGE_PATH"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5825
    const-string v13, "FACE_IMAGE_SIZE"

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v8, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5826
    const-string v13, "startApp"

    const-string v14, "camera"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5827
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5859
    .end local v8           #intent:Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 5830
    :catch_0
    move-exception v3

    .line 5831
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v13, "Camera"

    const-string v14, "Gallery was disabled!!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5832
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto/16 :goto_0

    .line 5836
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 5837
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v13, "com.sec.android.gallery3d"

    const-string v14, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5841
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 5842
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5843
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5848
    :goto_2
    const-string v13, "from-Camera"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5850
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5851
    :catch_1
    move-exception v4

    .line 5852
    .local v4, ex:Landroid/content/ActivityNotFoundException;
    const-string v13, "Camera"

    const-string v14, "Gallery was disabled!!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto/16 :goto_0

    .line 5845
    .end local v4           #ex:Landroid/content/ActivityNotFoundException;
    :cond_4
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 5860
    .end local v8           #intent:Landroid/content/Intent;
    :cond_5
    const-string v13, "from_app"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 5861
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 5862
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 5864
    :cond_6
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 5865
    .local v11, newExtras:Landroid/os/Bundle;
    const-string v13, "fromApp"

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 5868
    const-string v13, "circle"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 5869
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5882
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 5884
    :try_start_2
    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 5885
    .local v6, f:Ljava/io/File;
    if-eqz v6, :cond_8

    .line 5886
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    .line 5887
    .local v7, fParent:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 5888
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5889
    .local v2, dir:Ljava/io/File;
    if-eqz v2, :cond_8

    .line 5890
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    .line 5891
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5899
    .end local v2           #dir:Ljava/io/File;
    .end local v6           #f:Ljava/io/File;
    .end local v7           #fParent:Ljava/lang/String;
    :cond_8
    :goto_4
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5900
    const/4 v12, 0x0

    .line 5902
    .local v12, outputStream:Ljava/io/OutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v12

    .line 5904
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v9

    .line 5905
    .local v9, lastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    if-eqz v9, :cond_9

    .line 5906
    invoke-virtual {v9}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v10

    .line 5908
    .local v10, lastCaptureRawData:[B
    if-eqz v10, :cond_9

    .line 5909
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v13, v10}, Lcom/sec/android/app/camera/Camera;->access$1802(Lcom/sec/android/app/camera/Camera;[B)[B

    .line 5912
    .end local v10           #lastCaptureRawData:[B
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v13

    if-eqz v13, :cond_a

    .line 5913
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    .line 5916
    :cond_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5920
    invoke-static {v12}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 5928
    .end local v9           #lastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    .end local v12           #outputStream:Ljava/io/OutputStream;
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 5929
    const-string v13, "skip-savediscard"

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5932
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 5933
    const-string v13, "latitude"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 5934
    const-string v13, "longitude"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 5936
    :cond_c
    const-string v13, "takenTime"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraEngine;->getLastDateTaken()J

    move-result-wide v14

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5945
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5946
    .local v1, cropIntent:Landroid/content/Intent;
    const-string v13, "com.sec.android.app.camera"

    const-string v14, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v1, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5948
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5949
    invoke-virtual {v1, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5951
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v14, 0x7d1

    invoke-virtual {v13, v1, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 5870
    .end local v1           #cropIntent:Landroid/content/Intent;
    :cond_d
    const-string v13, "true"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 5871
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 5872
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 5874
    .local v5, extras:Landroid/os/Bundle;
    const-string v13, "rectCrop"

    const-string v14, "true"

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5875
    const-string v13, "aspectX"

    const-string v14, "aspectX"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5876
    const-string v13, "aspectY"

    const-string v14, "aspectY"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5877
    const-string v13, "outputX"

    const-string v14, "outputX"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5878
    const-string v13, "outputY"

    const-string v14, "outputY"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 5896
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v8           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v3

    .line 5897
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "Camera"

    const-string v14, "Error when make the directory using mSaveUri"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5917
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v12       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    .line 5918
    .local v4, ex:Ljava/io/IOException;
    :try_start_4
    const-string v13, "Camera"

    const-string v14, "Error when writing raw data to mSaveUri"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5920
    invoke-static {v12}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_5

    .end local v4           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    invoke-static {v12}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 5922
    .end local v12           #outputStream:Ljava/io/OutputStream;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mReturnUri:Z
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 5923
    const-string v13, "return-uri"

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 5925
    :cond_f
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 5828
    .end local v11           #newExtras:Landroid/os/Bundle;
    :catch_4
    move-exception v13

    goto/16 :goto_1
.end method

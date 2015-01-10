.class public Lcom/android/mms/ui/BackgroundColorPicker;
.super Lcom/android/mms/ui/MessageBubbleActivity;
.source "BackgroundColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;
    }
.end annotation


# static fields
.field public static final ADD_IMAGE:I = 0x0

.field private static final BACKGROUND_TYPE:I = 0x0

.field private static final BACKGROUND_VERTICAL_TYPE:I = 0x1

.field private static DEVICE_SCREEN_HEIGHT_SIZE:I = 0x0

.field private static DEVICE_SCREEN_WIDTH_SIZE:I = 0x0

.field private static final REQUEST_CODE_PICK_PICTURE:I = 0xa

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field private static final TAG:Ljava/lang/String; = "Mms/BackgroundColorPicker"

.field public static final TAKE_PICTURE:I = 0x1

.field private static final focusedBorderWidth:I = 0x2

.field private static final unFocusedBorderWidth:I = 0x1


# instance fields
.field private mBackgroundDialog:Landroid/app/AlertDialog;

.field private mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageOutputUri:Landroid/net/Uri;

.field private mIsStartFromNonCustom:Z

.field private mSaved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x320

    sput v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 74
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBubbleActivity;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mImageOutputUri:Landroid/net/Uri;

    .line 77
    iput-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-boolean v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BackgroundColorPicker;ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/BackgroundColorPicker;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BackgroundColorPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BackgroundColorPicker;->startActivityforBackround(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BackgroundColorPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BackgroundColorPicker;->attachAppinfo(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BackgroundColorPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->setPrevSelectedItem()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private attachAppinfo(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 870
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x5080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 875
    packed-switch p1, :pswitch_data_0

    .line 892
    :goto_0
    return-void

    .line 877
    :pswitch_0
    const-string v2, "package"

    const-string v3, "com.sec.android.gallery3d"

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 878
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 879
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 883
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_1
    const-string v2, "package"

    const-string v3, "com.sec.android.app.camera"

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 884
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 885
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .parameter "pTargetFileName"
    .parameter "pSource"
    .parameter "pTarget"

    .prologue
    .line 404
    const/4 v7, 0x0

    .line 405
    .local v7, bSave:Z
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 406
    .local v12, mImageOutputUri:Landroid/net/Uri;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v15, sourceFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    const/4 v2, 0x0

    .line 459
    :goto_0
    return v2

    .line 410
    :cond_0
    const/4 v10, 0x0

    .line 411
    .local v10, inputStream:Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 412
    .local v13, outputStream:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 413
    .local v1, fcin:Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 416
    .local v6, fcout:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .local v11, inputStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    .line 420
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .local v14, outputStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 421
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 423
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 424
    .local v4, size:J
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    .line 425
    const/4 v7, 0x1

    .line 430
    if-eqz v6, :cond_1

    .line 431
    :try_start_3
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 436
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 437
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 442
    :cond_2
    :goto_2
    if-eqz v14, :cond_3

    .line 443
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 448
    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    .line 449
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    :cond_4
    :goto_4
    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/FileOutputStream;
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 454
    .end local v4           #size:J
    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    :cond_5
    :goto_5
    new-instance v9, Ljava/io/File;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v9, f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 456
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_6
    move v2, v7

    .line 459
    goto :goto_0

    .line 426
    .end local v9           #f:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 427
    .local v8, e:Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 430
    if-eqz v6, :cond_7

    .line 431
    :try_start_8
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 436
    :cond_7
    :goto_7
    if-eqz v1, :cond_8

    .line 437
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 442
    :cond_8
    :goto_8
    if-eqz v13, :cond_9

    .line 443
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 448
    :cond_9
    :goto_9
    if-eqz v10, :cond_5

    .line 449
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    .line 450
    :catch_1
    move-exception v2

    goto :goto_5

    .line 429
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 430
    :goto_a
    if-eqz v6, :cond_a

    .line 431
    :try_start_c
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 436
    :cond_a
    :goto_b
    if-eqz v1, :cond_b

    .line 437
    :try_start_d
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 442
    :cond_b
    :goto_c
    if-eqz v13, :cond_c

    .line 443
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 448
    :cond_c
    :goto_d
    if-eqz v10, :cond_d

    .line 449
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 429
    :cond_d
    :goto_e
    throw v2

    .line 432
    :catch_2
    move-exception v3

    goto :goto_b

    .line 438
    :catch_3
    move-exception v3

    goto :goto_c

    .line 444
    :catch_4
    move-exception v3

    goto :goto_d

    .line 450
    :catch_5
    move-exception v3

    goto :goto_e

    .line 432
    .restart local v8       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    goto :goto_7

    .line 438
    :catch_7
    move-exception v2

    goto :goto_8

    .line 444
    :catch_8
    move-exception v2

    goto :goto_9

    .line 432
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #size:J
    .restart local v11       #inputStream:Ljava/io/FileInputStream;
    .restart local v14       #outputStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    goto :goto_1

    .line 438
    :catch_a
    move-exception v2

    goto :goto_2

    .line 444
    :catch_b
    move-exception v2

    goto :goto_3

    .line 450
    :catch_c
    move-exception v2

    goto :goto_4

    .line 429
    .end local v4           #size:J
    .end local v14           #outputStream:Ljava/io/FileOutputStream;
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #inputStream:Ljava/io/FileInputStream;
    .restart local v14       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/FileOutputStream;
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    goto :goto_a

    .line 426
    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .restart local v11       #inputStream:Ljava/io/FileInputStream;
    :catch_d
    move-exception v8

    move-object v10, v11

    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #inputStream:Ljava/io/FileInputStream;
    .restart local v14       #outputStream:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v8

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/FileOutputStream;
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method private makeBackgourndVertical(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, gallery:Landroid/widget/GridView;
    if-nez p1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    .line 163
    :goto_0
    if-nez p1, :cond_0

    .line 164
    move-object v2, v0

    .line 165
    .local v2, sent:Landroid/widget/GridView;
    new-instance v3, Lcom/android/mms/ui/BackgroundColorPicker$1;

    invoke-direct {v3, p0, v2}, Lcom/android/mms/ui/BackgroundColorPicker$1;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/widget/GridView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 175
    .end local v2           #sent:Landroid/widget/GridView;
    :cond_0
    move-object v1, v0

    .line 176
    .local v1, grid:Landroid/widget/GridView;
    new-instance v3, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    new-instance v3, Lcom/android/mms/ui/BackgroundColorPicker$2;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker$2;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/widget/GridView;)V

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 219
    new-instance v3, Lcom/android/mms/ui/BackgroundColorPicker$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/BackgroundColorPicker$3;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    iget v3, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 232
    :goto_1
    new-instance v3, Lcom/android/mms/ui/BackgroundColorPicker$4;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker$4;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/widget/GridView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 256
    return-void

    .line 160
    .end local v1           #grid:Landroid/widget/GridView;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    goto :goto_0

    .line 228
    .restart local v1       #grid:Landroid/widget/GridView;
    :cond_2
    iget v3, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_1
.end method

.method private refreshGridview()V
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->updateGridViewLayout()V

    .line 739
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_0
.end method

.method private saveBackgoundStyle(I)Z
    .locals 7
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 374
    const/4 v0, 0x1

    .line 376
    .local v0, bSave:Z
    sget-object v4, Lcom/android/mms/ui/BackgroundColorPicker;->mBGImageArray:[I

    invoke-static {p1, v4}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v3

    .line 379
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v2, targetFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_ITEM_INDEX:I

    if-ne p1, v4, :cond_2

    .line 382
    const-string v4, "message_background_image.jpg"

    const-string v5, "/mnt/sdcard/message_background_image.jpg"

    const-string v6, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/ui/BackgroundColorPicker;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    const/4 v0, 0x1

    .line 392
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 393
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 394
    .local v1, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_background_color"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 395
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    const/4 v3, 0x1

    goto :goto_0

    .line 386
    .end local v1           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 389
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private setCustomThumbnail(Z)V
    .locals 12
    .parameter "isDownSizing"

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x64

    .line 768
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v6

    if-nez v6, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/com.android.mms/"

    const-string v8, "message_background_image.jpg"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 773
    .local v2, mImageOutputUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 774
    .local v4, photo:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 777
    .local v5, photoTemp:Landroid/graphics/Bitmap;
    if-nez p1, :cond_6

    .line 778
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 787
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v6

    if-nez v6, :cond_7

    .line 788
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    if-ltz v6, :cond_2

    .line 790
    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 797
    invoke-static {v4}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 798
    const/4 v4, 0x0

    .line 799
    move-object v4, v5

    .line 815
    :cond_2
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lt v6, v10, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v6, v10, :cond_4

    .line 816
    :cond_3
    const/16 v6, 0x64

    const/16 v7, 0x64

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 818
    invoke-static {v4}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 819
    const/4 v4, 0x0

    .line 820
    move-object v4, v5

    .line 823
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 824
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 826
    :cond_5
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 780
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_6
    const/4 v1, 0x0

    .line 781
    .local v1, input:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 782
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 783
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x4

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 784
    const/4 v6, 0x0

    invoke-static {v1, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 803
    .end local v1           #input:Ljava/io/InputStream;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 810
    invoke-static {v4}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 811
    const/4 v4, 0x0

    .line 812
    move-object v4, v5

    goto :goto_2

    .line 830
    :catch_1
    move-exception v0

    .line 831
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 832
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 833
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 835
    if-ne p1, v11, :cond_8

    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 837
    :cond_8
    invoke-direct {p0, v11}, Lcom/android/mms/ui/BackgroundColorPicker;->setCustomThumbnail(Z)V

    goto/16 :goto_0

    .line 839
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v0

    .line 840
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 11
    .parameter "position"
    .parameter
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v10, 0x0

    .line 259
    iget v6, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    iput v6, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    .line 260
    iput p1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    .line 262
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-nez v6, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->showBackgroundSelectorDialog()V

    .line 264
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessageBubbleActivity;->setShadowOnText(Z)V

    .line 275
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 277
    .local v2, density:F
    move-object v3, p2

    .line 278
    .local v3, group:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 279
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 280
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 281
    .local v5, imageView:Landroid/widget/ImageView;
    const/high16 v6, 0x3f80

    mul-float/2addr v6, v2

    float-to-int v0, v6

    .line 282
    .local v0, borderSize:I
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 283
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 265
    .end local v0           #borderSize:I
    .end local v1           #count:I
    .end local v2           #density:F
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v4           #i:I
    .end local v5           #imageView:Landroid/widget/ImageView;
    :cond_0
    iget v6, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v7, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_ITEM_INDEX:I

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground()V

    .line 267
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageBubbleActivity;->setShadowOnText(Z)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/mms/ui/BackgroundColorPicker;->mBGStyleArray:[I

    iget v9, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v6, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 271
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessageBubbleActivity;->setShadowOnText(Z)V

    goto :goto_0

    .line 286
    .restart local v1       #count:I
    .restart local v2       #density:F
    .restart local v3       #group:Landroid/view/ViewGroup;
    .restart local v4       #i:I
    :cond_2
    const/high16 v6, 0x4000

    mul-float/2addr v6, v2

    float-to-int v0, v6

    .line 287
    .restart local v0       #borderSize:I
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 288
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201b9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-void
.end method

.method private setPrevSelectedItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 713
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    if-ne v0, v1, :cond_0

    .line 733
    :goto_0
    return-void

    .line 716
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    .line 718
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 723
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->refreshGridview()V

    .line 724
    invoke-direct {p0, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 725
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 727
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v1, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_ITEM_INDEX:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground()V

    goto :goto_0

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_1

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/BackgroundColorPicker;->mBGStyleArray:[I

    iget v3, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private startActivityforBackround(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, contentType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 530
    .local v2, requestCode:I
    packed-switch p1, :pswitch_data_0

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 532
    :pswitch_0
    const-string v0, "image/*"

    .line 533
    const/16 v2, 0xa

    .line 535
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v3, "com.sec.android.gallery3d"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-direct {p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->startSelectBackgroundActivity(Landroid/content/Intent;)V

    .line 540
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 544
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const/16 v2, 0xb

    .line 546
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .restart local v1       #intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 548
    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v3, "CONTENT_TYPE"

    const-string v4, "image/*;"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-direct {p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->startSelectBackgroundActivity(Landroid/content/Intent;)V

    .line 551
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startSelectBackgroundActivity(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 562
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mImageOutputUri:Landroid/net/Uri;

    .line 564
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mImageOutputUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 566
    sget v1, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 567
    .local v1, screenWidth:I
    sget v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 569
    .local v0, screenHeight:I
    const-string v2, "aspectX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    const-string v2, "aspectY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string v2, "outputX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const-string v2, "outputY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    const-string v2, "scale"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 574
    const-string v2, "noFaceDetection"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    return-void
.end method


# virtual methods
.method protected getDeviceScreenSize()V
    .locals 4

    .prologue
    .line 748
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 750
    .local v1, orientation:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 751
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sput v3, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 752
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    sput v3, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 758
    :goto_0
    sget v2, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 759
    .local v2, width:I
    sget v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 760
    .local v0, height:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 761
    sput v2, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 762
    sput v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 764
    :cond_0
    return-void

    .line 754
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    sput v3, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 755
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sput v3, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    goto :goto_0
.end method

.method public final makeView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 124
    invoke-super {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->makeView()V

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->setActionBar()V

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-direct {p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 149
    invoke-direct {p0, v3}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 151
    invoke-direct {p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->setCustomThumbnail(Z)V

    .line 152
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 578
    const-string v0, "Mms/BackgroundColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 583
    if-nez p3, :cond_1

    .line 584
    const-string v0, "Mms/BackgroundColorPicker"

    const-string v1, "onActivityResult : data is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->setPrevSelectedItem()V

    .line 618
    :goto_0
    return-void

    .line 588
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 589
    const-string v0, "Mms/BackgroundColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->setPrevSelectedItem()V

    goto :goto_0

    .line 594
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 616
    :goto_1
    const-string v0, "Mms/BackgroundColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 599
    :pswitch_0
    const-string v0, "message_background_image.jpg"

    const-string v1, "/mnt/sdcard/message_background_image.jpg"

    const-string v2, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/BackgroundColorPicker;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 601
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->updateBGStyleArray()V

    .line 602
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground()V

    .line 604
    invoke-direct {p0, v3}, Lcom/android/mms/ui/BackgroundColorPicker;->setCustomThumbnail(Z)V

    .line 606
    sget v0, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_ITEM_INDEX:I

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    .line 607
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->refreshGridview()V

    goto :goto_1

    .line 594
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 298
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->refreshGridview()V

    .line 326
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 327
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 329
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    .line 93
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.android.mms/message_background_image_original.jpg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, OriTargetFile:Ljava/io/File;
    iget-boolean v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "message_background_image_original.jpg"

    const-string v3, "/data/data/com.android.mms/message_background_image.jpg"

    const-string v4, "/data/data/com.android.mms/message_background_image_original.jpg"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getDeviceScreenSize()V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->makeView()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    const-string v2, "Mms/BackgroundColorPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out Of Memory Error while making the View: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 622
    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 623
    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 625
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 628
    .local v1, mImageOutputUri:Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 634
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    const-string v2, "/data/data/com.android.mms/message_background_image_original.jpg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 635
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 640
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 641
    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 643
    :cond_3
    invoke-super {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->onDestroy()V

    .line 644
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 852
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 853
    iget-boolean v3, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    if-nez v3, :cond_1

    .line 854
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 855
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_background_color"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 857
    .local v0, bgStyleIndex:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 858
    .local v1, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_background_color"

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 859
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 865
    .end local v0           #bgStyleIndex:I
    .end local v1           #editPrefs:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 861
    :cond_1
    const-string v3, "message_background_image.jpg"

    const-string v4, "/data/data/com.android.mms/message_background_image_original.jpg"

    const-string v5, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/BackgroundColorPicker;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 370
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_1
    return v6

    .line 335
    :sswitch_0
    iget v7, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-direct {p0, v7}, Lcom/android/mms/ui/BackgroundColorPicker;->saveBackgoundStyle(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    iput-boolean v6, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 339
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a04ce

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 344
    :sswitch_1
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/data/com.android.mms/message_background_image_original.jpg"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, OriTargetFile:Ljava/io/File;
    iget-boolean v7, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 347
    iget-boolean v7, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    if-nez v7, :cond_3

    .line 348
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 349
    .local v5, pref:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_background_color"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 351
    .local v1, bgStyleIndex:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 352
    .local v2, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_background_color"

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    .end local v1           #bgStyleIndex:I
    .end local v2           #editPrefs:Landroid/content/SharedPreferences$Editor;
    .end local v5           #pref:Landroid/content/SharedPreferences;
    :cond_2
    :goto_2
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "message_background_image.jpg"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 362
    .local v4, mImageOutputUri:Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 354
    .end local v3           #f:Ljava/io/File;
    .end local v4           #mImageOutputUri:Landroid/net/Uri;
    :cond_3
    iget-boolean v7, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    if-ne v7, v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    const-string v6, "message_background_image.jpg"

    const-string v7, "/data/data/com.android.mms/message_background_image_original.jpg"

    const-string v8, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/mms/ui/BackgroundColorPicker;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public final setActionBar()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setActionBar()V

    .line 294
    return-void
.end method

.method public showBackgroundSelectorDialog()V
    .locals 7

    .prologue
    .line 463
    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 523
    :goto_0
    return-void

    .line 467
    :cond_0
    new-instance v1, Lcom/android/mms/ui/BackgroundSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BackgroundSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 469
    .local v1, backgroundSelectorAdapter:Lcom/android/mms/ui/BackgroundSelectorAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a04cd

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 474
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 475
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03003e

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 477
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0e0104

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 478
    .local v0, attachItemGrid:Landroid/widget/GridView;
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 479
    new-instance v5, Lcom/android/mms/ui/BackgroundColorPicker$5;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker$5;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Lcom/android/mms/ui/BackgroundSelectorAdapter;)V

    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 494
    new-instance v5, Lcom/android/mms/ui/BackgroundColorPicker$6;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker$6;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Lcom/android/mms/ui/BackgroundSelectorAdapter;)V

    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 503
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    .line 504
    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/mms/ui/BackgroundColorPicker$7;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/BackgroundColorPicker$7;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 511
    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/mms/ui/BackgroundColorPicker$8;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/BackgroundColorPicker$8;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 522
    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

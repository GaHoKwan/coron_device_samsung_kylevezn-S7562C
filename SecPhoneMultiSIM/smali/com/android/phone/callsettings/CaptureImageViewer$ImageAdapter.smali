.class public Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "CaptureImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CaptureImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field final synthetic this$0:Lcom/android/phone/callsettings/CaptureImageViewer;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "c"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 319
    iput-object p2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 322
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mGalleryItemBackground:I

    .line 324
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 9

    .prologue
    .line 329
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 330
    .local v2, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 333
    .local v8, length:I
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$300(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$200(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_data like \'%.vcy\' or _data like \'%.vci\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 334
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 336
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 338
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 346
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v8

    .line 338
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 344
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "ImageManager"

    const-string v1, "SQLiteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 354
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 358
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 360
    .local v15, i:Landroid/widget/ImageView;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    .line 361
    .local v4, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 362
    .local v8, FilePath:Ljava/lang/String;
    const/4 v12, 0x0

    .line 365
    .local v12, fScramble:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$300(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$200(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "_data like \'%.vcy\' or _data like \'%.vci\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 366
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 368
    :try_start_1
    move/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const/4 v2, 0x0

    #calls: Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    invoke-static {v10, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$400(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 372
    :cond_0
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 381
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 382
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 384
    if-eqz v8, :cond_2

    .line 385
    const-string v2, ".vci"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 386
    move-object/from16 v0, v16

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 426
    :cond_2
    :goto_1
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 427
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    const/16 v3, 0xcc

    const/16 v5, 0xa2

    invoke-direct {v2, v3, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mGalleryItemBackground:I

    invoke-virtual {v15, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 430
    return-object v15

    .line 372
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 375
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 378
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "ImageManager"

    const-string v3, "SQLiteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v16       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const-string v2, ".vcy"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    :try_start_4
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v9, v2

    .line 392
    .local v9, bufSize:I
    if-lez v9, :cond_5

    .line 394
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 395
    .end local v12           #fScramble:Ljava/io/FileInputStream;
    .local v13, fScramble:Ljava/io/FileInputStream;
    :try_start_5
    new-array v0, v9, [B

    move-object/from16 v18, v0

    .line 397
    .local v18, scrambleBuffer:[B
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 399
    new-instance v17, Lcom/android/phone/callsettings/ScrambleLib;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/ScrambleLib;-><init>(Landroid/content/Context;)V

    .line 400
    .local v17, scram:Lcom/android/phone/callsettings/ScrambleLib;
    const/16 v2, 0x20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/phone/callsettings/ScrambleLib;->setScrambleData([BII)V

    .line 401
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/callsettings/ScrambleLib;->decode()Z

    .line 402
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v5, v9, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_2

    .line 407
    .end local v17           #scram:Lcom/android/phone/callsettings/ScrambleLib;
    .end local v18           #scrambleBuffer:[B
    :catch_1
    move-exception v11

    move-object v12, v13

    .line 408
    .end local v9           #bufSize:I
    .end local v13           #fScramble:Ljava/io/FileInputStream;
    .end local v14           #file:Ljava/io/File;
    .local v11, e:Ljava/io/FileNotFoundException;
    .restart local v12       #fScramble:Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 413
    if-eqz v12, :cond_2

    .line 415
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 416
    :catch_2
    move-exception v11

    .line 417
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #fScramble:Ljava/io/FileInputStream;
    .restart local v9       #bufSize:I
    .restart local v13       #fScramble:Ljava/io/FileInputStream;
    .restart local v14       #file:Ljava/io/File;
    .restart local v18       #scrambleBuffer:[B
    :cond_4
    move-object v12, v13

    .line 413
    .end local v13           #fScramble:Ljava/io/FileInputStream;
    .end local v18           #scrambleBuffer:[B
    .restart local v12       #fScramble:Ljava/io/FileInputStream;
    :cond_5
    if-eqz v12, :cond_2

    .line 415
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 416
    :catch_3
    move-exception v11

    .line 417
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 409
    .end local v9           #bufSize:I
    .end local v11           #e:Ljava/io/IOException;
    .end local v14           #file:Ljava/io/File;
    :catch_4
    move-exception v11

    .line 411
    .restart local v11       #e:Ljava/io/IOException;
    :goto_4
    :try_start_9
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 413
    if-eqz v12, :cond_2

    .line 415
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 416
    :catch_5
    move-exception v11

    .line 417
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 413
    .end local v11           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v2

    :goto_5
    if-eqz v12, :cond_6

    .line 415
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 418
    :cond_6
    :goto_6
    throw v2

    .line 416
    :catch_6
    move-exception v11

    .line 417
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 413
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #fScramble:Ljava/io/FileInputStream;
    .restart local v9       #bufSize:I
    .restart local v13       #fScramble:Ljava/io/FileInputStream;
    .restart local v14       #file:Ljava/io/File;
    :catchall_2
    move-exception v2

    move-object v12, v13

    .end local v13           #fScramble:Ljava/io/FileInputStream;
    .restart local v12       #fScramble:Ljava/io/FileInputStream;
    goto :goto_5

    .line 409
    .end local v12           #fScramble:Ljava/io/FileInputStream;
    .restart local v13       #fScramble:Ljava/io/FileInputStream;
    :catch_7
    move-exception v11

    move-object v12, v13

    .end local v13           #fScramble:Ljava/io/FileInputStream;
    .restart local v12       #fScramble:Ljava/io/FileInputStream;
    goto :goto_4

    .line 407
    .end local v9           #bufSize:I
    .end local v14           #file:Ljava/io/File;
    :catch_8
    move-exception v11

    goto :goto_3
.end method

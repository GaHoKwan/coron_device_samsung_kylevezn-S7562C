.class public Lcom/android/mms/ui/MessageBubbleActivity;
.super Landroid/app/Activity;
.source "MessageBubbleActivity.java"


# static fields
.field protected static final BG_STYLE_ID:[I = null

.field protected static final BUBBLE_BG_ID:[I = null

.field protected static final BUBBLE_RECEIVE_STYLE_ID:[I = null

.field protected static final BUBBLE_SEND_STYLE_ID:[I = null

.field protected static final CUSTOM2_BG_STYLE_ID:[I = null

.field protected static final CUSTOM2_BUBBLE_BG_ID:[I = null

.field protected static final CUSTOM_BG_STYLE_ID:[I = null

.field protected static final CUSTOM_BUBBLE_BG_ID:[I = null

.field protected static CUSTOM_ITEM_INDEX:I = 0x0

.field private static final ITEM_BETWEEN_GAP:I = 0x1e

.field protected static final ITEM_WIDTH:I = 0x64

.field protected static final MENU_SELECTION_CANCEL:I = 0x2

.field protected static final MENU_SELECTION_SAVE:I = 0x1

.field protected static final NEW_CUSTOM_ITEM_INDEX:I = 0x0

.field private static final SIDE_PADDING:I = 0xe

.field private static final TAG:Ljava/lang/String; = "Mms/MessageBubbleActivity"

.field protected static mBGImageArray:[I = null

.field protected static mBGStyleArray:[I = null

.field protected static mGridWidth:I = 0x0

.field protected static mIsCustomItemExist:Z = false

.field protected static mMaxItemCount:I = 0x0

.field protected static final originalTarget:Ljava/lang/String; = "/data/data/com.android.mms/message_background_image_original.jpg"

.field protected static final originalTargetFileName:Ljava/lang/String; = "message_background_image_original.jpg"

.field protected static final source:Ljava/lang/String; = "/mnt/sdcard/message_background_image.jpg"

.field protected static final target:Ljava/lang/String; = "/data/data/com.android.mms/message_background_image.jpg"

.field protected static final targetDirPath:Ljava/lang/String; = "/data/data/com.android.mms/"

.field protected static final targetFileName:Ljava/lang/String; = "message_background_image.jpg"


# instance fields
.field protected mBGScroll:Landroid/widget/HorizontalScrollView;

.field protected mBackgroundVertical:Landroid/widget/LinearLayout;

.field private mCustomDrawable:Landroid/graphics/drawable/Drawable;

.field mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mGridViewHorizontal_BG:Landroid/widget/GridView;

.field protected mGridViewHorizontal_Receice:Landroid/widget/GridView;

.field protected mGridViewHorizontal_Sent:Landroid/widget/GridView;

.field protected mGridViewVertical_BG:Landroid/widget/GridView;

.field protected mGridViewVertical_Reveice:Landroid/widget/GridView;

.field protected mGridViewVertical_Sent:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mIsLandscape:Z

.field protected mLayoutHorizontal:Landroid/widget/LinearLayout;

.field private mMessageFakeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageSkinBubbleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageSkinFakeItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageSkinFakeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mPrevSelectedBGIndex:I

.field protected mReceiveScroll:Landroid/widget/HorizontalScrollView;

.field public mSelectedBGIndex:I

.field public mSelectedBubbleReceiveIndex:I

.field public mSelectedBubbleSentIndex:I

.field protected mSentScroll:Landroid/widget/HorizontalScrollView;

.field protected mVto:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x7

    const/4 v1, 0x5

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_BG_ID:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BG_STYLE_ID:[I

    .line 60
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BUBBLE_BG_ID:[I

    .line 69
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BG_STYLE_ID:[I

    .line 77
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BUBBLE_BG_ID:[I

    .line 87
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BG_STYLE_ID:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    .line 157
    const/16 v0, 0x38c

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridWidth:I

    .line 158
    sput v2, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    .line 165
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    .line 167
    sput-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    .line 168
    sput-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    return-void

    .line 44
    nop

    :array_0
    .array-data 0x4
        0x7ft 0x1t 0x2t 0x7ft
        0x80t 0x1t 0x2t 0x7ft
        0x81t 0x1t 0x2t 0x7ft
        0x82t 0x1t 0x2t 0x7ft
        0x83t 0x1t 0x2t 0x7ft
    .end array-data

    .line 52
    :array_1
    .array-data 0x4
        0x35t 0x2t 0x2t 0x7ft
        0x36t 0x2t 0x2t 0x7ft
        0x37t 0x2t 0x2t 0x7ft
        0x38t 0x2t 0x2t 0x7ft
        0x39t 0x2t 0x2t 0x7ft
    .end array-data

    .line 60
    :array_2
    .array-data 0x4
        0x85t 0x1t 0x2t 0x7ft
        0x7ft 0x1t 0x2t 0x7ft
        0x80t 0x1t 0x2t 0x7ft
        0x81t 0x1t 0x2t 0x7ft
        0x82t 0x1t 0x2t 0x7ft
        0x83t 0x1t 0x2t 0x7ft
    .end array-data

    .line 69
    :array_3
    .array-data 0x4
        0x3bt 0x2t 0x2t 0x7ft
        0x35t 0x2t 0x2t 0x7ft
        0x36t 0x2t 0x2t 0x7ft
        0x37t 0x2t 0x2t 0x7ft
        0x38t 0x2t 0x2t 0x7ft
        0x39t 0x2t 0x2t 0x7ft
    .end array-data

    .line 77
    :array_4
    .array-data 0x4
        0x85t 0x1t 0x2t 0x7ft
        0x85t 0x1t 0x2t 0x7ft
        0x7ft 0x1t 0x2t 0x7ft
        0x80t 0x1t 0x2t 0x7ft
        0x81t 0x1t 0x2t 0x7ft
        0x82t 0x1t 0x2t 0x7ft
        0x83t 0x1t 0x2t 0x7ft
    .end array-data

    .line 87
    :array_5
    .array-data 0x4
        0x3bt 0x2t 0x2t 0x7ft
        0x3bt 0x2t 0x2t 0x7ft
        0x35t 0x2t 0x2t 0x7ft
        0x36t 0x2t 0x2t 0x7ft
        0x37t 0x2t 0x2t 0x7ft
        0x38t 0x2t 0x2t 0x7ft
        0x39t 0x2t 0x2t 0x7ft
    .end array-data

    .line 97
    :array_6
    .array-data 0x4
        0xdet 0x1t 0x2t 0x7ft
        0xdft 0x1t 0x2t 0x7ft
        0xe0t 0x1t 0x2t 0x7ft
        0xe1t 0x1t 0x2t 0x7ft
        0xe2t 0x1t 0x2t 0x7ft
    .end array-data

    .line 105
    :array_7
    .array-data 0x4
        0xe3t 0x1t 0x2t 0x7ft
        0xe4t 0x1t 0x2t 0x7ft
        0xe5t 0x1t 0x2t 0x7ft
        0xe6t 0x1t 0x2t 0x7ft
        0xe7t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    .line 176
    return-void
.end method

.method public static getBGStyleArray()[I
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->updateBGStyleArray()V

    .line 228
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    return-object v0
.end method

.method protected static getCropedBackground(Landroid/app/Activity;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 24
    .parameter "activity"
    .parameter "isLandscape"
    .parameter "isDownSizing"

    .prologue
    .line 468
    new-instance v19, Ljava/io/File;

    const-string v20, "/data/data/com.android.mms/"

    const-string v21, "message_background_image.jpg"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 470
    .local v11, mImageOutputUri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 471
    .local v17, photo:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 472
    .local v18, photoTemp:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 474
    .local v5, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getWidth()I

    move-result v15

    .line 475
    .local v15, mScreenWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getHeight()I

    move-result v14

    .line 476
    .local v14, mScreenHeight:I
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I

    move-result v9

    .line 477
    .local v9, gap:I
    move v12, v14

    .line 478
    .local v12, mNewScreenHeight:I
    move v13, v15

    .line 482
    .local v13, mNewScreenWidth:I
    if-nez p2, :cond_3

    .line 483
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 492
    :goto_0
    sub-int v12, v14, v9

    .line 494
    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v19

    if-nez v19, :cond_4

    .line 495
    if-eqz p1, :cond_0

    .line 497
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v8, v19, v20

    .line 500
    .local v8, factor:F
    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    div-int/lit8 v22, v22, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 507
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 508
    const/16 v17, 0x0

    .line 509
    move-object/from16 v17, v18

    .line 529
    .end local v8           #factor:F
    :cond_0
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    if-lt v0, v12, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    if-ge v0, v13, :cond_2

    .line 530
    :cond_1
    const-string v19, "Mms/MessageBubbleActivity"

    const-string v20, "setBackground photo.getHeight() < mNewScreenHeight || photo.getWidth() < mNewScreenWidth"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v15, v14, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 533
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    const/16 v17, 0x0

    .line 535
    move-object/from16 v17, v18

    .line 538
    :cond_2
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .local v6, d:Landroid/graphics/drawable/Drawable;
    move-object v5, v6

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .restart local v5       #d:Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v19, v5

    .line 553
    :goto_3
    return-object v19

    .line 485
    :cond_3
    const/4 v10, 0x0

    .line 486
    .local v10, input:Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 487
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 488
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 489
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    goto/16 :goto_0

    .line 512
    .end local v10           #input:Ljava/io/InputStream;
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    if-nez p1, :cond_0

    .line 514
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v8, v19, v20

    .line 515
    .restart local v8       #factor:F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x3

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    div-int/lit8 v21, v21, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v8

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 522
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 523
    const/16 v17, 0x0

    .line 524
    move-object/from16 v17, v18

    goto/16 :goto_1

    .line 540
    .end local v8           #factor:F
    :catch_0
    move-exception v7

    .line 541
    .local v7, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 542
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 543
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 544
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 545
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 546
    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    if-nez v5, :cond_5

    .line 547
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 548
    :cond_5
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageBubbleActivity;->getCropedBackground(Landroid/app/Activity;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 551
    goto/16 :goto_2

    .line 549
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    .line 550
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public static getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I
    .locals 8
    .parameter "activity"

    .prologue
    .line 591
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 592
    .local v1, rectgle:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 593
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 594
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 595
    .local v2, statusBarHeight:I
    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    .line 596
    .local v0, contentViewTop:I
    sub-int v3, v0, v2

    .line 598
    .local v3, titleBarHeight:I
    const-string v5, "StatusBarTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StatusBar Height= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " TitleBar Height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return v0
.end method

.method private imgRotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bmp"
    .parameter "frotate"

    .prologue
    const/4 v1, 0x0

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 579
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 581
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 582
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 584
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 585
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 587
    return-object v7
.end method

.method protected static isCustomItemExist()Z
    .locals 2

    .prologue
    .line 195
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    .line 196
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, targetFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    .line 201
    :cond_0
    sget-boolean v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    return v1
.end method

.method protected static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 604
    if-nez p0, :cond_0

    .line 608
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected static recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 623
    if-nez p0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 627
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 628
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method protected static recycleBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 612
    if-nez p0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 615
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    move-object v1, p0

    .line 616
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 617
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 618
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method private setDateSeperator()V
    .locals 3

    .prologue
    .line 352
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 353
    .local v0, df:Ljava/text/DateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 355
    .local v1, timeMillis:J
    return-void
.end method

.method protected static updateBGStyleArray()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    .line 208
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    .line 220
    :goto_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    .line 221
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1c

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridWidth:I

    .line 223
    return-void

    .line 211
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    .line 213
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    goto :goto_0

    .line 216
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    .line 217
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    goto :goto_0
.end method


# virtual methods
.method public makeView()V
    .locals 13

    .prologue
    const/4 v6, 0x1

    const v12, 0x7f02006e

    const v11, 0x7f02006c

    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 232
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleBackgroundStyle(Landroid/content/Context;)I

    move-result v2

    .line 233
    .local v2, selectedBGIndex:I
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v4

    .line 234
    .local v4, selectedBubbleSentIndex:I
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v3

    .line 236
    .local v3, selectedBubbleReceiveIndex:I
    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    invoke-static {v2, v5}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    const/4 v2, 0x1

    .line 238
    :cond_0
    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 239
    const/4 v4, 0x0

    .line 240
    :cond_1
    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 241
    const/4 v3, 0x0

    .line 243
    :cond_2
    if-nez v2, :cond_3

    .line 244
    const/4 v2, 0x1

    .line 246
    :cond_3
    iput v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    .line 247
    iput v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    .line 248
    iput v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    .line 249
    iput v3, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    .line 253
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 254
    const v5, 0x7f0e012f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    .line 256
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 257
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030057

    iget-object v9, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    .line 258
    .local v1, messageList:Lcom/android/mms/ui/MessageSkinBubbleItem;
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/MessageSkinFakeItem;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MessageSkinBubbleItem;->bind(Lcom/android/mms/ui/MessageSkinFakeItem;)V

    .line 259
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1           #messageList:Lcom/android/mms/ui/MessageSkinBubbleItem;
    :cond_4
    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iget v8, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {p0, v5, v8}, Lcom/android/mms/ui/MessageBubbleActivity;->setBubbleImage(II)V

    .line 267
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    .line 269
    const v5, 0x7f0e0135

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    .line 270
    const v5, 0x7f0e0131

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    .line 271
    const v5, 0x7f0e0133

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    .line 273
    const v5, 0x7f0e0136

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    .line 274
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 276
    const v5, 0x7f0e0132

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    .line 277
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    const v5, 0x7f0e0134

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    .line 280
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 282
    const v5, 0x7f0e013b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    .line 283
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v5, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 285
    const v5, 0x7f0e013a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    .line 286
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v5, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 288
    const v5, 0x7f0e0139

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    .line 289
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v5, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 291
    const v5, 0x7f0e0138

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    .line 293
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->updateGridViewLayout()V

    .line 295
    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v8, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v5, v8, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 296
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground()V

    .line 297
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageBubbleActivity;->setShadowOnText(Z)V

    .line 304
    :goto_2
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v5, :cond_7

    .line 305
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setDateSeperator()V

    .line 314
    return-void

    :cond_5
    move v5, v7

    .line 267
    goto/16 :goto_1

    .line 299
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v8, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    iget v9, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 301
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageBubbleActivity;->setShadowOnText(Z)V

    goto :goto_2

    .line 309
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 372
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    .line 374
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v1, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground()V

    .line 378
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 379
    return-void

    .line 372
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const v2, 0x7f03004b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 183
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0487

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, meString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0488

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, youString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/MessageSkinFakeItem;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/MessageSkinFakeItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/MessageSkinFakeItem;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/android/mms/ui/MessageSkinFakeItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->updateBGStyleArray()V

    .line 191
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setWindowResizingEventHandler()V

    .line 192
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 397
    const/4 v2, 0x2

    const v3, 0x7f0a01e9

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 398
    .local v0, menuCancel:Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 400
    const/4 v2, 0x1

    const v3, 0x7f0a010f

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 401
    .local v1, menuSave:Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 403
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 383
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 392
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 385
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 388
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 408
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 409
    .local v0, menuCancel:Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 411
    .local v1, menuSave:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 412
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v2, :cond_1

    .line 413
    const v2, 0x7f020285

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 414
    const v2, 0x7f020286

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 421
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 416
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 417
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setActionBar()V
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    return-void
.end method

.method protected setBackground()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 558
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 561
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    invoke-static {p0, v1, v7}, Lcom/android/mms/ui/MessageBubbleActivity;->getCropedBackground(Landroid/app/Activity;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    .line 563
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 575
    :goto_0
    return-void

    .line 566
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 567
    .local v0, lo:[I
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 569
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    aget v2, v0, v7

    neg-int v2, v2

    aget v3, v0, v6

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    aget v5, v0, v7

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    aget v6, v0, v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 571
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x3300

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 572
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBubbleImage(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 324
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    .line 326
    .local v1, messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setBubbleImage(I)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    .end local v1           #messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    :cond_0
    return-void
.end method

.method public setBubbleImage(II)V
    .locals 3
    .parameter "sendStyle"
    .parameter "receiveStyle"

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    .line 333
    .local v1, messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->getIsNew()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v1, p2}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setBubbleImage(I)V

    .line 331
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setBubbleImage(I)V

    goto :goto_1

    .line 338
    .end local v1           #messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    :cond_1
    return-void
.end method

.method public setShadowOnText(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 341
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    .line 343
    .local v1, messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->getIsNew()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setShadowOnText(Z)V

    .line 341
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setShadowOnText(Z)V

    goto :goto_1

    .line 349
    .end local v1           #messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 364
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 366
    :cond_0
    return-void
.end method

.method protected setWindowResizingEventHandler()V
    .locals 2

    .prologue
    .line 438
    new-instance v0, Lcom/android/mms/ui/MessageBubbleActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageBubbleActivity$1;-><init>(Lcom/android/mms/ui/MessageBubbleActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 463
    return-void
.end method

.method protected updateGridViewLayout()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 318
    .local v0, newLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/android/mms/ui/MessageBubbleActivity;->mGridWidth:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 319
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    sget v2, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 321
    return-void
.end method

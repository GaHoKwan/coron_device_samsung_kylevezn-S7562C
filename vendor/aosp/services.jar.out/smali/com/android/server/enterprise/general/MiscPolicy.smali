.class public Lcom/android/server/enterprise/general/MiscPolicy;
.super Landroid/app/enterprise/IMiscPolicy$Stub;
.source "MiscPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$1;,
        Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;,
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
    }
.end annotation


# static fields
.field private static final SETTINGS_APP_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "MiscPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFontSizes:[F

.field private mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

.field private mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;-><init>()V

    .line 125
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 129
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 133
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 135
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 136
    return-void
.end method

.method private GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 15
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"

    .prologue
    .line 666
    const/4 v10, 0x0

    .line 668
    .local v10, ret:Z
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 669
    .local v3, creationTime:J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 670
    .local v9, map:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 671
    .local v5, cursor:Landroid/database/Cursor;
    iget-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 672
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 674
    .local v7, folder:I
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 675
    if-nez v5, :cond_1

    .line 676
    const/4 v12, 0x0

    .line 735
    if-eqz v5, :cond_0

    .line 736
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 738
    :cond_0
    :goto_0
    return v12

    .line 677
    :cond_1
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x4

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-nez v12, :cond_3

    .line 681
    const-string v12, "created"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 682
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v9, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v12, "bookmark"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    const-string v12, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 685
    const-string v12, "touch_icon"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 686
    sget-object v12, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v9, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 731
    :goto_1
    const/4 v10, 0x1

    .line 735
    if-eqz v5, :cond_2

    .line 736
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    move v12, v10

    .line 738
    goto :goto_0

    .line 688
    :cond_3
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 690
    .local v1, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v1, :cond_4

    .line 693
    invoke-interface {v5, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 694
    const/4 v12, 0x5

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 704
    :cond_4
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v9, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v12, "url"

    move-object/from16 v0, p1

    invoke-virtual {v9, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v12, "created"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 707
    const-string v12, "bookmark"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    const-string v12, "date"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    const-string v12, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 711
    const/4 v11, 0x0

    .line 712
    .local v11, visits:I
    if-lez v1, :cond_5

    .line 718
    const/4 v12, 0x2

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 724
    :cond_5
    if-nez v1, :cond_7

    if-nez v7, :cond_7

    .line 725
    const-string v12, "visits"

    add-int/lit8 v13, v11, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    :goto_4
    sget-object v12, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v12, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 732
    .end local v1           #count:I
    .end local v8           #i:I
    .end local v11           #visits:I
    :catch_0
    move-exception v6

    .line 733
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addBookmark"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 735
    if-eqz v5, :cond_2

    goto/16 :goto_2

    .line 690
    .end local v6           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #count:I
    .restart local v8       #i:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 727
    .restart local v11       #visits:I
    :cond_7
    :try_start_4
    const-string v12, "visits"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 735
    .end local v1           #count:I
    .end local v8           #i:I
    .end local v11           #visits:I
    :catchall_0
    move-exception v12

    if-eqz v5, :cond_8

    .line 736
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_8
    throw v12
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 616
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    return-void
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bm"

    .prologue
    .line 746
    if-nez p0, :cond_0

    .line 747
    const/4 v1, 0x0

    .line 752
    :goto_0
    return-object v1

    .line 750
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 751
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 752
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method private enforceSecurityPermission()I
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private floatToIndex(F)I
    .locals 7
    .parameter "val"

    .prologue
    .line 1368
    const/4 v2, -0x1

    .line 1369
    .local v2, ret:I
    const/4 v3, 0x0

    .line 1370
    .local v3, thisVal:F
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1372
    .local v1, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 1373
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v3, v4, v0

    .line 1374
    sub-float v4, v3, v1

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 1375
    add-int/lit8 v4, v0, -0x1

    .line 1381
    :goto_1
    return v4

    .line 1377
    :cond_0
    move v1, v3

    .line 1372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 1380
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floatToIndex(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 1381
    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 629
    const/4 v7, 0x0

    .line 630
    .local v7, secure:Z
    move-object v6, p1

    .line 631
    .local v6, compareString:Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 637
    :cond_0
    :goto_0
    const-string v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 640
    :cond_1
    const/4 v8, 0x0

    .line 641
    .local v8, whereClause:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_3

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 644
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 657
    :goto_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 633
    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    :cond_2
    const-string v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 635
    const/4 v7, 0x1

    goto :goto_0

    .line 647
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 649
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 651
    .local v9, wwwString:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 652
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 654
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isAdminLockScreenStringSet()Z
    .locals 4

    .prologue
    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "lockscreenstring"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 842
    const/4 v0, 0x1

    .line 844
    :cond_0
    return v0
.end method

.method private isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J
    .locals 10
    .parameter "aRingToneAbsolutePath"
    .parameter "aUri"

    .prologue
    .line 260
    const-wide/16 v8, -0x1

    .line 262
    .local v8, lRingToneEntryId:J
    const/4 v7, 0x0

    .line 265
    .local v7, lCursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, lWhereClause:Ljava/lang/String;
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : whereClause :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 272
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 274
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 280
    :cond_0
    if-eqz v7, :cond_1

    .line 281
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 282
    .end local v3           #lWhereClause:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 286
    :cond_1
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-wide v8

    .line 277
    :catch_0
    move-exception v6

    .line 278
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    if-eqz v7, :cond_1

    .line 281
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 280
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 281
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 282
    const/4 v7, 0x0

    .line 280
    :cond_2
    throw v0
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 13
    .parameter "fileName"

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 293
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 295
    .local v0, bytes:[B
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 296
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 298
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    if-eqz v5, :cond_4

    .line 300
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 301
    .local v6, length:J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    .line 302
    new-instance v10, Ljava/io/IOException;

    const-string v11, "The file is too big"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    .end local v6           #length:J
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 321
    .end local v3           #file:Ljava/io/File;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 326
    if-eqz v4, :cond_0

    .line 327
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 328
    const/4 v4, 0x0

    .line 334
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readFile returns "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-object v0

    .line 306
    .end local v2           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v6       #length:J
    :cond_1
    long-to-int v10, v6

    :try_start_5
    new-array v0, v10, [B

    .line 308
    const/4 v9, 0x0

    .line 309
    .local v9, offset:I
    const/4 v8, 0x0

    .line 311
    .local v8, numRead:I
    :goto_2
    array-length v10, v0

    if-ge v9, v10, :cond_2

    array-length v10, v0

    sub-int/2addr v10, v9

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_2

    .line 312
    add-int/2addr v9, v8

    goto :goto_2

    .line 315
    :cond_2
    array-length v10, v0

    if-ge v9, v10, :cond_4

    .line 316
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The file was not completely read: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 325
    .end local v6           #length:J
    .end local v8           #numRead:I
    .end local v9           #offset:I
    :catchall_0
    move-exception v10

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 326
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :goto_3
    if-eqz v4, :cond_3

    .line 327
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 328
    const/4 v4, 0x0

    .line 325
    :cond_3
    :goto_4
    throw v10

    .line 326
    .end local v2           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :cond_4
    if-eqz v5, :cond_5

    .line 327
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 328
    const/4 v4, 0x0

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :goto_5
    move-object v2, v3

    .line 333
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .line 330
    :catch_1
    move-exception v1

    .line 331
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 330
    :catch_2
    move-exception v1

    .line 331
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 330
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 331
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_5

    .line 325
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catchall_1
    move-exception v10

    goto :goto_3

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_2
    move-exception v10

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .line 320
    :catch_4
    move-exception v1

    goto :goto_0

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_0
.end method

.method private removeFromBookmarks(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "url"
    .parameter "title"

    .prologue
    .line 760
    const/4 v6, 0x0

    .line 761
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 762
    .local v10, ret:Z
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 764
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? AND title = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 768
    if-nez v6, :cond_1

    .line 769
    const/4 v1, 0x0

    .line 796
    if-eqz v6, :cond_0

    .line 797
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 799
    :cond_0
    :goto_0
    return v1

    .line 770
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 772
    .local v8, first:Z
    if-nez v8, :cond_3

    .line 796
    if-eqz v6, :cond_2

    .line 797
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v10

    .line 773
    goto :goto_0

    .line 776
    :cond_3
    :try_start_2
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 778
    .local v11, uri:Landroid/net/Uri;
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 779
    .local v9, numVisits:I
    if-nez v9, :cond_5

    .line 780
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 792
    :goto_1
    const/4 v10, 0x1

    .line 796
    if-eqz v6, :cond_4

    .line 797
    .end local v8           #first:Z
    .end local v9           #numVisits:I
    .end local v11           #uri:Landroid/net/Uri;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v10

    .line 799
    goto :goto_0

    .line 784
    .restart local v8       #first:Z
    .restart local v9       #numVisits:I
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_5
    :try_start_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "bookmark"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 787
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 788
    :catch_0
    move-exception v7

    .line 789
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v1, "removeFromBookmarks"

    const-string v2, "no database!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 793
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v8           #first:Z
    .end local v9           #numVisits:I
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v7

    .line 794
    .restart local v7       #e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v1, "MiscPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFromBookmarks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 796
    if-eqz v6, :cond_4

    goto :goto_2

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 797
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 796
    :cond_6
    throw v1
.end method

.method private retrieveSystemFontSizes()V
    .locals 9

    .prologue
    .line 1385
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-eqz v6, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    const/4 v5, 0x0

    .line 1390
    .local v5, resources:Landroid/content/res/Resources;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v7, "com.android.settings"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1391
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_2

    .line 1392
    const-string v6, "MiscPolicy"

    const-string v7, "retrieveSystemFontSizes(): Setting Context is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1407
    .end local v0           #context:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1408
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "MiscPolicy"

    const-string v7, "retrieveSystemFontSizes() fail: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1395
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1396
    const-string v6, "entryvalues_font_size"

    const-string v7, "array"

    const-string v8, "com.android.settings"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1397
    .local v4, resId:I
    if-nez v4, :cond_3

    .line 1398
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveSystemFontSizes() resourceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1402
    :cond_3
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1403
    .local v2, fontSizeNames:[Ljava/lang/String;
    array-length v6, v2

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 1404
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 1405
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1404
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "ringtonefilePath"
    .parameter "mimeType"

    .prologue
    const/4 v10, 0x1

    .line 218
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v4, ringtoneFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 222
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/server/enterprise/general/MiscPolicy;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v2

    .line 223
    .local v2, lRingToneId:J
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ringtone id :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-wide/16 v6, -0x1

    cmp-long v6, v6, v2

    if-eqz v6, :cond_0

    .line 226
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ringtone entry exist deleting it :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 230
    :cond_0
    const-string v6, "MiscPolicy"

    const-string v7, "Ringtone creating new one"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v0, content:Landroid/content/ContentValues;
    const-string v6, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v6, "title"

    const-string v7, "IT Admin tone"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v6, "_size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string v6, "mime_type"

    const-string v7, "audio/*"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v6, "artist"

    const-string v7, "artist"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v6, "is_ringtone"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    const-string v6, "is_notification"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 240
    const-string v6, "is_alarm"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    const-string v6, "is_music"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 244
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 250
    .end local v0           #content:Landroid/content/ContentValues;
    .end local v2           #lRingToneId:J
    :goto_0
    if-eqz v5, :cond_1

    .line 251
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 255
    :cond_1
    return-void

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addClipboardData(Landroid/content/ClipData;)Z
    .locals 1
    .parameter "clip"

    .prologue
    .line 1256
    const/4 v0, 0x1

    return v0
.end method

.method public addClipboardTextData(Ljava/lang/String;)Z
    .locals 1
    .parameter "clip"

    .prologue
    .line 1268
    const/4 v0, 0x1

    return v0
.end method

.method public addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "uri"
    .parameter "title"
    .parameter "iconBm"

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    .line 599
    if-nez p1, :cond_0

    .line 600
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .locals 3
    .parameter "uri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    const/4 v1, 0x0

    .line 581
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 584
    array-length v2, p3

    invoke-static {p3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 587
    :cond_0
    if-nez p1, :cond_1

    .line 590
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_0
.end method

.method public changeLockScreenString(Ljava/lang/String;)Z
    .locals 10
    .parameter "statement"

    .prologue
    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 855
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    .line 856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 857
    .local v4, token:J
    const/4 v2, 0x0

    .line 858
    .local v2, ret:Z
    const/4 v3, 0x0

    .line 859
    .local v3, revoked:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet()Z

    move-result v1

    .line 861
    .local v1, restricted:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gez v6, :cond_1

    .line 862
    :cond_0
    const/4 v3, 0x1

    .line 863
    const-string p1, ""

    .line 867
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 868
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 869
    const-string v6, "MiscPolicy"

    const-string v7, "changeLockScreenString():lock screen text is truncated "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_2
    if-nez v3, :cond_6

    .line 874
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 876
    .local v0, enabled:I
    if-nez v1, :cond_3

    .line 877
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "lockscreenstring"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 880
    :cond_3
    if-nez v0, :cond_4

    .line 881
    const-string v6, "MiscPolicy"

    const-string v7, "changeLockScreenString(): enabling owner info"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 886
    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 909
    .end local v0           #enabled:I
    :cond_5
    :goto_0
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeLockScreenString():ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    return v2

    .line 890
    :cond_6
    if-ne v1, v9, :cond_5

    .line 892
    const-string v6, "MiscPolicy"

    const-string v7, "changeLockScreenString(): revoke restriction"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "lockscreenstring"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 899
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public clearClipboardData()Z
    .locals 1

    .prologue
    .line 1264
    const/4 v0, 0x1

    return v0
.end method

.method public deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    .line 609
    if-nez p1, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->removeFromBookmarks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getClipboardData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1260
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClipboardTextData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLockScreenString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 809
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    .line 810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 811
    .local v3, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_owner_info_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 813
    .local v0, enabled:I
    const/4 v1, 0x0

    .line 814
    .local v1, lScreenTxt:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet()Z

    move-result v2

    .line 815
    .local v2, restricted:Z
    if-ne v2, v7, :cond_0

    if-ne v0, v7, :cond_0

    .line 822
    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_owner_info"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 827
    return-object v1
.end method

.method public getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    .locals 7

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    .line 347
    :try_start_0
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    .line 348
    .local v1, sci:Landroid/app/enterprise/SimChangeInfo;
    const-string v4, "SimChangeTime"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, tmp:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 351
    const-string v3, "-1"

    .line 352
    :cond_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    .line 353
    new-instance v4, Landroid/app/enterprise/SimInfo;

    invoke-direct {v4}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    .line 354
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimCountryIso"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 357
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimOperatorName"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 360
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimOperator"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 362
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimPhoneNumber"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 365
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimSerialNumber"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;

    .line 369
    const-string v4, "SimChangeOperation"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    if-nez v3, :cond_1

    .line 372
    const-string v3, "-1"

    .line 373
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    .line 375
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 377
    .local v2, tm:Landroid/telephony/TelephonyManager;
    new-instance v4, Landroid/app/enterprise/SimInfo;

    invoke-direct {v4}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    .line 378
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 379
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 380
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 381
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 382
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v1           #sci:Landroid/app/enterprise/SimChangeInfo;
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    .end local v3           #tmp:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    goto :goto_0
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemActiveFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemActiveFontSize()F
    .locals 7

    .prologue
    .line 1338
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1339
    .local v0, curConfig:Landroid/content/res/Configuration;
    const/4 v4, 0x0

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1342
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1343
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1344
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v3

    .line 1345
    .local v3, index:I
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_size"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1347
    .local v2, fontIndex:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 1348
    const/4 v3, 0x4

    .line 1349
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v4, v4, v3

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1351
    :cond_0
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemActiveFontSize(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    .end local v2           #fontIndex:I
    .end local v3           #index:I
    :goto_0
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    return v4

    .line 1352
    :catch_0
    move-exception v1

    .line 1353
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MiscPolicy"

    const-string v5, "getSystemActiveFontSize(): Unable to read font size"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSystemFontSizes()[F
    .locals 1

    .prologue
    .line 1363
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1364
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    return-object v0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1235
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1241
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1252
    return-void
.end method

.method public setRingerBytes([BLjava/lang/String;)V
    .locals 9
    .parameter "buffer"
    .parameter "mimeType"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x0

    .line 185
    .local v2, outStream:Ljava/io/OutputStream;
    if-eqz p1, :cond_0

    :try_start_0
    array-length v5, p1

    if-lez v5, :cond_0

    if-nez p2, :cond_2

    .line 186
    :cond_0
    const-string v5, "MiscPolicy"

    const-string v6, "setRingerBytes: Invalid parameter(s)"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    if-eqz v2, :cond_1

    .line 208
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    :try_start_2
    const-string v4, "/data/system/custom.ogg"

    .line 192
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 197
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    .end local v2           #outStream:Ljava/io/OutputStream;
    .local v3, outStream:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 199
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->updateDatabase(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 207
    if-eqz v3, :cond_4

    .line 208
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_1
    move-object v2, v3

    .line 214
    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_0

    .line 203
    .end local v1           #file:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    if-eqz v2, :cond_1

    .line 208
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    .local v0, e:Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 207
    :goto_4
    if-eqz v2, :cond_5

    .line 208
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 206
    :cond_5
    :goto_5
    throw v5

    .line 210
    :catch_2
    move-exception v0

    .line 211
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRingerBytes EX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 210
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 211
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 210
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #outStream:Ljava/io/OutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    .restart local v4       #path:Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 211
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 203
    .end local v2           #outStream:Ljava/io/OutputStream;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aRingtonefilePath"
    .parameter "aMmimeType"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 160
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 161
    :cond_0
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath param null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 167
    .local v0, lRingToneData:[B
    if-eqz v0, :cond_2

    .line 168
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath file read successfully: "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->setRingerBytes([BLjava/lang/String;)V

    .line 174
    :goto_1
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath : ringtone return "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_2
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath file reading failed "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "fontName"
    .parameter "apkPath"

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    .line 933
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSystemActiveFontSize(F)Z
    .locals 12
    .parameter "fontSize"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x4

    .line 1282
    const/4 v5, 0x1

    .line 1284
    .local v5, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    .line 1285
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1287
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-nez v9, :cond_0

    .line 1331
    :goto_0
    return v8

    .line 1290
    :cond_0
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1291
    .local v1, currIndex:I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v4

    .line 1293
    .local v4, newIndex:I
    if-ne v1, v4, :cond_1

    .line 1294
    const-string v8, "MiscPolicy"

    const-string v9, "setSystemActiveFontSize(): same font size"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v5

    .line 1295
    goto :goto_0

    .line 1300
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    invoke-static {v9, v10, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1302
    if-ge v1, v11, :cond_4

    if-ne v4, v11, :cond_4

    .line 1303
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v3, i:Landroid/content/Intent;
    const-string v8, "large_font"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1305
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1314
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1315
    .local v0, curConfig:Landroid/content/res/Configuration;
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v8, v8, v4

    iput v8, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1317
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v8, v8, v4

    const/high16 v9, 0x3fc0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1318
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    iput v8, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1319
    const-string v8, "MiscPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSystemActiveFontSize : Extra large font. fontScale changed to : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1324
    .local v6, token:J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1325
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #token:J
    :goto_2
    move v8, v5

    .line 1331
    goto/16 :goto_0

    .line 1306
    .end local v0           #curConfig:Landroid/content/res/Configuration;
    :cond_4
    if-ne v1, v11, :cond_2

    if-ge v4, v11, :cond_2

    .line 1307
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1308
    .restart local v3       #i:Landroid/content/Intent;
    const-string v9, "large_font"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1309
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1326
    .end local v3           #i:Landroid/content/Intent;
    .restart local v0       #curConfig:Landroid/content/res/Configuration;
    :catch_0
    move-exception v2

    .line 1327
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "MiscPolicy"

    const-string v9, "setSystemActiveFontSize(): Unable to set font size"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1247
    return-void
.end method

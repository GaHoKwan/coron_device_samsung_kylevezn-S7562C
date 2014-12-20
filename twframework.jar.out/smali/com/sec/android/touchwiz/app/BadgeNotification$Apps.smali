.class public Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;
.super Ljava/lang/Object;
.source "BadgeNotification.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/app/BadgeNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Apps"
.end annotation


# static fields
.field public static final BADGECOUNT:Ljava/lang/String; = "badgecount"

.field public static final CLASSNAME:Ljava/lang/String; = "class"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTRADATA:Ljava/lang/String; = "extraData"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final INTENT_DEFAULT_EXTRA_DATA:Ljava/lang/String; = "base_extra_badge"

.field public static final INTENT_EXTRA_BADGE:Ljava/lang/String; = "have_badge"

.field public static final PACKAGENAME:Ljava/lang/String; = "package"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri(J)Landroid/net/Uri;
    .locals 2
    .parameter "id"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.badge/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 94
    const-string v0, "base_extra_badge"

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 11
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "extraData"

    .prologue
    const/4 v10, 0x0

    .line 97
    invoke-static {}, Lcom/sec/android/touchwiz/app/BadgeNotification;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BadgeNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId : className = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    const/4 v6, 0x0

    .line 99
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 101
    .local v8, id:J
    const/4 v0, 0x0

    .line 103
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_0
    sget-object v1, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extraData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 118
    if-eqz v6, :cond_2

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 123
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_2
    if-eqz v0, :cond_4

    .line 126
    invoke-static {}, Lcom/sec/android/touchwiz/app/BadgeNotification;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BadgeNotification"

    const-string v2, "ContentProviderClient is released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 130
    :cond_4
    :goto_0
    return-wide v8

    .line 109
    :catch_0
    move-exception v7

    .line 110
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_1
    const-string v1, "BadgeNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-eqz v6, :cond_6

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 123
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_6
    if-eqz v0, :cond_4

    .line 126
    invoke-static {}, Lcom/sec/android/touchwiz/app/BadgeNotification;->access$000()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "BadgeNotification"

    const-string v2, "ContentProviderClient is released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_7
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 111
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 112
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v1, "BadgeNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    if-eqz v6, :cond_9

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 123
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_9
    if-eqz v0, :cond_4

    .line 126
    invoke-static {}, Lcom/sec/android/touchwiz/app/BadgeNotification;->access$000()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "BadgeNotification"

    const-string v2, "ContentProviderClient is released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_a
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 113
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v7

    .line 114
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v1, "BadgeNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    if-eqz v6, :cond_c

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 123
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_c
    if-eqz v0, :cond_4

    .line 126
    invoke-static {}, Lcom/sec/android/touchwiz/app/BadgeNotification;->access$000()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "BadgeNotification"

    const-string v2, "ContentProviderClient is released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_d
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 115
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v7

    .line 116
    .local v7, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "BadgeNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    if-eqz v6, :cond_f

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_e

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 123
    :cond_e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_f
    if-eqz v0, :cond_4

    .line 126
    invoke-static {}, Lcom/sec/android/touchwiz/app/BadgeNotification;->access$000()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "BadgeNotification"

    const-string v2, "ContentProviderClient is released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_10
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 118
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_12

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_11

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 123
    :cond_11
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_12
    if-eqz v0, :cond_14

    .line 126
    invoke-static {}, Lcom/sec/android/touchwiz/app/BadgeNotification;->access$000()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "BadgeNotification"

    const-string v3, "ContentProviderClient is released"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_13
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_14
    throw v1
.end method

.method private static final getStreamFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bmp"

    .prologue
    .line 194
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    .local v0, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 196
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static final getStreamFromDrawable(Landroid/graphics/drawable/Drawable;)[B
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    invoke-static {v0}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getStreamFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 204
    .local v2, data:[B
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    return-object v2
.end method

.method public static final setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "badgeCount"

    .prologue
    .line 134
    const-string v0, "base_extra_badge"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public static final setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "extraData"
    .parameter "badgeCount"

    .prologue
    const/4 v6, 0x0

    .line 138
    invoke-static {}, Lcom/sec/android/touchwiz/app/BadgeNotification;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BadgeNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBadgeCount : badgeCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 140
    .local v0, id:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "badgecount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 143
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "extraData"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final setIcon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "extraData"
    .parameter "bmp"

    .prologue
    const/4 v5, 0x0

    .line 166
    const-string v3, "BadgeNotification"

    const-string v4, "No supported API"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 168
    .local v0, id:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-static {p4}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getStreamFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 170
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 171
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v3, "extraData"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final setIcon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "extraData"
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 180
    const-string v3, "BadgeNotification"

    const-string v4, "No supported API"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 182
    .local v0, id:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-static {p4}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getStreamFromDrawable(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 184
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 185
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "extraData"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final setIcon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "extraData"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 152
    const-string v3, "BadgeNotification"

    const-string v4, "No supported API"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 154
    .local v0, id:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 156
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 157
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v3, "extraData"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.class public abstract Lcom/android/contacts/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManager$1;,
        Lcom/android/contacts/ContactPhotoManager$AvatarCallLogDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field public static final DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_CALLLOG_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field private static final DEFAULT_IMAGES:[I

.field private static final DEFAULT_IMAGES_CALLLOG_DETAIL:[I

.field private static final DEFAULT_IMAGES_FOR_SHORTCUT:[I

.field private static final DEFAULT_IMAGES_HIGH_RESOLUTION:[I

.field private static s180DipInPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 79
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_CALLLOG_DETAIL:[I

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_FOR_SHORTCUT:[I

    .line 219
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 221
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 223
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$AvatarCallLogDefaultImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$AvatarCallLogDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_CALLLOG_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    return-void

    .line 84
    nop

    :array_0
    .array-data 0x4
        0x68t 0x3t 0x2t 0x7ft
        0x64t 0x3t 0x2t 0x7ft
        0x65t 0x3t 0x2t 0x7ft
        0x66t 0x3t 0x2t 0x7ft
        0x67t 0x3t 0x2t 0x7ft
    .end array-data

    .line 92
    :array_1
    .array-data 0x4
        0x75t 0x3t 0x2t 0x7ft
        0x71t 0x3t 0x2t 0x7ft
        0x72t 0x3t 0x2t 0x7ft
        0x73t 0x3t 0x2t 0x7ft
        0x74t 0x3t 0x2t 0x7ft
    .end array-data

    .line 101
    :array_2
    .array-data 0x4
        0x6at 0x3t 0x2t 0x7ft
        0x6bt 0x3t 0x2t 0x7ft
        0x6ct 0x3t 0x2t 0x7ft
        0x6dt 0x3t 0x2t 0x7ft
        0x6et 0x3t 0x2t 0x7ft
    .end array-data

    .line 110
    :array_3
    .array-data 0x4
        0xa1t 0x3t 0x2t 0x7ft
        0x9dt 0x3t 0x2t 0x7ft
        0x9et 0x3t 0x2t 0x7ft
        0x9ft 0x3t 0x2t 0x7ft
        0xa0t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 241
    const-class v1, Lcom/android/contacts/ContactPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultAvatarResId(Landroid/content/Context;IZ)I
    .locals 5
    .parameter "context"
    .parameter "extent"
    .parameter "darkTheme"

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 125
    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-ne v2, v4, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 127
    .local v1, r:Landroid/content/res/Resources;
    const/high16 v2, 0x4334

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    .line 131
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_0
    if-eq p1, v4, :cond_1

    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-le p1, v2, :cond_1

    .line 132
    .local v0, hires:Z
    :goto_0
    const-wide/16 v2, -0x1

    invoke-static {v0, p2, v2, v3}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v2

    return v2

    .line 131
    .end local v0           #hires:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultAvatarResId(Landroid/content/Context;IZJ)I
    .locals 5
    .parameter "context"
    .parameter "extent"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 139
    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-ne v2, v4, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 141
    .local v1, r:Landroid/content/res/Resources;
    const/high16 v2, 0x4334

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    .line 145
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_0
    if-eq p1, v4, :cond_1

    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-gt p1, v2, :cond_2

    :cond_1
    if-nez p1, :cond_3

    .line 146
    .local v0, hires:Z
    :cond_2
    :goto_0
    invoke-static {v0, p2, p3, p4}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v2

    return v2

    .line 145
    .end local v0           #hires:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultAvatarResId(ZZJ)I
    .locals 3
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 152
    const-wide/16 p2, 0x0

    .line 155
    :cond_0
    if-eqz p0, :cond_1

    .line 156
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    .line 159
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getDefaultCallDetailAvatarResId(ZZJ)I
    .locals 3
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 164
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 165
    const-wide/16 p2, 0x0

    .line 168
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_CALLLOG_DETAIL:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_CALLLOG_DETAIL:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public static getDefaultShortCutResId(ZZJ)I
    .locals 3
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 173
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 174
    const-wide/16 p2, 0x0

    .line 177
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_FOR_SHORTCUT:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_FOR_SHORTCUT:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 5
    .parameter "context"

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 231
    .local v0, applicationContext:Landroid/content/Context;
    const-string v2, "contactPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManager;

    .line 233
    .local v1, service:Lcom/android/contacts/ContactPhotoManager;
    if-nez v1, :cond_0

    .line 234
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    .line 235
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No contact photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public final loadCallLogDetailPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZJ)V
    .locals 8
    .parameter "view"
    .parameter "photoUri"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 300
    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_CALLLOG_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 301
    return-void
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "view"
    .parameter "photoUri"
    .parameter "darkTheme"

    .prologue
    .line 295
    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 296
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V
    .locals 8
    .parameter "view"
    .parameter "photoUri"
    .parameter "requestedExtent"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 287
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 288
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZJ)V
    .locals 8
    .parameter "view"
    .parameter "photoId"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 259
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 260
    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 343
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 353
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract resume()V
.end method

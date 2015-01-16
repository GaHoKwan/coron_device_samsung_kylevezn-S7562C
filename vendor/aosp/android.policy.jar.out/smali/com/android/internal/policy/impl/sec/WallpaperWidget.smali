.class public Lcom/android/internal/policy/impl/sec/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# instance fields
.field private final DBG:Z

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

.field private mIsLiveWallpaper:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mSimID:I

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v3, "WallpaperWidget"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->DBG:Z

    .line 32
    iput-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 35
    const-string v3, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 45
    iput-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContentObserver:Landroid/database/ContentObserver;

    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    .line 56
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    .line 58
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v3, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 63
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 69
    invoke-static {}, Lcom/android/internal/policy/impl/sec/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    const-string v3, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 82
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-static {}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getInstance()Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setEnhancedLockScreenWallpaper()V

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iput-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    goto :goto_1

    .line 87
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usm_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 88
    .local v1, isUsm:Z
    :goto_2
    if-eqz v1, :cond_5

    .line 89
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v3, :cond_0

    .line 98
    const-string v3, "WallpaperWidget"

    const-string v4, "register Observer!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v3, Lcom/android/internal/policy/impl/sec/WallpaperWidget$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/sec/WallpaperWidget$1;-><init>(Lcom/android/internal/policy/impl/sec/WallpaperWidget;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContentObserver:Landroid/database/ContentObserver;

    .line 108
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usm_setting"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    .end local v1           #isUsm:Z
    :cond_4
    move v1, v2

    .line 87
    goto :goto_2

    .line 93
    .restart local v1       #isUsm:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/WallpaperWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/WallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setLockScreenWallpaper()V

    return-void
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .prologue
    const v8, 0x108041f

    .line 176
    new-instance v1, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, fileMultiCSC:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, filePng:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, fileMultiCSCPng:Ljava/io/File;
    const/4 v5, 0x0

    .line 181
    .local v5, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 183
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_0
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 211
    .local v6, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 215
    :goto_1
    return-object v6

    .line 184
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 186
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 190
    .end local v5           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 191
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 192
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 193
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 196
    .end local v5           #is:Ljava/io/InputStream;
    :catch_2
    move-exception v0

    .line 197
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 198
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 202
    .end local v5           #is:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 203
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 204
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 206
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    .line 212
    .restart local v6       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v0

    .line 213
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private setEnhancedLockScreenWallpaper()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const-string v0, "WallpaperWidget"

    const-string v1, "Re-used Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setLockScreenWallpaper()V

    .line 136
    const-string v0, "WallpaperWidget"

    const-string v1, "Created Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLockScreenWallpaper()V
    .locals 6

    .prologue
    .line 143
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 145
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 146
    const-string v4, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 153
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 156
    .local v2, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    :try_start_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .local v3, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 169
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->setLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 172
    :cond_2
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 162
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 165
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 166
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 160
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method


# virtual methods
.method public changeWallpaperBySimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 221
    iput p1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mSimID:I

    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setLockScreenWallpaper()V

    .line 223
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "WallpaperWidget"

    const-string v1, "unregister Observer!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContentObserver:Landroid/database/ContentObserver;

    .line 128
    :cond_0
    return-void
.end method

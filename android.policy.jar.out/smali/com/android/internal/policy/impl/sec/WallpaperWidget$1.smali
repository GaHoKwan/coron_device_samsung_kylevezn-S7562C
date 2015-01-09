.class Lcom/android/internal/policy/impl/sec/WallpaperWidget$1;
.super Landroid/database/ContentObserver;
.source "WallpaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/WallpaperWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/WallpaperWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/WallpaperWidget;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->access$000(Lcom/android/internal/policy/impl/sec/WallpaperWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usm_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 103
    .local v0, usmFlag:Z
    :goto_0
    const-string v1, "WallpaperWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usm_setting changed, is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    #calls: Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setLockScreenWallpaper()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->access$100(Lcom/android/internal/policy/impl/sec/WallpaperWidget;)V

    .line 106
    :cond_0
    return-void

    .end local v0           #usmFlag:Z
    :cond_1
    move v0, v1

    .line 102
    goto :goto_0
.end method

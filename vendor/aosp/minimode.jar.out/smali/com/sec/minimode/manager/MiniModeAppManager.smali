.class public Lcom/sec/minimode/manager/MiniModeAppManager;
.super Ljava/lang/Object;
.source "MiniModeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/minimode/manager/MiniModeAppManager$1;,
        Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MINIMODE_RES_PACKAGE:Ljava/lang/String; = "com.sec.android.app.minimode.res"

.field public static final POLICY_DEFAULT_MODE:I = 0x0

.field public static final POLICY_MINI_PHONE_MODE:I = 0x1

.field public static final POLICY_MINI_TABLET_MODE:I = 0x0

.field public static final POLICY_SPLIT_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiniModeAppManager"

.field private static mIsTabletMode:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyMode:I

.field private mResources:Landroid/content/res/Resources;

.field private mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager;->mIsTabletMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v5, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 48
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    .line 49
    const-string v3, "mini_mode_app_manager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    move-result-object v2

    .line 51
    .local v2, service:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    if-nez v2, :cond_0

    .line 52
    new-instance v2, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;

    .end local v2           #service:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;-><init>(Lcom/sec/minimode/manager/MiniModeAppManager;Lcom/sec/minimode/manager/MiniModeAppManager$1;)V

    .line 54
    .restart local v2       #service:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    :cond_0
    iput-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    .line 56
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_2

    .line 62
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "com.sec.android.app.minimode.res"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_3

    .line 70
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mResources:Landroid/content/res/Resources;

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/sec/minimode/manager/MiniModeAppManager;->mIsTabletMode:Z

    .line 73
    :cond_3
    sget-boolean v3, Lcom/sec/minimode/manager/MiniModeAppManager;->mIsTabletMode:Z

    if-eqz v3, :cond_4

    .line 75
    const-string v3, "MiniModeAppManager"

    const-string v4, "MiniModeAppManager() : Tablet mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput v5, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 83
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MiniModeAppManager"

    const-string v4, "Error on getting minimode res"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v3, "MiniModeAppManager"

    const-string v4, "MiniModeAppManager() : Phone mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "policyMode"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    .line 87
    iput p2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;Landroid/content/Context;)V
    .locals 1
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 91
    iput-object p2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    .line 92
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    .line 93
    iput v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;Landroid/content/Context;I)V
    .locals 1
    .parameter "service"
    .parameter "context"
    .parameter "policyMode"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 97
    iput-object p2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    .line 98
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    .line 99
    iput p3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 100
    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 2

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->closeAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public closeOthers()V
    .locals 4

    .prologue
    .line 139
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v2, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->closeOthers(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v1

    .line 143
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllRunningMiniApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getAllRunningMiniApps()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 300
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 2
    .parameter "name"

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 193
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getLastPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 200
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .locals 2
    .parameter "name"

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 314
    :goto_0
    return-object v1

    .line 310
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 314
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 3
    .parameter "cn"

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public hideAll()V
    .locals 2

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->hideAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isOccupiedPosition(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->isOccupiedPosition(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 232
    :goto_0
    return v1

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public move(Landroid/content/ComponentName;II)V
    .locals 2
    .parameter "name"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->move(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 166
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V

    .line 168
    return-void
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "cb"
    .parameter "name"

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V

    .line 267
    return-void
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "cb"
    .parameter "name"
    .parameter "policyMode"

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removePosition()V
    .locals 4

    .prologue
    .line 216
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->removePosition(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public requestFocus(Landroid/content/ComponentName;Z)V
    .locals 2
    .parameter "name"
    .parameter "hasFocus"

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 2
    .parameter "name"
    .parameter "state"

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setLastSize(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 247
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->setLastSize(ILandroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 181
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->setPosition(ILandroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showAll()V
    .locals 2

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->showAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public start(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    return-void
.end method

.method public startWithPosition(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "name"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "window.pos.x"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v1, "window.pos.y"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 113
    return-void
.end method

.method public stop(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 117
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePosition(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 205
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->updatePosition(ILandroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

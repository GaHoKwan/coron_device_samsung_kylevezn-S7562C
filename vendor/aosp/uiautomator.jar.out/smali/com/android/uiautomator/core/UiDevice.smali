.class public Lcom/android/uiautomator/core/UiDevice;
.super Ljava/lang/Object;
.source "UiDevice.java"


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:J = 0x2710L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static mDevice:Lcom/android/uiautomator/core/UiDevice;


# instance fields
.field private mInWatcherContext:Z

.field private final mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

.field private final mWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/uiautomator/core/UiWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchersTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/uiautomator/core/UiDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    .line 68
    new-instance v0, Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 69
    sput-object p0, Lcom/android/uiautomator/core/UiDevice;->mDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 70
    return-void
.end method

.method public static getInstance()Lcom/android/uiautomator/core/UiDevice;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/uiautomator/core/UiDevice;->mDevice:Lcom/android/uiautomator/core/UiDevice;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/uiautomator/core/UiDevice;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiDevice;-><init>()V

    sput-object v0, Lcom/android/uiautomator/core/UiDevice;->mDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/uiautomator/core/UiDevice;->mDevice:Lcom/android/uiautomator/core/UiDevice;

    return-object v0
.end method

.method private setWatcherTriggered(Ljava/lang/String;)V
    .locals 1
    .parameter "watcherName"

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiDevice;->hasWatcherTriggered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    return-void
.end method


# virtual methods
.method public clearLastTraversedText()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->clearLastTraversedText()V

    .line 150
    return-void
.end method

.method public click(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getDisplayWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getDisplayHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 320
    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->click(II)Z

    move-result v0

    goto :goto_0
.end method

.method public dumpWindowHierarchy(Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/uiautomator/core/QueryController;->getAccessibilityRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 578
    .local v0, root:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 579
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "local/tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;)V

    .line 583
    :cond_0
    return-void
.end method

.method public freezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->freezeRotation()V

    .line 486
    return-void
.end method

.method getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    return-object v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 4

    .prologue
    .line 300
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 302
    .local v2, wm:Landroid/view/IWindowManager;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 304
    .local v1, p:Landroid/graphics/Point;
    :try_start_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->getDisplaySize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    iget v3, v1, Landroid/graphics/Point;->y:I

    :goto_0
    return v3

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDisplaySizeDp()Landroid/graphics/Point;
    .locals 7

    .prologue
    .line 106
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 107
    .local v0, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 108
    .local v4, p:Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 109
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v5, v6

    .line 112
    .local v1, dpx:F
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v5, v6

    .line 113
    .local v2, dpy:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 114
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 115
    return-object v4
.end method

.method public getDisplayWidth()I
    .locals 4

    .prologue
    .line 266
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 268
    .local v2, wm:Landroid/view/IWindowManager;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 270
    .local v1, p:Landroid/graphics/Point;
    :try_start_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->getDisplaySize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    iget v3, v1, Landroid/graphics/Point;->x:I

    :goto_0
    return v3

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getLastTraversedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getLastTraversedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnyWatcherTriggered()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWatcherTriggered(Ljava/lang/String;)Z
    .locals 1
    .parameter "watcherName"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isInWatcherContext()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    return v0
.end method

.method public isNaturalOrientation()Z
    .locals 3

    .prologue
    .line 474
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 475
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public pressBack()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadCenter()Z
    .locals 1

    .prologue
    .line 189
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadDown()Z
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadLeft()Z
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadRight()Z
    .locals 1

    .prologue
    .line 221
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadUp()Z
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDelete()Z
    .locals 1

    .prologue
    .line 229
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressEnter()Z
    .locals 1

    .prologue
    .line 237
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressHome()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressKeyCode(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 246
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    move-result v0

    return v0
.end method

.method public pressKeyCode(II)Z
    .locals 1
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 257
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    move-result v0

    return v0
.end method

.method public pressMenu()Z
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x52

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressRecentApps()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 284
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 287
    .local v0, statusBar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V

    .line 289
    const/4 v1, 0x1

    .line 291
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pressSearch()Z
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public registerWatcher(Ljava/lang/String;Lcom/android/uiautomator/core/UiWatcher;)V
    .locals 2
    .parameter "name"
    .parameter "watcher"

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register new watcher from within another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-void
.end method

.method public removeWatcher(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove a watcher from within another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void
.end method

.method public resetWatcherTriggers()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 442
    return-void
.end method

.method public runWatchers()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 414
    iget-boolean v4, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    if-eqz v4, :cond_1

    .line 433
    :cond_0
    return-void

    .line 418
    :cond_1
    iget-object v4, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 419
    .local v3, watcherName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/uiautomator/core/UiWatcher;

    .line 420
    .local v2, watcher:Lcom/android/uiautomator/core/UiWatcher;
    if-eqz v2, :cond_2

    .line 422
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    .line 423
    invoke-interface {v2}, Lcom/android/uiautomator/core/UiWatcher;->checkForCondition()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 424
    invoke-direct {p0, v3}, Lcom/android/uiautomator/core/UiDevice;->setWatcherTriggered(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_3
    iput-boolean v7, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exceuting watcher: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    iput-boolean v7, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iput-boolean v7, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    throw v4
.end method

.method public setOrientationLeft()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationLeft()V

    .line 510
    return-void
.end method

.method public setOrientationNatural()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationNatural()V

    .line 534
    return-void
.end method

.method public setOrientationRight()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationRight()V

    .line 522
    return-void
.end method

.method public sleep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->sleepDevice()Z

    .line 567
    return-void
.end method

.method public swipe(IIIII)Z
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"
    .parameter "steps"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->scrollSwipe(IIIII)Z

    move-result v0

    return v0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 1
    .parameter "segments"
    .parameter "segmentSteps"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->swipe([Landroid/graphics/Point;I)Z

    move-result v0

    return v0
.end method

.method public unfreezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->unfreezeRotation()V

    .line 498
    return-void
.end method

.method public waitForIdle()V
    .locals 2

    .prologue
    .line 355
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle(J)V

    .line 356
    return-void
.end method

.method public waitForIdle(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(J)V

    .line 360
    return-void
.end method

.method public waitForWindowUpdate(Ljava/lang/String;J)Z
    .locals 6
    .parameter "packageName"
    .parameter "timeout"

    .prologue
    const/4 v3, 0x0

    .line 599
    if-eqz p1, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 627
    :goto_0
    return v3

    .line 604
    :cond_0
    new-instance v2, Lcom/android/uiautomator/core/UiDevice$1;

    invoke-direct {v2, p0}, Lcom/android/uiautomator/core/UiDevice$1;-><init>(Lcom/android/uiautomator/core/UiDevice;)V

    .line 609
    .local v2, emptyRunnable:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/uiautomator/core/UiDevice$2;

    invoke-direct {v0, p0, p1}, Lcom/android/uiautomator/core/UiDevice$2;-><init>(Lcom/android/uiautomator/core/UiDevice;Ljava/lang/String;)V

    .line 619
    .local v0, checkWindowUpdate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/accessibility/AccessibilityEvent;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v4

    invoke-virtual {v4, v2, v0, p2, p3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Lcom/android/internal/util/Predicate;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    const/4 v3, 0x1

    goto :goto_0

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, e:Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 623
    .end local v1           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 624
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    const-string v5, "waitForWindowUpdate: general exception from bridge"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->wakeDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 549
    :cond_0
    return-void
.end method

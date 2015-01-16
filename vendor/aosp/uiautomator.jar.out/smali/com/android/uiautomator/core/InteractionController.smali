.class Lcom/android/uiautomator/core/InteractionController;
.super Ljava/lang/Object;
.source "InteractionController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SCROLL_EVENT_TIMEOUT_MILLIS:J = 0x1f4L

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final REGULAR_CLICK_LENGTH:J = 0x64L


# instance fields
.field private mDownTime:J

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mLongPressTimeout:J

.field private final mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/uiautomator/core/InteractionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 4
    .parameter "bridge"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 78
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 81
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    .line 83
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to connect to WindowManager, is the system running?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/android/uiautomator/core/InteractionController;->getSystemLongPressTime()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mLongPressTimeout:J

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    return v0
.end method

.method private getSystemLongPressTime()J
    .locals 16

    .prologue
    .line 101
    const-wide/16 v11, 0x0

    .line 103
    .local v11, longPressTimeout:J
    const/4 v0, 0x0

    .line 104
    .local v0, provider:Landroid/content/IContentProvider;
    const/4 v8, 0x0

    .line 105
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 106
    .local v7, activityManager:Landroid/app/IActivityManager;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    .line 107
    .local v14, providerName:Ljava/lang/String;
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v15, token:Landroid/os/IBinder;
    :try_start_1
    invoke-interface {v7, v14, v15}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v10

    .line 111
    .local v10, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v10, :cond_2

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .end local v10           #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_0

    .line 123
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_0
    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v7, v14, v15}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    .end local v7           #activityManager:Landroid/app/IActivityManager;
    .end local v14           #providerName:Ljava/lang/String;
    .end local v15           #token:Landroid/os/IBinder;
    :catch_0
    move-exception v9

    .line 130
    .local v9, e:Landroid/os/RemoteException;
    const-string v13, "Error reading long press timeout setting."

    .line 131
    .local v13, message:Ljava/lang/String;
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v13, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 114
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v13           #message:Ljava/lang/String;
    .restart local v7       #activityManager:Landroid/app/IActivityManager;
    .restart local v10       #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v14       #providerName:Ljava/lang/String;
    .restart local v15       #token:Landroid/os/IBinder;
    :cond_2
    :try_start_3
    iget-object v0, v10, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 115
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "long_press_timeout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 118
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    int-to-long v11, v1

    .line 122
    :cond_3
    if-eqz v8, :cond_4

    .line 123
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_4
    if-eqz v0, :cond_5

    .line 126
    invoke-interface {v7, v14, v15}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 134
    :cond_5
    return-wide v11
.end method

.method private static injectEventSync(Landroid/view/InputEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 499
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method private touchDown(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 201
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    iget-wide v2, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    int-to-float v5, p1

    int-to-float v6, p2

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 203
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 204
    invoke-static {v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method private touchMove(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 224
    .local v2, eventTime:J
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    const/4 v4, 0x2

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 226
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 227
    invoke-static {v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method private touchUp(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 212
    .local v2, eventTime:J
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    const/4 v4, 0x1

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 214
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 216
    invoke-static {v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public click(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 138
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clickAndWaitForNewWindow(IIJ)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "timeout"

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$1;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    .line 163
    .local v0, command:Ljava/lang/Runnable;
    new-instance v2, Lcom/android/uiautomator/core/InteractionController$2;

    invoke-direct {v2, p0}, Lcom/android/uiautomator/core/InteractionController$2;-><init>(Lcom/android/uiautomator/core/InteractionController;)V

    .line 170
    .local v2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/accessibility/AccessibilityEvent;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v4, v0, v2, p3, p4}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Lcom/android/internal/util/Predicate;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 174
    .end local v1           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 175
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v5, "exception from executeCommandAndWaitForAccessibilityEvent"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public freezeRotation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 448
    return-void
.end method

.method public isNaturalRotation()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 495
    .local v0, pm:Landroid/os/IPowerManager;
    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method public longTap(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mLongPressTimeout:J

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollSwipe(IIIII)Z
    .locals 9
    .parameter "downX"
    .parameter "downY"
    .parameter "upX"
    .parameter "upY"
    .parameter "steps"

    .prologue
    .line 242
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollSwipe ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    iget-object v8, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    new-instance v0, Lcom/android/uiautomator/core/InteractionController$3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController$3;-><init>(Lcom/android/uiautomator/core/InteractionController;IIIII)V

    new-instance v1, Lcom/android/uiautomator/core/InteractionController$4;

    invoke-direct {v1, p0}, Lcom/android/uiautomator/core/InteractionController$4;-><init>(Lcom/android/uiautomator/core/InteractionController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Lcom/android/internal/util/Predicate;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 258
    :catch_0
    move-exception v7

    .line 259
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in scrollSwipe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendKey(II)Z
    .locals 15
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    .line 378
    iget-object v2, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 380
    .local v0, eventTime:J
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide v2, v0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 383
    .local v13, downEvent:Landroid/view/KeyEvent;
    invoke-static {v13}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide v2, v0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 387
    .local v14, upEvent:Landroid/view/KeyEvent;
    invoke-static {v14}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    const/4 v2, 0x1

    .line 391
    .end local v14           #upEvent:Landroid/view/KeyEvent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;)Z
    .locals 9
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 354
    iget-object v7, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v7}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 355
    iget-object v7, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 356
    .local v3, events:[Landroid/view/KeyEvent;
    if-eqz v3, :cond_1

    .line 357
    move-object v0, v3

    .local v0, arr$:[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 363
    .local v2, event2:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {v2, v7, v8, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 365
    .local v1, event:Landroid/view/KeyEvent;
    invoke-static {v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 370
    .end local v0           #arr$:[Landroid/view/KeyEvent;
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v2           #event2:Landroid/view/KeyEvent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_1
    return v6

    .line 357
    .restart local v0       #arr$:[Landroid/view/KeyEvent;
    .restart local v1       #event:Landroid/view/KeyEvent;
    .restart local v2       #event2:Landroid/view/KeyEvent;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 370
    .end local v0           #arr$:[Landroid/view/KeyEvent;
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v2           #event2:Landroid/view/KeyEvent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public setRotationLeft()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 427
    return-void
.end method

.method public setRotationNatural()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 439
    return-void
.end method

.method public setRotationRight()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 415
    return-void
.end method

.method public sleepDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 482
    const/4 v0, 0x1

    .line 484
    :cond_0
    return v0
.end method

.method public swipe(IIIII)Z
    .locals 11
    .parameter "downX"
    .parameter "downY"
    .parameter "upX"
    .parameter "upY"
    .parameter "steps"

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, ret:Z
    move/from16 v2, p5

    .line 277
    .local v2, swipeSteps:I
    const-wide/16 v3, 0x0

    .line 278
    .local v3, xStep:D
    const-wide/16 v5, 0x0

    .line 281
    .local v5, yStep:D
    if-nez v2, :cond_0

    .line 282
    const/4 v2, 0x1

    .line 284
    :cond_0
    sub-int v7, p3, p1

    int-to-double v7, v7

    int-to-double v9, v2

    div-double v3, v7, v9

    .line 285
    sub-int v7, p4, p2

    int-to-double v7, v7

    int-to-double v9, v2

    div-double v5, v7, v9

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v1

    .line 289
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 290
    int-to-double v7, v0

    mul-double/2addr v7, v3

    double-to-int v7, v7

    add-int/2addr v7, p1

    int-to-double v8, v0

    mul-double/2addr v8, v5

    double-to-int v8, v8

    add-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v7

    and-int/2addr v1, v7

    .line 291
    if-nez v1, :cond_2

    .line 299
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v7

    and-int/2addr v1, v7

    .line 300
    return v1

    .line 297
    :cond_2
    const-wide/16 v7, 0x5

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 12
    .parameter "segments"
    .parameter "segmentSteps"

    .prologue
    const/4 v8, 0x0

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, ret:Z
    move v3, p2

    .line 312
    .local v3, swipeSteps:I
    const-wide/16 v4, 0x0

    .line 313
    .local v4, xStep:D
    const-wide/16 v6, 0x0

    .line 316
    .local v6, yStep:D
    if-nez p2, :cond_0

    .line 317
    const/4 p2, 0x1

    .line 320
    :cond_0
    array-length v9, p1

    if-nez v9, :cond_1

    .line 345
    :goto_0
    return v8

    .line 324
    :cond_1
    aget-object v9, p1, v8

    iget v9, v9, Landroid/graphics/Point;->x:I

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v9, v8}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v1

    .line 325
    const/4 v2, 0x0

    .local v2, seg:I
    :goto_1
    array-length v8, p1

    if-ge v2, v8, :cond_4

    .line 326
    add-int/lit8 v8, v2, 0x1

    array-length v9, p1

    if-ge v8, v9, :cond_2

    .line 328
    add-int/lit8 v8, v2, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    aget-object v9, p1, v2

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    int-to-double v10, p2

    div-double v4, v8, v10

    .line 329
    add-int/lit8 v8, v2, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    aget-object v9, p1, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 331
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 332
    aget-object v8, p1, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-double v9, v0

    mul-double/2addr v9, v4

    double-to-int v9, v9

    add-int/2addr v8, v9

    aget-object v9, p1, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-double v10, v0

    mul-double/2addr v10, v6

    double-to-int v10, v10

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v8

    and-int/2addr v1, v8

    .line 334
    if-nez v1, :cond_3

    .line 325
    .end local v0           #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 340
    .restart local v0       #i:I
    :cond_3
    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 344
    .end local v0           #i:I
    :cond_4
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v8, v9}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v8

    and-int/2addr v1, v8

    move v8, v1

    .line 345
    goto :goto_0
.end method

.method public unfreezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    .line 457
    return-void
.end method

.method public wakeDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 468
    const/4 v0, 0x1

    .line 470
    :cond_0
    return v0
.end method

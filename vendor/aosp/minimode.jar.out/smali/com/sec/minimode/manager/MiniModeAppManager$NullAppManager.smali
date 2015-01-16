.class Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;
.super Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;
.source "MiniModeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NullAppManager"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    const-class v0, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManager;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->this$0:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManager;Lcom/sec/minimode/manager/MiniModeAppManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;-><init>(Lcom/sec/minimode/manager/MiniModeAppManager;)V

    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 340
    return-void
.end method

.method public closeOthers(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    return-void
.end method

.method public getAllRunningMiniApps()Ljava/util/List;
    .locals 1
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
    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 2
    .parameter "policyMode"
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .locals 1
    .parameter "name"

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 2
    .parameter "policyMode"
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 376
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public hideAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    return-void
.end method

.method public isOccupiedPosition(III)Z
    .locals 1
    .parameter "policyMode"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public move(Landroid/content/ComponentName;II)V
    .locals 0
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    return-void
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    .locals 0
    .parameter "cb"
    .parameter "name"
    .parameter "policyMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    return-void
.end method

.method public removePosition(ILandroid/content/ComponentName;)V
    .locals 0
    .parameter "policyMode"
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    return-void
.end method

.method public requestFocus(Landroid/content/ComponentName;Z)V
    .locals 0
    .parameter "name"
    .parameter "hasFocus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    return-void
.end method

.method public setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    return-void
.end method

.method public setLastSize(ILandroid/content/ComponentName;II)V
    .locals 0
    .parameter "policyMode"
    .parameter "cn"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    return-void
.end method

.method public setPosition(ILandroid/content/ComponentName;II)V
    .locals 0
    .parameter "policyMode"
    .parameter "cn"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    return-void
.end method

.method public showAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    return-void
.end method

.method public start(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    sget-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 322
    :cond_0
    return-void
.end method

.method public startWithPosition(Landroid/content/ComponentName;II)V
    .locals 1
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    sget-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 327
    :cond_0
    return-void
.end method

.method public stop(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 331
    sget-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 332
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 0
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    return-void
.end method

.method public updatePosition(ILandroid/content/ComponentName;II)V
    .locals 0
    .parameter "policyMode"
    .parameter "cn"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    return-void
.end method

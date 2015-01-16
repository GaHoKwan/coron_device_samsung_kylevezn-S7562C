.class public Lcom/sec/android/allshare/ServiceConnector;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/ServiceConnector$2;,
        Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;,
        Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;,
        Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;,
        Lcom/sec/android/allshare/ServiceConnector$ServiceState;
    }
.end annotation


# static fields
.field private static final TAG_CONNECTOR:Ljava/lang/String; = "ServiceConnector"

.field private static mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static createServiceProvider(Landroid/content/Context;Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;)V
    .locals 3
    .parameter "ctx"
    .parameter "l"

    .prologue
    .line 184
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/sec/android/allshare/DLog;->setAPIVersionTag()V

    .line 190
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/sec/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 192
    new-instance v1, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    .local v1, connector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;
    new-instance v0, Lcom/sec/android/allshare/ServiceConnector$1;

    invoke-direct {v0, p1, p0, v1}, Lcom/sec/android/allshare/ServiceConnector$1;-><init>(Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;Landroid/content/Context;Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V

    .line 236
    .local v0, callback:Landroid/os/Handler$Callback;
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->setCallback(Landroid/os/Handler$Callback;)V

    .line 237
    invoke-virtual {v1}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->connect()V

    goto :goto_0
.end method

.method public static deleteServiceProvider(Lcom/sec/android/allshare/ServiceProvider;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 249
    if-nez p0, :cond_0

    .line 267
    .end local p0
    :goto_0
    return-void

    .line 252
    .restart local p0
    :cond_0
    check-cast p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;

    .end local p0
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    .line 255
    .local v0, connector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;
    #getter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$000(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 257
    .local v1, copySet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 258
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    .line 260
    .local v3, value:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    iget-object v4, v3, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    iget-object v5, v3, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    iget-object v6, v3, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/sec/android/allshare/AllShareEventHandler;

    invoke-virtual {v0, v4, v5, v6}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/android/allshare/AllShareEventHandler;)V

    .line 261
    #getter for: Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->access$000(Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    .end local v3           #value:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->disconnect()V

    .line 265
    invoke-virtual {v0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->destroyInstance()V

    goto :goto_0
.end method

.method static getContext()Landroid/content/Context;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 162
    sget-object v2, Lcom/sec/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :cond_1
    sget-object v2, Lcom/sec/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 166
    .local v0, ctx:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 167
    goto :goto_0
.end method

.method static getMainLooper()Landroid/os/Looper;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 270
    sget-object v2, Lcom/sec/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 276
    .local v0, ctx:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v1

    .line 272
    .end local v0           #ctx:Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/sec/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 273
    .restart local v0       #ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method

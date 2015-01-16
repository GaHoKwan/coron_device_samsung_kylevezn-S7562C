.class public Lcom/sec/widget/lso/LockscreenOverlayView;
.super Landroid/widget/FrameLayout;
.source "LockscreenOverlayView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LSO"


# instance fields
.field private final lso:Landroid/app/enterprise/lso/LSOInterface;

.field private final mContext:Landroid/content/Context;

.field private final mNotifier:Landroid/content/BroadcastReceiver;

.field private final mParentDimension:Landroid/graphics/Point;

.field private final mViewDimension:Landroid/graphics/Point;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v1, Lcom/sec/widget/lso/LockscreenOverlayView$1;

    invoke-direct {v1, p0}, Lcom/sec/widget/lso/LockscreenOverlayView$1;-><init>(Lcom/sec/widget/lso/LockscreenOverlayView;)V

    iput-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mContext:Landroid/content/Context;

    .line 90
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    .line 92
    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->calculateDeviceDimension()V

    .line 93
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    invoke-direct {v1, v2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    .line 95
    invoke-static {p1}, Landroid/app/enterprise/lso/LSOInterface;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/lso/LSOInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->lso:Landroid/app/enterprise/lso/LSOInterface;

    .line 96
    iget-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->lso:Landroid/app/enterprise/lso/LSOInterface;

    if-nez v1, :cond_1

    .line 97
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/widget/lso/LockscreenOverlayView;->setVisibility(I)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/widget/lso/LockscreenOverlayView;->setVisibility(I)V

    .line 102
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iput-boolean v4, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->registered:Z

    .line 108
    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->registerLSONotification()V

    .line 110
    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->setLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0, v4}, Lcom/sec/widget/lso/LockscreenOverlayView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/widget/lso/LockscreenOverlayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->setLayout()Z

    move-result v0

    return v0
.end method

.method private allowToBeVisible()Z
    .locals 6

    .prologue
    const-wide v4, 0x3fe999999999999aL

    .line 253
    iget-object v0, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    .line 258
    :cond_0
    const-string v0, "LSO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen Size("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  : View Size("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "LSO"

    const-string v1, "LSOInterface View cannot be displayed as view size is not enough."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateDeviceDimension()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 287
    .local v0, winMgr:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 288
    return-void
.end method

.method private declared-synchronized registerLSONotification()V
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->setLayout()Z

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->registered:Z

    .line 201
    const-string v1, "LSO"

    const-string v2, "Registered for Intent: android.intent.action.sec.LSO_CONFIG_CHANGED , android.intent.action.MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setLayout(Landroid/app/enterprise/lso/LSOItemData;)Landroid/view/View;
    .locals 7
    .parameter "lsoData"

    .prologue
    .line 168
    const/4 v3, 0x0

    .line 171
    .local v3, view:Landroid/view/View;
    :try_start_0
    new-instance v0, Lcom/sec/widget/lso/internal/LSOContainerView;

    iget-object v4, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/enterprise/lso/LSOItemContainer;

    .end local p1
    invoke-direct {v0, v4, p1}, Lcom/sec/widget/lso/internal/LSOContainerView;-><init>(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemContainer;)V

    .line 172
    .local v0, container:Lcom/sec/widget/lso/internal/LSOContainerView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    move-object v3, v0

    .line 183
    .end local v0           #container:Lcom/sec/widget/lso/internal/LSOContainerView;
    .end local v2           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-object v3

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while creating views: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLayout()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 127
    const/4 v5, 0x0

    .line 128
    .local v5, retVal:Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 130
    const/high16 v0, 0x3f80

    .line 131
    .local v0, alphaLevel:F
    iget-object v7, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->lso:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOInterface;->getPreferences()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v1

    .line 132
    .local v1, attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    if-eqz v1, :cond_0

    .line 133
    const-string v7, "android:alpha"

    invoke-virtual {v1, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    const-string v7, "android:alpha"

    invoke-virtual {v1, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 138
    :cond_0
    const/4 v4, 0x1

    .line 139
    .local v4, notFound:Z
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v8, :cond_4

    .line 140
    iget-object v7, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->lso:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v7, v2}, Landroid/app/enterprise/lso/LSOInterface;->getData(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v3

    .line 141
    .local v3, lsoData:Landroid/app/enterprise/lso/LSOItemData;
    if-nez v3, :cond_2

    .line 139
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_2
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0, v3}, Lcom/sec/widget/lso/LockscreenOverlayView;->setLayout(Landroid/app/enterprise/lso/LSOItemData;)Landroid/view/View;

    move-result-object v6

    .line 147
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 148
    if-eq v2, v8, :cond_1

    .line 150
    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 153
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 159
    .end local v3           #lsoData:Landroid/app/enterprise/lso/LSOItemData;
    .end local v6           #view:Landroid/view/View;
    :cond_4
    if-eqz v4, :cond_5

    .line 160
    const-string v7, "LSO"

    const-string v8, "No Lockscreen Overlay data found."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v5, 0x0

    .line 164
    .end local v5           #retVal:Z
    :cond_5
    return v5
.end method

.method private declared-synchronized unregisterLSONotification()V
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->registered:Z

    .line 212
    const-string v0, "LSO"

    const-string v1, "Unregistered Intent: android.intent.action.sec.LSO_CONFIG_CHANGED , android.intent.action.MEDIA_MOUNTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->unregisterLSONotification()V

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x4

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 271
    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->calculateDeviceDimension()V

    .line 272
    const-string v0, "LSO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size Changed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  : From("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  To("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

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

    .line 275
    iget-object v0, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 276
    iget-object v0, p0, Lcom/sec/widget/lso/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/widget/lso/LockscreenOverlayView;->setVisibility(I)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p0, v3}, Lcom/sec/widget/lso/LockscreenOverlayView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 122
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/widget/lso/LockscreenOverlayView;->setVisibility(I)V

    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 245
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->unregisterLSONotification()V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->registerLSONotification()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 224
    .local v0, currentVisibility:I
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    const/4 p1, 0x4

    .line 230
    :cond_0
    :goto_0
    if-ne v0, p1, :cond_2

    .line 235
    :goto_1
    return-void

    .line 226
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/widget/lso/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 p1, 0x0

    goto :goto_0

    .line 234
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

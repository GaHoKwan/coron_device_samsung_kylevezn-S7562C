.class abstract Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
.super Ljava/lang/Object;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Policy"
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final DEBUG_VERBOSE:Z


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mLastPosition:Landroid/graphics/Rect;

.field protected mLastPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected mOccupiedPosionListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method private constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, -0x2710

    .line 69
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "MiniModeAppManager::Policy"

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V

    return-void
.end method

.method private dumpOccupiedPosionList()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method


# virtual methods
.method public addPosion(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "cn"
    .parameter "newPosition"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastPosition()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    monitor-exit v1

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 3
    .parameter "cn"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 145
    .local v0, targetPosition:Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    .line 147
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    monitor-exit v2

    return-object v0

    .line 150
    .end local v0           #targetPosition:Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 3
    .parameter "cn"

    .prologue
    .line 128
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 130
    .local v0, targetPosition:Landroid/graphics/Rect;
    monitor-exit v2

    return-object v0

    .line 131
    .end local v0           #targetPosition:Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOccupiedPosition(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 187
    .local v0, newPosition:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const/4 v1, 0x1

    monitor-exit v2

    .line 195
    :goto_0
    return v1

    .line 192
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePosition(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "cn"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastPosition(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "cn"
    .parameter "pos"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastPosition(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    monitor-enter v1

    .line 158
    :try_start_0
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastSize(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "cn"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 174
    .local v0, targetPosition:Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    .line 177
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 178
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 179
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit v2

    .line 181
    return-void

    .line 180
    .end local v0           #targetPosition:Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updatePosition(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "cn"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 114
    .local v0, targetPosition:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 115
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 116
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 118
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #targetPosition:Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

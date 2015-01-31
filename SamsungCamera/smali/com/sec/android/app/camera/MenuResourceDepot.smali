.class public Lcom/sec/android/app/camera/MenuResourceDepot;
.super Ljava/lang/Object;
.source "MenuResourceDepot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuResourceDepot"


# instance fields
.field protected mActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/AbstractCameraActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

.field private mGLEmptyView:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

.field public mMenus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field public mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

.field private mResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 1
    .parameter "activityContext"

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 108
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEmptyView:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    .line 110
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 114
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 118
    return-void
.end method

.method private clearAllMenus()V
    .locals 5

    .prologue
    .line 429
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearAllMenus"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 432
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 434
    .local v0, id:I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 435
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 436
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearing..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearInvisibleViews()V
    .locals 6

    .prologue
    .line 121
    const-string v4, "MenuResourceDepot"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 125
    .local v3, menusClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/MenuBase;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    .local v0, id:I
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 130
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    instance-of v4, v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 135
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 136
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    goto :goto_0

    .line 139
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public closeVisibleViews()V
    .locals 5

    .prologue
    .line 156
    const-string v3, "MenuResourceDepot"

    const-string v4, "closeVisibleViews"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 160
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    .local v0, id:I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 163
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 164
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 167
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;
    .locals 6
    .parameter "viewId"
    .parameter "glParentView"

    .prologue
    const/4 v0, 0x0

    .line 383
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 402
    :goto_0
    return-object v0

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 389
    .local v1, context:Lcom/sec/android/app/camera/AbstractCameraActivity;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 391
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEmptyView:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    if-nez v0, :cond_1

    .line 392
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    const/4 v5, 0x5

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEmptyView:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEmptyView:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    goto :goto_0

    .line 396
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-nez v0, :cond_2

    .line 397
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    const/4 v5, 0x4

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    goto :goto_0

    .line 389
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_0
        0xbd3 -> :sswitch_1
    .end sparse-switch
.end method

.method public getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 4
    .parameter "id"

    .prologue
    .line 170
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 171
    .local v0, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 379
    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .local v1, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_0
    return-object v1

    .line 174
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 376
    :goto_1
    if-eqz v0, :cond_1

    .line 377
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 379
    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v1       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_0

    .line 176
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_0
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 177
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 179
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 180
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 182
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 183
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 185
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 186
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 188
    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 189
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 191
    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraResolutionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraResolutionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 192
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 194
    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 195
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 197
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 198
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 200
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 201
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 203
    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 204
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 206
    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 207
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 209
    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 210
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 212
    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 213
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 215
    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AntiShakeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 216
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 218
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraAutoContrastResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraAutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 219
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 221
    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraAdjustContrastResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraAdjustContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 222
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 224
    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraAdjustSaturationResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraAdjustSaturationResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 225
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 227
    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BlinkDetectionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BlinkDetectionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 228
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 230
    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 231
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 233
    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 234
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 236
    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VolumeKeyResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VolumeKeyResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 237
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 239
    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VoiceCommandResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VoiceCommandResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 240
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 242
    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SnSMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SnSMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 243
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 245
    :sswitch_17
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 246
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 248
    :sswitch_18
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 249
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 251
    :sswitch_19
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 252
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 254
    :sswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 255
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 257
    :sswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraStorageResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraStorageResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 258
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 260
    :sswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 261
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 263
    :sswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraEditableShortcutResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraEditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 264
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 266
    :sswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 267
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 269
    :sswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 270
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 272
    :sswitch_20
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCamcorderResolutionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCamcorderResolutionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 273
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 275
    :sswitch_21
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 276
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 278
    :sswitch_22
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderWhiteBalanceResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderWhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 279
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 281
    :sswitch_23
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderEffectResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderEffectResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 282
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 284
    :sswitch_24
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderTimerResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderTimerResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 285
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 287
    :sswitch_25
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 288
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 290
    :sswitch_26
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSpeedResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSpeedResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 291
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 293
    :sswitch_27
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 294
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 296
    :sswitch_28
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAutoContrastResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 297
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 299
    :sswitch_29
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAdjustContrastResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAdjustContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 300
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 302
    :sswitch_2a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAdjustSaturationResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAdjustSaturationResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 303
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 305
    :sswitch_2b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderGuideLineResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderGuideLineResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 306
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 308
    :sswitch_2c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderReviewResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderReviewResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 309
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 311
    :sswitch_2d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderVolumeKeyResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderVolumeKeyResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 312
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 314
    :sswitch_2e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderVoiceCommandResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderVoiceCommandResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 315
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 317
    :sswitch_2f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 318
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 320
    :sswitch_30
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 321
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 323
    :sswitch_31
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderEditableShortcutResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderEditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 324
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 326
    :sswitch_32
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSideMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSideMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 327
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 329
    :sswitch_33
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderExposureValueResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 330
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 332
    :sswitch_34
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderStorageResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderStorageResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 333
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 336
    :sswitch_35
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 337
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 339
    :sswitch_36
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAntiShakeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 340
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 342
    :sswitch_37
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectRecorderMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EffectRecorderMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 343
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 348
    :sswitch_38
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BurstModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BurstModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 349
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 351
    :sswitch_39
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ContextualFilenameResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ContextualFilenameResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 352
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 354
    :sswitch_3a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderContextualFilenameResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderContextualFilenameResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 355
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 357
    :sswitch_3b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderGpsResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderGpsResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 358
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 360
    :sswitch_3c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AutoShareShotResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AutoShareShotResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 361
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 363
    :sswitch_3d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraHDRSettingsMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraHDRSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 364
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 366
    :sswitch_3e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/HDRIntensityModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/HDRIntensityModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 367
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 369
    :sswitch_3f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/HDRPictureModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/HDRPictureModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 370
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_c
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_13
        0x12 -> :sswitch_35
        0x13 -> :sswitch_19
        0x14 -> :sswitch_17
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_1b
        0x1b -> :sswitch_1c
        0x23 -> :sswitch_1e
        0x27 -> :sswitch_0
        0x28 -> :sswitch_1d
        0x29 -> :sswitch_1
        0x33 -> :sswitch_18
        0x35 -> :sswitch_16
        0x3f -> :sswitch_38
        0x40 -> :sswitch_39
        0x42 -> :sswitch_3c
        0x43 -> :sswitch_15
        0x46 -> :sswitch_14
        0x47 -> :sswitch_3d
        0x48 -> :sswitch_3e
        0x49 -> :sswitch_3f
        0x4a -> :sswitch_f
        0x4b -> :sswitch_10
        0xbb9 -> :sswitch_1f
        0xbbb -> :sswitch_21
        0xbbc -> :sswitch_20
        0xbbe -> :sswitch_24
        0xbbf -> :sswitch_22
        0xbc0 -> :sswitch_23
        0xbc1 -> :sswitch_33
        0xbc2 -> :sswitch_28
        0xbc3 -> :sswitch_25
        0xbc4 -> :sswitch_35
        0xbc9 -> :sswitch_34
        0xbcb -> :sswitch_27
        0xbcc -> :sswitch_2b
        0xbcd -> :sswitch_2c
        0xbcf -> :sswitch_2f
        0xbd0 -> :sswitch_30
        0xbd1 -> :sswitch_31
        0xbd2 -> :sswitch_32
        0xbd6 -> :sswitch_36
        0xbd7 -> :sswitch_26
        0xbd8 -> :sswitch_37
        0xbdb -> :sswitch_3a
        0xbdc -> :sswitch_3b
        0xbde -> :sswitch_2e
        0xbdf -> :sswitch_2d
        0xbe0 -> :sswitch_29
        0xbe1 -> :sswitch_2a
    .end sparse-switch
.end method

.method public isGLShootingModeMenu(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 142
    sparse-switch p1, :sswitch_data_0

    .line 151
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 149
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x41 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    const-string v2, "MenuResourceDepot"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 445
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEmptyView:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEmptyView:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;->clear()V

    .line 447
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEmptyView:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->clear()V

    .line 452
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 456
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearAllMenus()V

    .line 457
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 458
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 460
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 461
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 462
    .local v1, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    goto :goto_0

    .line 464
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 465
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 467
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    if-eqz v2, :cond_5

    .line 468
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->clear()V

    .line 469
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 471
    :cond_5
    return-void
.end method

.method public resetMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)V
    .locals 6
    .parameter "viewId"
    .parameter "glParentView"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 413
    .local v1, context:Lcom/sec/android/app/camera/AbstractCameraActivity;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->clear()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 419
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    const/4 v5, 0x4

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onHideMenu()V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0xbd3
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/android/server/am/MultiWindowManagerService;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static START_ACTIVITY_WITH_LAST_PINUP:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static mSelf:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field private SPLIT_ZONE_LEFT:Z

.field private SPLIT_ZONE_RIGHT:Z

.field private mBehaviorBasedLaunch:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentLaunchMode:I

.field mFixedRatioAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreIntentWindowMode:Z

.field private mLastDisplay:Landroid/graphics/Point;

.field private mLock:Ljava/lang/Object;

.field mMaxMinimumHeight:I

.field mMaxMinimumWidth:I

.field private mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

.field private mSupportAllApps:Z

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportControlbar:Z

.field mSupportSameZonePolicyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field mWindowGap:I

.field private mWindowInfoMapByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowInfoMapByTaskId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mWindowMinimizedHeight:I

.field mWindowMinimizedWidth:I

.field mbLoadSupportControlbar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    .line 40
    sput-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->START_ACTIVITY_WITH_LAST_PINUP:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    .line 46
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 51
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 53
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    .line 54
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    .line 68
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 69
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 70
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 71
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 72
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 73
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumWidth:I

    .line 74
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumHeight:I

    .line 76
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportSameZonePolicyList:Ljava/util/ArrayList;

    .line 80
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportType:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    .line 1166
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    .line 84
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 85
    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "video,application/vnd.apple.mpegurl"

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportType:Ljava/util/ArrayList;

    .line 89
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method private calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 5
    .parameter "currentRect"
    .parameter "baseWinInfo"

    .prologue
    .line 736
    if-eqz p2, :cond_2

    .line 737
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 738
    .local v0, baseSize:Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 739
    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #baseSize:Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .line 742
    .restart local v0       #baseSize:Landroid/graphics/Rect;
    :cond_0
    if-eqz v0, :cond_2

    .line 743
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 744
    .local v1, fullscreen:Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 746
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 750
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_1

    .line 751
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ge v2, v3, :cond_3

    .line 752
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 757
    :cond_1
    :goto_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    .line 758
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 762
    .end local v0           #baseSize:Landroid/graphics/Rect;
    .end local v1           #fullscreen:Landroid/graphics/Point;
    :cond_2
    return-void

    .line 754
    .restart local v0       #baseSize:Landroid/graphics/Rect;
    .restart local v1       #fullscreen:Landroid/graphics/Point;
    :cond_3
    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method private calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;
    .locals 10
    .parameter "current"
    .parameter "prev"
    .parameter "useDefault"

    .prologue
    .line 765
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 766
    .local v4, width:I
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 768
    .local v0, height:I
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 769
    .local v5, winInfo:Landroid/os/Bundle;
    if-nez v5, :cond_0

    .line 770
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 771
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 772
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    :cond_0
    if-eqz v5, :cond_3

    .line 775
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 779
    .local v1, lastSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p3, :cond_2

    .line 780
    :cond_1
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 782
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    :cond_2
    if-eqz v1, :cond_3

    .line 783
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 784
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 789
    .end local v1           #lastSize:Landroid/graphics/Rect;
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v9, v0

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 792
    .local v2, rect:Landroid/graphics/Rect;
    if-eqz p2, :cond_4

    .line 793
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    .line 794
    .local v3, topWinInfo:Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 797
    .end local v3           #topWinInfo:Landroid/os/Bundle;
    :cond_4
    return-object v2

    .line 772
    .end local v2           #rect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V
    .locals 15
    .parameter "winInfo"
    .parameter "fullscreen"

    .prologue
    .line 699
    const-string v11, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 700
    .local v3, lastSize:Landroid/graphics/Rect;
    if-nez v3, :cond_0

    .line 701
    const-string v11, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #lastSize:Landroid/graphics/Rect;
    check-cast v3, Landroid/graphics/Rect;

    .line 704
    .restart local v3       #lastSize:Landroid/graphics/Rect;
    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 706
    .local v4, nextPoint:Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-double v11, v11

    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    div-double v5, v11, v13

    .line 707
    .local v5, relativeRateX:D
    iget v11, v3, Landroid/graphics/Rect;->top:I

    int-to-double v11, v11

    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 709
    .local v7, relativeRateY:D
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-double v11, v11

    mul-double/2addr v11, v5

    double-to-int v1, v11

    .line 710
    .local v1, calculatedReferencePointX:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Point;->y:I

    int-to-double v11, v11

    mul-double/2addr v11, v7

    double-to-int v2, v11

    .line 712
    .local v2, calculatedReferencePointY:I
    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 713
    iput v2, v4, Landroid/graphics/Point;->y:I

    .line 716
    iget v11, v4, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int v9, v11, v12

    .line 717
    .local v9, xDiff:I
    iget v11, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v9

    iput v11, v3, Landroid/graphics/Rect;->left:I

    .line 718
    iget v11, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v9

    iput v11, v3, Landroid/graphics/Rect;->right:I

    .line 721
    iget v11, v4, Landroid/graphics/Point;->y:I

    iget v12, v3, Landroid/graphics/Rect;->top:I

    sub-int v10, v11, v12

    .line 722
    .local v10, yDiff:I
    iget v11, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v10

    iput v11, v3, Landroid/graphics/Rect;->top:I

    .line 723
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v10

    iput v11, v3, Landroid/graphics/Rect;->bottom:I

    .line 725
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Point;->x:I

    if-le v11, v12, :cond_1

    .line 726
    iget v11, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    iput v11, v3, Landroid/graphics/Rect;->right:I

    .line 729
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Point;->y:I

    if-le v11, v12, :cond_2

    .line 730
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    iput v11, v3, Landroid/graphics/Rect;->bottom:I

    .line 732
    :cond_2
    return-void
.end method

.method private calculateToolkitWindowSize(I)Landroid/graphics/Rect;
    .locals 5
    .parameter "windowMode"

    .prologue
    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, left:I
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v1

    .line 804
    .local v1, top:I
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_2

    .line 805
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_1

    .line 806
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 821
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 808
    :cond_1
    const/4 v0, 0x0

    .line 809
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    .line 811
    :cond_2
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_0

    .line 812
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_3

    .line 813
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 814
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    .line 816
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    sub-int v0, v2, v3

    .line 817
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private generateMinimizedOffset(I)Landroid/graphics/Point;
    .locals 9
    .parameter "index"

    .prologue
    .line 1236
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1237
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1239
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 1240
    .local v1, shortSize:I
    :goto_0
    mul-int/lit16 v6, v1, 0xa0

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v6, v7

    .line 1245
    .local v2, shortSizeDp:I
    const/16 v6, 0x258

    if-ge v2, v6, :cond_1

    .line 1246
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1247
    .local v3, statusbarHeight:I
    const/4 v4, 0x2

    .line 1248
    .local v4, x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, p1, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int/2addr v6, v7

    sub-int v5, v6, v3

    .line 1259
    .end local v3           #statusbarHeight:I
    .local v5, y:I
    :goto_1
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v6

    .line 1239
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 1251
    .restart local v1       #shortSize:I
    .restart local v2       #shortSizeDp:I
    :cond_1
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-lt v6, v7, :cond_2

    .line 1252
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x3

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 1253
    .restart local v4       #x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, p1, 0x3

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int v5, v6, v7

    .restart local v5       #y:I
    goto :goto_1

    .line 1255
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_2
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x2

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 1256
    .restart local v4       #x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int v5, v6, v7

    .restart local v5       #y:I
    goto :goto_1
.end method

.method private getEmptySplitZone(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v7, 0x20

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, emptyZone:I
    const/4 v3, 0x0

    .line 193
    .local v3, usedZone:I
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 195
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    goto :goto_0

    .line 200
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v3, :cond_3

    .line 201
    xor-int/lit8 v4, v3, -0x1

    and-int/lit8 v0, v4, 0xf

    .line 202
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 203
    and-int/lit8 v4, v0, 0x3

    if-eqz v4, :cond_4

    .line 205
    and-int/lit8 v0, v0, -0xd

    .line 206
    and-int/lit8 v4, v0, 0x3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 208
    :try_start_0
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x10

    if-ne v4, v6, :cond_2

    .line 210
    :cond_1
    and-int/lit8 v0, v0, -0x3

    .line 219
    :cond_2
    :goto_1
    monitor-exit v5

    .line 221
    :cond_3
    return v0

    .line 212
    :cond_4
    and-int/lit8 v4, v0, 0xc

    const/16 v6, 0xc

    if-ne v4, v6, :cond_2

    .line 215
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_5

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_2

    .line 217
    :cond_5
    and-int/lit8 v0, v0, -0x9

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method


# virtual methods
.method public addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 18
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 348
    .local v11, taskId:I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 349
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 350
    .local v5, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v15, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 352
    .local v7, realActivity:Landroid/content/ComponentName;
    const/4 v13, 0x0

    .line 354
    .local v13, topWinInfo:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 355
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 356
    .local v12, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_0

    .line 357
    iget-object v15, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v13

    .line 361
    .end local v12           #top:Lcom/android/server/am/ActivityRecord;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 362
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 364
    .local v14, winInfodefault:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v15}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v15

    const/high16 v17, 0x200

    move/from16 v0, v17

    if-ne v15, v0, :cond_1

    .line 365
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v15, v15, 0xf

    if-eqz v15, :cond_5

    const/4 v9, 0x1

    .line 366
    .local v9, replace:Z
    :goto_0
    if-nez v9, :cond_1

    .line 367
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v15, v15, -0x10

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 368
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v17

    or-int v15, v15, v17

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 372
    .end local v9           #replace:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 373
    .local v10, taskBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 374
    .local v4, cmpBundle:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 376
    .local v3, bIsPinup:Z
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v15, v15, 0xf

    if-eqz v15, :cond_6

    .line 377
    const-string v15, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    if-eqz v4, :cond_2

    .line 379
    const-string v15, "android.intent.extra.WINDOW_LAST_PINUP"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 381
    :cond_2
    const-string v15, "android.intent.extra.WINDOW_LAST_PINUP"

    invoke-virtual {v14, v15, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v15, v15, 0x2000

    if-eqz v15, :cond_4

    .line 397
    const-string v15, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 400
    :cond_4
    if-eqz v10, :cond_8

    .line 401
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 407
    :goto_2
    if-eqz v4, :cond_9

    .line 408
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 413
    :goto_3
    monitor-exit v16

    .line 414
    return-void

    .line 365
    .end local v3           #bIsPinup:Z
    .end local v4           #cmpBundle:Landroid/os/Bundle;
    .end local v10           #taskBundle:Landroid/os/Bundle;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 382
    .restart local v3       #bIsPinup:Z
    .restart local v4       #cmpBundle:Landroid/os/Bundle;
    .restart local v10       #taskBundle:Landroid/os/Bundle;
    :cond_6
    invoke-virtual {v6}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v15

    if-nez v15, :cond_3

    .line 385
    const/4 v8, 0x0

    .line 386
    .local v8, rect:Landroid/graphics/Rect;
    if-eqz v4, :cond_7

    .line 387
    const-string v15, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8           #rect:Landroid/graphics/Rect;
    check-cast v8, Landroid/graphics/Rect;

    .line 388
    .restart local v8       #rect:Landroid/graphics/Rect;
    const-string v15, "android.intent.extra.WINDOW_LAST_PINUP"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 392
    :goto_4
    const-string v15, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v14, v15, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    const-string v15, "android.intent.extra.WINDOW_LAST_PINUP"

    invoke-virtual {v14, v15, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 413
    .end local v3           #bIsPinup:Z
    .end local v4           #cmpBundle:Landroid/os/Bundle;
    .end local v8           #rect:Landroid/graphics/Rect;
    .end local v10           #taskBundle:Landroid/os/Bundle;
    .end local v14           #winInfodefault:Landroid/os/Bundle;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 390
    .restart local v3       #bIsPinup:Z
    .restart local v4       #cmpBundle:Landroid/os/Bundle;
    .restart local v8       #rect:Landroid/graphics/Rect;
    .restart local v10       #taskBundle:Landroid/os/Bundle;
    .restart local v14       #winInfodefault:Landroid/os/Bundle;
    :cond_7
    :try_start_1
    const-string v15, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8           #rect:Landroid/graphics/Rect;
    check-cast v8, Landroid/graphics/Rect;

    .restart local v8       #rect:Landroid/graphics/Rect;
    goto :goto_4

    .line 403
    .end local v8           #rect:Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 410
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v15, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .locals 11
    .parameter "windowMode"
    .parameter "winInfo"

    .prologue
    .line 1197
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1198
    :try_start_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    .line 1199
    .local v1, mode:I
    const/high16 v5, 0x100

    if-ne v1, v5, :cond_0

    .line 1200
    monitor-exit v6

    .line 1233
    :goto_0
    return-void

    .line 1202
    :cond_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 1204
    .local v3, options:I
    and-int/lit8 v5, p1, 0xf

    if-eqz v5, :cond_2

    .line 1205
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1211
    :cond_1
    :goto_1
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v7, -0x1

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1212
    .local v4, slot:I
    const/high16 v5, 0x20

    and-int/2addr v5, v3

    if-eqz v5, :cond_4

    .line 1213
    if-gez v4, :cond_3

    .line 1214
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v4

    .line 1215
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1216
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 1221
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v2

    .line 1222
    .local v2, offset:Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/2addr v9, v10

    invoke-direct {v0, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1224
    .local v0, minimizedSize:Landroid/graphics/Rect;
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1232
    .end local v0           #minimizedSize:Landroid/graphics/Rect;
    .end local v2           #offset:Landroid/graphics/Point;
    :goto_3
    monitor-exit v6

    goto :goto_0

    .end local v1           #mode:I
    .end local v3           #options:I
    .end local v4           #slot:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1206
    .restart local v1       #mode:I
    .restart local v3       #options:I
    :cond_2
    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_1

    .line 1207
    :try_start_1
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 1218
    .restart local v4       #slot:I
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    goto :goto_2

    .line 1226
    :cond_4
    if-gez v4, :cond_5

    .line 1227
    monitor-exit v6

    goto :goto_0

    .line 1229
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 1230
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public arrangeWindowInfos(IILjava/util/ArrayList;)V
    .locals 29
    .parameter "changes"
    .parameter "mode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 906
    .local p3, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 907
    :try_start_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 908
    .local v8, fullscreen:Landroid/graphics/Point;
    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 910
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 911
    .local v4, N:I
    const/4 v7, 0x0

    .line 912
    .local v7, divideCount:I
    const/4 v10, 0x0

    .line 914
    .local v10, j:I
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_1

    .line 915
    const/4 v11, 0x0

    .local v11, k:I
    :goto_0
    if-ge v11, v4, :cond_0

    .line 916
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 917
    .local v18, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 918
    .local v22, winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 919
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 915
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 921
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->clearSlots()V

    .line 923
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v4, :cond_3

    .line 924
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 925
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 926
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v14

    .line 927
    .local v14, offset:Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 929
    .local v13, minimizedSize:Landroid/graphics/Rect;
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 931
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 923
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 934
    .end local v9           #i:I
    .end local v11           #k:I
    .end local v13           #minimizedSize:Landroid/graphics/Rect;
    .end local v14           #offset:Landroid/graphics/Point;
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_1
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 937
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    if-ge v9, v4, :cond_3

    .line 938
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 939
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 940
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/16 v25, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 941
    .local v20, slot:I
    if-ltz v20, :cond_2

    .line 942
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v14

    .line 943
    .restart local v14       #offset:Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 945
    .restart local v13       #minimizedSize:Landroid/graphics/Rect;
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 937
    .end local v13           #minimizedSize:Landroid/graphics/Rect;
    .end local v14           #offset:Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 950
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v20           #slot:I
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_3
    const/16 v16, 0x0

    .line 951
    .local v16, prev:Lcom/android/server/am/ActivityRecord;
    move/from16 v0, p2

    and-int/lit16 v0, v0, -0x401

    move/from16 p2, v0

    .line 955
    const/16 v21, 0x3c

    .line 957
    .local v21, splitModeMask:I
    and-int v23, p2, v21

    if-eqz v23, :cond_7

    .line 958
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v5, arrangedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_3
    if-ltz v9, :cond_6

    .line 960
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 961
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 963
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v15

    .line 964
    .local v15, option:I
    const/high16 v23, 0x80

    and-int v23, v23, v15

    if-eqz v23, :cond_5

    .line 967
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 968
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 970
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 973
    .end local v15           #option:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 974
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 977
    .end local v5           #arrangedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v9           #i:I
    :cond_7
    sparse-switch p2, :sswitch_data_0

    .line 1150
    :cond_8
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 1151
    new-instance v23, Landroid/graphics/Point;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 1153
    :cond_9
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    if-ge v9, v4, :cond_24

    .line 1154
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1155
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x2000

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1156
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1157
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1158
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1153
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 979
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    :sswitch_0
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_5
    if-ltz v9, :cond_8

    .line 980
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 981
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 983
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 984
    .local v12, lastSize:Landroid/graphics/Rect;
    const-string v23, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 986
    .local v6, defaultSize:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v15

    .line 987
    .restart local v15       #option:I
    const/high16 v23, 0x80

    and-int v23, v23, v15

    if-nez v23, :cond_b

    const-string v23, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 989
    :cond_b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 990
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 999
    :cond_c
    :goto_6
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 979
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 991
    :cond_d
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_e

    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 993
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    goto :goto_6

    .line 1163
    .end local v4           #N:I
    .end local v6           #defaultSize:Landroid/graphics/Rect;
    .end local v7           #divideCount:I
    .end local v8           #fullscreen:Landroid/graphics/Point;
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v12           #lastSize:Landroid/graphics/Rect;
    .end local v15           #option:I
    .end local v16           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v21           #splitModeMask:I
    .end local v22           #winInfo:Landroid/os/Bundle;
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 995
    .restart local v4       #N:I
    .restart local v6       #defaultSize:Landroid/graphics/Rect;
    .restart local v7       #divideCount:I
    .restart local v8       #fullscreen:Landroid/graphics/Point;
    .restart local v9       #i:I
    .restart local v10       #j:I
    .restart local v12       #lastSize:Landroid/graphics/Rect;
    .restart local v15       #option:I
    .restart local v16       #prev:Lcom/android/server/am/ActivityRecord;
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v21       #splitModeMask:I
    .restart local v22       #winInfo:Landroid/os/Bundle;
    :cond_e
    :try_start_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 996
    const-string v25, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 997
    move-object/from16 v16, v18

    goto :goto_6

    .line 996
    :cond_f
    const/16 v23, 0x0

    goto :goto_7

    .line 1003
    .end local v6           #defaultSize:Landroid/graphics/Rect;
    .end local v9           #i:I
    .end local v12           #lastSize:Landroid/graphics/Rect;
    .end local v15           #option:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_1
    const/4 v7, 0x2

    .line 1004
    rem-int/lit8 v23, v4, 0x2

    if-nez v23, :cond_11

    const/4 v10, 0x1

    .line 1005
    :goto_8
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_9
    if-ltz v9, :cond_8

    .line 1006
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1007
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1009
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_10

    .line 1010
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1011
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    rem-int v23, v10, v7

    if-nez v23, :cond_12

    const/16 v23, 0x3

    :goto_a
    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1014
    :cond_10
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1016
    add-int/lit8 v23, v10, 0x1

    rem-int v10, v23, v7

    .line 1005
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1004
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_11
    const/4 v10, 0x0

    goto :goto_8

    .line 1011
    .restart local v9       #i:I
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #winInfo:Landroid/os/Bundle;
    :cond_12
    const/16 v23, 0xc

    goto :goto_a

    .line 1020
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_2
    const/4 v7, 0x3

    .line 1021
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_b
    if-ltz v9, :cond_8

    .line 1022
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1023
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1025
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_13

    .line 1026
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1027
    rem-int v10, v9, v7

    .line 1028
    rem-int v23, v10, v7

    if-nez v23, :cond_14

    .line 1029
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1036
    :cond_13
    :goto_c
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1021
    add-int/lit8 v9, v9, -0x1

    goto :goto_b

    .line 1030
    :cond_14
    rem-int v23, v10, v7

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 1031
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_c

    .line 1033
    :cond_15
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_c

    .line 1040
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_3
    const/4 v7, 0x3

    .line 1041
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_d
    if-ltz v9, :cond_8

    .line 1042
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1043
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1045
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_16

    .line 1046
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1047
    rem-int v10, v9, v7

    .line 1048
    rem-int v23, v10, v7

    if-nez v23, :cond_17

    .line 1049
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1056
    :cond_16
    :goto_e
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1041
    add-int/lit8 v9, v9, -0x1

    goto :goto_d

    .line 1050
    :cond_17
    rem-int v23, v10, v7

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 1051
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_e

    .line 1053
    :cond_18
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0xc

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_e

    .line 1060
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_4
    const/4 v7, 0x4

    .line 1061
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_f
    if-ge v9, v4, :cond_8

    .line 1062
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1063
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1065
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_19

    .line 1066
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1067
    rem-int v10, v9, v7

    .line 1068
    rem-int v23, v10, v7

    if-nez v23, :cond_1a

    .line 1069
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1078
    :cond_19
    :goto_10
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1061
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 1070
    :cond_1a
    rem-int v23, v10, v7

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 1071
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_10

    .line 1072
    :cond_1b
    rem-int v23, v10, v7

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 1073
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_10

    .line 1075
    :cond_1c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_10

    .line 1082
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_5
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_11
    if-ltz v9, :cond_8

    .line 1083
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1085
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1082
    add-int/lit8 v9, v9, -0x1

    goto :goto_11

    .line 1090
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    :sswitch_6
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-nez v23, :cond_8

    .line 1091
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_12
    if-ltz v9, :cond_8

    .line 1092
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1093
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1095
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 1096
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 1091
    :cond_1d
    add-int/lit8 v9, v9, -0x1

    goto :goto_12

    .line 1101
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_7
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1102
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    const/16 v19, 0x1

    .line 1103
    .local v19, restored:Z
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1104
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.REQUEST_WINDOW_MODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1105
    .local v17, prevOption:I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/high16 v25, 0x20

    and-int v23, v23, v25

    if-eqz v23, :cond_1f

    .line 1106
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x200001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1107
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x800001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1118
    :goto_13
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1120
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_14
    if-ge v9, v4, :cond_8

    .line 1121
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1122
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1123
    if-eqz v19, :cond_21

    .line 1124
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x800001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1125
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x200001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1126
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0xf

    const/16 v25, 0xf

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 1127
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1128
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const-string v25, "android.intent.extra.REQUEST_WINDOW_MODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1120
    :cond_1e
    :goto_15
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_14

    .line 1109
    .end local v9           #i:I
    :cond_1f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0xf

    const/16 v25, 0xf

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    .line 1110
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1111
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int v23, v23, v17

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_13

    .line 1113
    :cond_20
    const/16 v19, 0x0

    .line 1114
    const-string v23, "android.intent.extra.REQUEST_WINDOW_MODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1115
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0xf

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_13

    .line 1131
    .restart local v9       #i:I
    :cond_21
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/high16 v25, 0x80

    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1132
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/high16 v25, 0x20

    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_15

    .line 1137
    .end local v9           #i:I
    .end local v17           #prevOption:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v19           #restored:Z
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_8
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_16
    if-ge v9, v4, :cond_8

    .line 1138
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1139
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1140
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0xf

    if-eqz v23, :cond_23

    .line 1141
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1137
    :cond_22
    :goto_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 1142
    :cond_23
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_22

    .line 1143
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    goto :goto_17

    .line 1162
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_24
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 1163
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    return-void

    .line 977
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
    .end sparse-switch
.end method

.method public calculateControlbar(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Rect;
    .locals 7
    .parameter "r"

    .prologue
    .line 825
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 826
    .local v3, orientation:I
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 827
    .local v4, winInfo:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 828
    .local v2, lastSize:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 829
    const-string v5, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #lastSize:Landroid/graphics/Rect;
    check-cast v2, Landroid/graphics/Rect;

    .line 832
    .restart local v2       #lastSize:Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    .line 833
    .local v1, centerBarRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    .line 834
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 835
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 836
    .local v0, boundary:I
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #centerBarRect:Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v5, v0, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 843
    .end local v0           #boundary:I
    .restart local v1       #centerBarRect:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object v1

    .line 837
    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 838
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v5, v6

    .line 839
    .restart local v0       #boundary:I
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #centerBarRect:Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v0, v5, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1       #centerBarRect:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public checkBehaviorBasedLaunch()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z
    .locals 6
    .parameter
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 334
    .local v4, zoneInfo:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 335
    .local v0, N:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 336
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 337
    .local v1, ar:Lcom/android/server/am/ActivityRecord;
    iget v5, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    .line 335
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 339
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_0
    iget v5, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    .line 340
    .local v2, currentWindowMode:I
    const/16 v5, 0xf

    if-eq v4, v5, :cond_1

    const/high16 v5, 0x200

    if-ne v2, v5, :cond_2

    .line 341
    :cond_1
    const/4 v5, 0x1

    .line 343
    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public checkIgnoreIntentWindowMode()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    return v0
.end method

.method public checkWindowInfos(Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .parameter
    .parameter "centerbarRect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p1, :cond_0

    .line 848
    const/4 v5, 0x0

    .line 902
    :goto_0
    return-object v5

    .line 851
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->orientation:I

    .line 852
    .local v3, orientation:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 853
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_1

    .line 857
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    .line 858
    .local v6, winInfo:Landroid/os/Bundle;
    const-string v9, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 859
    .local v1, minimumSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 863
    const/4 v8, 0x0

    .line 864
    .local v8, zoneRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 865
    .local v5, reviseRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 866
    .local v2, offset:I
    iget v9, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v9, 0xf

    .line 867
    .local v7, zoneInfo:I
    invoke-static {v3, p2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 868
    const/4 v9, 0x3

    if-ne v7, v9, :cond_4

    .line 869
    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 870
    const/4 v9, 0x1

    if-ne v3, v9, :cond_3

    .line 871
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int v2, v9, v10

    .line 872
    if-lez v2, :cond_2

    .line 873
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 896
    :cond_2
    :goto_1
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 897
    invoke-static {v3, v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 875
    :cond_3
    const/4 v9, 0x2

    if-ne v3, v9, :cond_2

    .line 876
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v2, v9, v10

    .line 877
    if-lez v2, :cond_2

    .line 878
    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 881
    :cond_4
    const/16 v9, 0xc

    if-ne v7, v9, :cond_2

    .line 882
    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 883
    const/4 v9, 0x1

    if-ne v3, v9, :cond_5

    .line 884
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int v2, v9, v10

    .line 885
    if-lez v2, :cond_2

    .line 886
    const/4 v9, 0x0

    neg-int v10, v2

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 888
    :cond_5
    const/4 v9, 0x2

    if-ne v3, v9, :cond_2

    .line 889
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v2, v9, v10

    .line 890
    if-lez v2, :cond_2

    .line 891
    neg-int v9, v2

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 902
    .end local v1           #minimumSize:Landroid/graphics/Rect;
    .end local v2           #offset:I
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v5           #reviseRect:Landroid/graphics/Rect;
    .end local v6           #winInfo:Landroid/os/Bundle;
    .end local v7           #zoneInfo:I
    .end local v8           #zoneRect:Landroid/graphics/Rect;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v0, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentLaunchMode()I
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 33
    .parameter "info"
    .parameter "intent"
    .parameter "topWinInfo"

    .prologue
    .line 610
    const/4 v8, 0x0

    .line 611
    .local v8, defWidth:I
    const/4 v6, 0x0

    .line 612
    .local v6, defHeight:I
    const/16 v19, 0x0

    .line 613
    .local v19, minWidth:I
    const/16 v17, 0x0

    .line 614
    .local v17, minHeight:I
    const/16 v22, 0x0

    .line 615
    .local v22, r:Landroid/content/res/Resources;
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 616
    .local v25, winInfo:Landroid/os/Bundle;
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 617
    .local v12, fullscreen:Landroid/graphics/Point;
    invoke-static {v12}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/content/res/Configuration;->centerBarRect:Landroid/graphics/Rect;

    .line 619
    .local v5, centerBar:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x1050064

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v23, v0

    .line 621
    .local v23, sCenterBarFlingSize:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 623
    .local v16, metaData:Landroid/os/Bundle;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v22

    .line 624
    if-eqz v16, :cond_3

    .line 625
    const-string v27, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 626
    .local v7, defSizeId:I
    if-eqz v7, :cond_0

    .line 627
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v8, v0

    .line 629
    :cond_0
    const-string v27, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 630
    if-eqz v7, :cond_1

    .line 631
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v6, v0

    .line 634
    :cond_1
    const-string v27, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 635
    .local v18, minSizeId:I
    if-eqz v18, :cond_2

    .line 636
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v19, v0

    .line 638
    :cond_2
    const-string v27, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 639
    if-eqz v18, :cond_3

    .line 640
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v17, v0

    .line 650
    .end local v7           #defSizeId:I
    .end local v18           #minSizeId:I
    :cond_3
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x1070046

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 651
    .local v10, defaultMinimunAppList:[Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 652
    move-object v4, v10

    .local v4, arr$:[Ljava/lang/String;
    array-length v15, v4

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2
    if-ge v13, v15, :cond_6

    aget-object v9, v4, v13

    .line 653
    .local v9, defaultMinimunApp:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumWidth:I

    move/from16 v19, v0

    .line 655
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumHeight:I

    move/from16 v17, v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 652
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 621
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #defaultMinimunApp:Ljava/lang/String;
    .end local v10           #defaultMinimunAppList:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v16           #metaData:Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 643
    .restart local v16       #metaData:Landroid/os/Bundle;
    :catch_0
    move-exception v11

    .line 644
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 645
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v11

    .line 646
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 659
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v27

    .line 662
    :cond_6
    if-nez v8, :cond_7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 663
    :cond_7
    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 665
    :cond_8
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumWidth:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumWidth:I

    move/from16 v19, v0

    .line 667
    :cond_9
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    sub-int v19, v23, v27

    .line 668
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumHeight:I

    move/from16 v27, v0

    move/from16 v0, v17

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumHeight:I

    move/from16 v17, v0

    .line 669
    :cond_b
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    sub-int v17, v23, v27

    .line 677
    :cond_c
    :goto_3
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    sub-int v27, v27, v8

    shr-int/lit8 v14, v27, 0x1

    .line 678
    .local v14, left:I
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    sub-int v27, v27, v6

    shr-int/lit8 v24, v27, 0x1

    .line 679
    .local v24, top:I
    new-instance v26, Landroid/graphics/Rect;

    add-int v27, v14, v8

    add-int v28, v24, v6

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v14, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 680
    .local v26, windowRect:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    add-int v27, v14, v19

    add-int v28, v24, v17

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v14, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 683
    .local v20, minimumRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v21

    .line 686
    .local v21, overridePosition:Landroid/graphics/Rect;
    if-eqz v21, :cond_d

    .line 687
    const-string v27, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 690
    :cond_d
    const-string v27, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 691
    const-string v27, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 692
    const-string v27, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v28, Landroid/graphics/Rect;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v32, v0

    invoke-direct/range {v28 .. v32}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 693
    const-string v28, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    move/from16 v27, v0

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    const/16 v27, 0x1

    :goto_4
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 695
    return-object v25

    .line 671
    .end local v14           #left:I
    .end local v20           #minimumRect:Landroid/graphics/Rect;
    .end local v21           #overridePosition:Landroid/graphics/Rect;
    .end local v24           #top:I
    .end local v26           #windowRect:Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumWidth:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumWidth:I

    move/from16 v19, v0

    .line 672
    :cond_f
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    sub-int v19, v23, v27

    .line 673
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumHeight:I

    move/from16 v27, v0

    move/from16 v0, v17

    move/from16 v1, v27

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumHeight:I

    move/from16 v17, v0

    .line 674
    :cond_11
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    sub-int v17, v23, v27

    goto/16 :goto_3

    .line 693
    .restart local v14       #left:I
    .restart local v20       #minimumRect:Landroid/graphics/Rect;
    .restart local v21       #overridePosition:Landroid/graphics/Rect;
    .restart local v24       #top:I
    .restart local v26       #windowRect:Landroid/graphics/Rect;
    :cond_12
    const/16 v27, 0x0

    goto :goto_4
.end method

.method public getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I
    .locals 10
    .parameter
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v6, 0x0

    const/4 v9, 0x3

    .line 225
    iget v7, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_1

    move v3, v6

    .line 321
    :cond_0
    :goto_0
    return v3

    .line 229
    :cond_1
    const/4 v4, 0x0

    .line 230
    .local v4, topActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    .line 231
    .local v3, splitZone:I
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->getEmptySplitZone(Ljava/util/ArrayList;)I

    move-result v3

    .line 234
    if-nez v3, :cond_0

    .line 235
    const/4 v5, 0x0

    .line 236
    .local v5, topWindowMode:I
    if-eqz p1, :cond_4

    .line 239
    if-eqz p2, :cond_3

    .line 240
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 241
    .local v0, f:Lcom/android/server/am/ActivityRecord;
    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v7, v8, :cond_2

    .line 242
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    .end local v0           #f:Lcom/android/server/am/ActivityRecord;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 248
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #topActivity:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 249
    .restart local v4       #topActivity:Lcom/android/server/am/ActivityRecord;
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 252
    :cond_4
    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    .line 254
    .local v2, options:I
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 256
    :try_start_0
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    sparse-switch v6, :sswitch_data_0

    .line 318
    :cond_5
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 258
    :sswitch_0
    and-int/lit8 v6, v2, 0x3

    if-ne v6, v9, :cond_6

    .line 260
    const/16 v3, 0xc

    goto :goto_1

    .line 262
    :cond_6
    const/4 v3, 0x3

    .line 264
    goto :goto_1

    .line 266
    :sswitch_1
    and-int/lit8 v6, v2, 0x3

    if-ne v6, v9, :cond_7

    .line 268
    const/4 v3, 0x4

    goto :goto_1

    .line 269
    :cond_7
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_8

    .line 270
    const/16 v3, 0x8

    goto :goto_1

    .line 271
    :cond_8
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_9

    .line 272
    const/4 v3, 0x3

    goto :goto_1

    .line 274
    :cond_9
    const/4 v3, 0x3

    .line 276
    goto :goto_1

    .line 278
    :sswitch_2
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_a

    .line 279
    const/4 v3, 0x2

    goto :goto_1

    .line 280
    :cond_a
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_b

    .line 281
    const/16 v3, 0xc

    goto :goto_1

    .line 282
    :cond_b
    and-int/lit8 v6, v2, 0xc

    const/16 v8, 0xc

    if-ne v6, v8, :cond_c

    .line 284
    const/4 v3, 0x1

    goto :goto_1

    .line 286
    :cond_c
    const/4 v3, 0x1

    .line 288
    goto :goto_1

    .line 290
    :sswitch_3
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_d

    .line 291
    const/4 v3, 0x2

    goto :goto_1

    .line 292
    :cond_d
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_e

    .line 293
    const/4 v3, 0x4

    goto :goto_1

    .line 294
    :cond_e
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_f

    .line 295
    const/16 v3, 0x8

    goto :goto_1

    .line 296
    :cond_f
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_10

    .line 297
    const/4 v3, 0x1

    goto :goto_1

    .line 299
    :cond_10
    const/4 v3, 0x1

    .line 301
    goto :goto_1

    .line 303
    :sswitch_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p2, :cond_5

    .line 304
    iget v6, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v6, v6, 0xf

    if-nez v6, :cond_5

    .line 305
    if-eqz v4, :cond_12

    const-string v6, "android"

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_11

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_12

    .line 306
    :cond_11
    and-int/lit8 v3, v2, 0xf

    goto :goto_1

    .line 308
    :cond_12
    and-int/lit8 v6, v2, 0x3

    if-ne v6, v9, :cond_13

    .line 309
    const/16 v3, 0xc

    goto/16 :goto_1

    .line 311
    :cond_13
    const/4 v3, 0x3

    goto/16 :goto_1

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public getSupportLaunchFlag(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I
    .locals 11
    .parameter "r"
    .parameter "source"
    .parameter "taskTop"

    .prologue
    const/high16 v10, 0x4c

    const/high16 v9, 0x40

    const v8, -0x4c0001

    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, launchFlags:I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 120
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    iget v6, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v6, v9

    if-nez v6, :cond_0

    move v4, v3

    .line 146
    .end local v3           #launchFlags:I
    .local v4, launchFlags:I
    :goto_0
    return v4

    .line 124
    .end local v4           #launchFlags:I
    .restart local v3       #launchFlags:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, intentType:Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.VIEW"

    if-ne v6, v7, :cond_2

    if-eqz v2, :cond_2

    .line 126
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportType:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 127
    .local v5, supportIntentType:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_2

    .line 129
    const/high16 v6, 0x3000

    or-int/2addr v3, v6

    .line 131
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v6, v6, 0xf

    if-nez v6, :cond_2

    .line 132
    if-eqz p3, :cond_3

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_3

    .line 133
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v6, v10

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 134
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, p3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v5           #supportIntentType:Ljava/lang/String;
    :cond_2
    :goto_1
    move v4, v3

    .line 146
    .end local v3           #launchFlags:I
    .restart local v4       #launchFlags:I
    goto :goto_0

    .line 135
    .end local v4           #launchFlags:I
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #launchFlags:I
    .restart local v5       #supportIntentType:Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_2

    .line 136
    const v6, 0x8000

    or-int/2addr v3, v6

    .line 137
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v6, v10

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 138
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_1
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 6
    .parameter "taskId"
    .parameter "realActivity"

    .prologue
    .line 150
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 154
    .local v2, taskBundle:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 155
    .local v1, lastSize:Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 159
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 160
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 161
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 162
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 167
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    :cond_0
    monitor-exit v4

    .line 170
    .end local v1           #lastSize:Landroid/graphics/Rect;
    .end local v2           #taskBundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 169
    :cond_1
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 171
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 170
    :cond_2
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getWindowInfoByComponent(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .parameter "realActivity"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZonePolicy(Lcom/android/server/am/ActivityRecord;)I
    .locals 2
    .parameter "r"

    .prologue
    .line 325
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_1

    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportSameZonePolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_1
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zonePolicy(I)I

    move-result v0

    goto :goto_0
.end method

.method public isFixedRatioApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    const/4 v0, 0x1

    .line 606
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportControlbar()Z
    .locals 2

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    if-nez v0, :cond_0

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 571
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 578
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    return v0
.end method

.method public isSupportSameZonePolicy(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportSameZonePolicyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    :cond_0
    const/4 v0, 0x1

    .line 594
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadDefaultSupportedAppList()V
    .locals 15

    .prologue
    .line 514
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 517
    :try_start_0
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1070041

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 518
    .local v9, supportAppList:[Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 519
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v8, v1, v6

    .line 520
    .local v8, supportApp:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 523
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #supportApp:Ljava/lang/String;
    .end local v9           #supportAppList:[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 528
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_MultiWindow_AddOnApp"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, cscAddOnApp:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 530
    new-instance v3, Ljava/util/ArrayList;

    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 531
    .local v3, cscAddOnAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 532
    .local v0, addOnApp:Ljava/lang/String;
    const-string v12, "-"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 533
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 535
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 536
    :cond_2
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 537
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 543
    .end local v0           #addOnApp:Ljava/lang/String;
    .end local v3           #cscAddOnAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportSameZonePolicyList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 545
    :try_start_1
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1070042

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 546
    .local v11, supportSameZonePolicyList:[Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 547
    move-object v1, v11

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_4

    aget-object v10, v1, v6

    .line 548
    .local v10, supportSameZonePolicy:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportSameZonePolicyList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 551
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #supportSameZonePolicy:Ljava/lang/String;
    .end local v11           #supportSameZonePolicyList:[Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 555
    :cond_4
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 557
    :try_start_2
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1070045

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, fixedRatioAppList:[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 559
    move-object v1, v5

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_3
    if-ge v6, v7, :cond_5

    aget-object v4, v1, v6

    .line 560
    .local v4, fixedRatioApp:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 559
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 563
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #fixedRatioApp:Ljava/lang/String;
    .end local v5           #fixedRatioAppList:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_2
    move-exception v12

    .line 566
    :cond_5
    return-void
.end method

.method public loadDefaultWindowInfo()V
    .locals 6

    .prologue
    .line 496
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 497
    .local v0, defaultscreen:Landroid/graphics/Point;
    const/4 v1, 0x0

    .line 498
    .local v1, maxScreenSize:I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 499
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 500
    .local v2, sCenterBarSize:I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 501
    .local v3, sStatusBarSize:I
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 503
    sub-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumWidth:I

    .line 504
    sub-int v4, v1, v3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMinimumHeight:I

    .line 506
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 507
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 508
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105005f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 509
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 510
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 511
    return-void
.end method

.method public removeMinimizedSlot(I)V
    .locals 5
    .parameter "taskId"

    .prologue
    .line 481
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 482
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 484
    .local v1, winInfo:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 485
    monitor-exit v3

    .line 493
    :goto_0
    return-void

    .line 487
    :cond_0
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 488
    .local v0, slot:I
    if-ltz v0, :cond_1

    .line 489
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 490
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 492
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #slot:I
    .end local v1           #winInfo:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeWindowInfo(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizedSlot(I)V

    .line 470
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    monitor-exit v1

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindowInfoByComponent(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "realActivity"

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    monitor-exit v1

    .line 478
    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V
    .locals 5
    .parameter "r"
    .parameter
    .parameter "useDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 418
    .local v0, targetWinInfo:Landroid/os/Bundle;
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 419
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, p3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 420
    .local v2, windowRect:Landroid/graphics/Rect;
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, -0x10

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 422
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 424
    .local v1, top:Lcom/android/server/am/ActivityRecord;
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 427
    .end local v1           #top:Lcom/android/server/am/ActivityRecord;
    :cond_0
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 443
    .end local v2           #windowRect:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_5

    .line 430
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_4

    .line 432
    :cond_3
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, -0x10

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 433
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 439
    :cond_4
    :goto_1
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_1

    .line 440
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 436
    :cond_5
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, -0x10

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_1
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 5
    .parameter "taskId"
    .parameter "realActivity"
    .parameter "winInfo"

    .prologue
    .line 446
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 447
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 448
    .local v1, taskBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 452
    :cond_0
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    packed-switch v2, :pswitch_data_0

    .line 464
    :cond_1
    :goto_0
    :pswitch_0
    monitor-exit v3

    .line 465
    return-void

    .line 456
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 457
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 464
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    .end local v1           #taskBundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

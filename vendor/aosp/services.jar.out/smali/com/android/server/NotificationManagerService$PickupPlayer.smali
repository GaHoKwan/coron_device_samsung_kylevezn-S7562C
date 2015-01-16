.class Lcom/android/server/NotificationManagerService$PickupPlayer;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupPlayer"
.end annotation


# instance fields
.field private ivt:[B

.field private mMotionEnabled:Z

.field private mMotionRegistered:Z

.field private mPickUpMissedEventExist:Z

.field private mPickupListener:Landroid/hardware/motion/MRListener;

.field private mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1868
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1869
    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    .line 1870
    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    .line 1871
    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    .line 1872
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->ivt:[B

    .line 1881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1883
    new-instance v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/server/NotificationManagerService$PickupPlayer$1;-><init>(Lcom/android/server/NotificationManagerService$PickupPlayer;)V

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupListener:Landroid/hardware/motion/MRListener;

    return-void

    .line 1872
    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x64t
        0xfft
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0xb1t
        0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1868
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/NotificationManagerService;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NotificationManagerService$PickupPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1868
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->unregister()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/NotificationManagerService$PickupPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1868
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->register()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/NotificationManagerService$PickupPlayer;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->ivt:[B

    return-object v0
.end method

.method private register()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1925
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 1926
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    .line 1927
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1928
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1929
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1930
    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    if-ne v3, v6, :cond_0

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    const-string v5, "com.android.phone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    const/16 v5, 0x7b

    if-ne v3, v5, :cond_1

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    const-string v5, "com.android.mms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    const-string v5, "com.notidemo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1931
    :cond_2
    const-string v3, "STATUSBAR-NotificationService"

    const-string v5, "Pickup - Missed event found"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    .line 1936
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    iget-boolean v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    if-eqz v3, :cond_4

    .line 1939
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v3, :cond_4

    .line 1940
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupListener:Landroid/hardware/motion/MRListener;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 1941
    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    .line 1942
    const-string v3, "STATUSBAR-NotificationService"

    const-string v4, "Pickup - registerListener"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_4
    return-void

    .line 1928
    .restart local v2       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1936
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 1951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    .line 1952
    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "Pickup - unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_0
    return-void
.end method


# virtual methods
.method public setPickupMotionEnabled(Z)V
    .locals 3
    .parameter "enableMotion"

    .prologue
    .line 1910
    const-string v0, "STATUSBAR-NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPickupMotionEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    if-eqz p1, :cond_1

    .line 1912
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    .line 1922
    :cond_0
    :goto_0
    return-void

    .line 1917
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    if-eqz v0, :cond_2

    .line 1918
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->unregister()V

    .line 1919
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    goto :goto_0
.end method

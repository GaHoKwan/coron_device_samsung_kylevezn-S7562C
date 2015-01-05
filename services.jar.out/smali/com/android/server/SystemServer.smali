.class public Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field public static ENABLE_PACKAGE_PREFETCH:Z = false

.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I = 0x0

.field static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2018
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/SystemServer;->ENABLE_PACKAGE_PREFETCH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init1([Ljava/lang/String;)V
.end method

.method public static final init2()V
    .locals 3

    .prologue
    .line 2117
    const-string v1, "SystemServer"

    const-string v2, "Entered the Android system server!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-static {}, Lcom/android/server/SystemServer;->checkMyPersonnalInfo()V
    
    new-instance v0, Lcom/android/server/ServerThread;

    invoke-direct {v0}, Lcom/android/server/ServerThread;-><init>()V

    .line 2121
    .local v0, thr:Ljava/lang/Thread;
    const-string v1, "android.server.ServerThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2125
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter "args"

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    .line 2043
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 2055
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2062
    :cond_0
    sget-boolean v0, Lcom/android/server/SystemServer;->ENABLE_PACKAGE_PREFETCH:Z

    if-eqz v0, :cond_1

    .line 2063
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2065
    .local v6, cryptState:Ljava/lang/String;
    const-string v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2066
    const-string v0, "SystemServer"

    const-string v1, "!@Detected encryption in progress - only parsing core apps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    .end local v6           #cryptState:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2077
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 2079
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    .line 2081
    sget-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1}, Lcom/android/server/SystemServer$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2098
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 2105
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 2108
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2110
    invoke-static {p0}, Lcom/android/server/SystemServer;->init1([Ljava/lang/String;)V

    .line 2112
    return-void

    .line 2067
    .restart local v6       #cryptState:Ljava/lang/String;
    :cond_3
    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2068
    const-string v0, "SystemServer"

    const-string v1, "!@Device encrypted - only parsing core apps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2070
    :cond_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->prefetch()V

    goto :goto_0
.end method

.method public static checkMyPersonnalInfo()V
    .locals 11

    .prologue
    .line 73
    const/16 v9, 0xe

    new-array v7, v9, [C

    fill-array-data v7, :array_0

    .line 75
    .local v7, temp:[C
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    .line 76
    .local v0, baidu:Ljava/lang/String;
    const-string/jumbo v3, "l.u.o.2.8.8.8."

    .line 77
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 79
    .local v2, i:I
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 80
    .local v4, ids:[C
    const/4 v8, 0x0

    .line 81
    .local v8, tempId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 83
    .local v1, buildId:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v6, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-lt v5, v2, :cond_0

    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 89
    const-string/jumbo v9, "romerid"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 100
    return-void

    .line 85
    :cond_0
    aget-char v9, v4, v5

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 97
    :cond_1
    const-string/jumbo v9, "ids"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    nop

    :array_0
    .array-data 0x2
        0x72t 0x0t
        0x6ft 0x0t
        0x2et 0x0t
        0x62t 0x0t
        0x61t 0x0t
        0x69t 0x0t
        0x64t 0x0t
        0x75t 0x0t
        0x2et 0x0t
        0x72t 0x0t
        0x6ft 0x0t
        0x6dt 0x0t
        0x65t 0x0t
        0x72t 0x0t
    .end array-data
.end method

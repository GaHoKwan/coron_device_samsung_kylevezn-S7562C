.class Ljava/lang/Daemons$FinalizerWatchdogDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerWatchdogDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x2710

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$Daemon;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v8

    #getter for: Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;
    invoke-static {v8}, Ljava/lang/Daemons$FinalizerDaemon;->access$400(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    move-result-object v2

    .line 208
    .local v2, object:Ljava/lang/Object;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v8

    #getter for: Ljava/lang/Daemons$FinalizerDaemon;->finalizingStartedNanos:J
    invoke-static {v8}, Ljava/lang/Daemons$FinalizerDaemon;->access$500(Ljava/lang/Daemons$FinalizerDaemon;)J

    move-result-wide v5

    .line 210
    .local v5, startedNanos:J
    if-nez v2, :cond_1

    .line 211
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 215
    monitor-exit p0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8

    .line 238
    .end local v2           #object:Ljava/lang/Object;
    .end local v5           #startedNanos:J
    :catch_0
    move-exception v8

    goto :goto_0

    .line 219
    .restart local v2       #object:Ljava/lang/Object;
    .restart local v5       #startedNanos:J
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    const-wide/32 v10, 0xf4240

    div-long v0, v8, v10

    .line 220
    .local v0, elapsedMillis:J
    sub-long v3, v12, v0

    .line 221
    .local v3, sleepMillis:J
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_2

    .line 222
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    const-wide/32 v10, 0xf4240

    div-long v0, v8, v10

    .line 226
    :cond_2
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v8

    #getter for: Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;
    invoke-static {v8}, Ljava/lang/Daemons$FinalizerDaemon;->access$400(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    move-result-object v8

    if-ne v2, v8, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->isDebuggerActive()Z

    move-result v8

    if-nez v8, :cond_0

    .line 232
    new-instance v7, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v7}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 233
    .local v7, syntheticException:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Daemons$Daemon;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".finalize() timed out after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms; limit is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v9, 0x2710

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 241
    .end local v0           #elapsedMillis:J
    .end local v2           #object:Ljava/lang/Object;
    .end local v3           #sleepMillis:J
    .end local v5           #startedNanos:J
    .end local v7           #syntheticException:Ljava/lang/Exception;
    :cond_3
    return-void
.end method

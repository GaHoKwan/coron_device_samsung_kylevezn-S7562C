.class public Lcom/android/commands/monkey/Monkey;
.super Ljava/lang/Object;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/Monkey$1;,
        Lcom/android/commands/monkey/Monkey$ActivityController;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ANY_RESTARTS:I

.field private static final DEBUG_ALLOW_ANY_STARTS:I

.field private static final TOMBSTONES_PATH:Ljava/io/File;

.field public static currentIntent:Landroid/content/Intent;

.field public static currentPackage:Ljava/lang/String;


# instance fields
.field private mAbort:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mBugreportFrequency:J

.field mCount:I

.field private mCountEvents:Z

.field private mCurArgData:Ljava/lang/String;

.field mDeviceSleepTime:J

.field mDroppedFlipEvents:J

.field mDroppedKeyEvents:J

.field mDroppedPointerEvents:J

.field mDroppedRotationEvents:J

.field mDroppedTrackballEvents:J

.field mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

.field mFactors:[F

.field private mGenerateHprof:Z

.field private mGetPeriodicBugreport:Z

.field private mIgnoreCrashes:Z

.field private mIgnoreNativeCrashes:Z

.field private mIgnoreSecurityExceptions:Z

.field private mIgnoreTimeouts:Z

.field private mInvalidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKillProcessAfterError:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mMainCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorNativeCrashes:Z

.field private mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

.field private mNextArg:I

.field private mPkgBlacklistFile:Ljava/lang/String;

.field private mPkgWhitelistFile:Ljava/lang/String;

.field private mPm:Landroid/content/pm/IPackageManager;

.field mProfileWaitTime:J

.field mRandom:Ljava/util/Random;

.field mRandomizeScript:Z

.field mRandomizeThrottle:Z

.field private mReportProcessName:Ljava/lang/String;

.field private mRequestAnrBugreport:Z

.field private mRequestAnrTraces:Z

.field private mRequestAppCrashBugreport:Z

.field private mRequestBugreport:Z

.field private mRequestDumpsysMemInfo:Z

.field private mRequestPeriodicBugreport:Z

.field private mRequestProcRank:Z

.field private mScriptFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScriptLog:Z

.field mSeed:J

.field private mSendNoEvents:Z

.field private mServerPort:I

.field private mSetupFileName:Ljava/lang/String;

.field mThrottle:J

.field private mTombstones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerbose:I

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 150
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    .line 158
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    .line 185
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 188
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    .line 191
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 194
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 197
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 200
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 202
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    .line 204
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    .line 206
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    .line 208
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    .line 211
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    .line 214
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    .line 216
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    .line 218
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    .line 221
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    .line 224
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    .line 234
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 236
    const/16 v0, 0xb

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    .line 240
    new-instance v0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/commands/monkey/Monkey;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    return p1
.end method

.method private checkEnteringPackage(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkInternalConfiguration()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x1

    return v0
.end method

.method private checkNativeCrashes()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1165
    sget-object v7, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 1169
    .local v5, tombstones:[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-nez v7, :cond_1

    .line 1170
    :cond_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 1185
    :goto_0
    return v4

    .line 1175
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1176
    .local v3, newStones:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v6, v0, v1

    .line 1177
    .local v6, x:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1180
    .end local v6           #x:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 1183
    .local v4, result:Z
    :cond_4
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    goto :goto_0
.end method

.method private commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "reportName"
    .parameter "command"

    .prologue
    .line 402
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 404
    .local v7, rt:Ljava/lang/Runtime;
    const/4 v4, 0x0

    .line 409
    .local v4, logOutput:Ljava/io/Writer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 411
    .local v6, p:Ljava/lang/Process;
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_0

    .line 412
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .end local v4           #logOutput:Ljava/io/Writer;
    .local v5, logOutput:Ljava/io/Writer;
    move-object v4, v5

    .line 417
    .end local v5           #logOutput:Ljava/io/Writer;
    .restart local v4       #logOutput:Ljava/io/Writer;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 418
    .local v3, inStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 419
    .local v2, inReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 421
    .local v1, inBuffer:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, s:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 422
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_2

    .line 423
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 424
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v1           #inBuffer:Ljava/io/BufferedReader;
    .end local v2           #inReader:Ljava/io/InputStreamReader;
    .end local v3           #inStream:Ljava/io/InputStream;
    .end local v6           #p:Ljava/lang/Process;
    .end local v8           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Exception from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 438
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 426
    .restart local v1       #inBuffer:Ljava/io/BufferedReader;
    .restart local v2       #inReader:Ljava/io/InputStreamReader;
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v6       #p:Ljava/lang/Process;
    .restart local v8       #s:Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v9

    .line 431
    .local v9, status:I
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " status was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    if-eqz v4, :cond_1

    .line 434
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getBugreport(Ljava/lang/String;)V
    .locals 4
    .parameter "reportName"

    .prologue
    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 459
    const-string v1, "[ ,:]"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, bugreportName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugreport"

    invoke-direct {p0, v1, v2}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method private getMainApps()Z
    .locals 14

    .prologue
    .line 948
    :try_start_0
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 949
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_8

    .line 950
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .local v6, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 952
    .local v3, category:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 953
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    :cond_0
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v13

    invoke-interface {v10, v6, v11, v12, v13}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v7

    .line 957
    .local v7, mainApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 958
    :cond_1
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Warning: no activities found for category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 949
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 961
    :cond_3
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_4

    .line 962
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Selecting main activities from category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 964
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 965
    .local v1, NA:I
    const/4 v2, 0x0

    .local v2, a:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 966
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 967
    .local v9, r:Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 968
    .local v8, packageName:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 969
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_5

    .line 970
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "//   + Using main activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (from package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    :cond_5
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v8, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 975
    :cond_7
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x3

    if-lt v10, v11, :cond_6

    .line 976
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "//   - NOT USING main activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (from package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 982
    .end local v0           #N:I
    .end local v1           #NA:I
    .end local v2           #a:I
    .end local v3           #category:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #mainApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #r:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v4

    .line 983
    .local v4, e:Landroid/os/RemoteException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "** Failed talking with package manager!"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 984
    const/4 v10, 0x0

    .line 992
    .end local v4           #e:Landroid/os/RemoteException;
    :goto_3
    return v10

    .line 987
    .restart local v0       #N:I
    .restart local v5       #i:I
    :cond_8
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_9

    .line 988
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "** No activities found to run, monkey aborted."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    const/4 v10, 0x0

    goto :goto_3

    .line 992
    :cond_9
    const/4 v10, 0x1

    goto :goto_3
.end method

.method private getSystemInterfaces()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 907
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    .line 908
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    .line 909
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to activity manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 936
    :goto_0
    return v1

    .line 914
    :cond_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    .line 915
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    if-nez v2, :cond_1

    .line 916
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to window manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :cond_1
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    .line 922
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_2

    .line 923
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to package manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 929
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Lcom/android/commands/monkey/Monkey$ActivityController;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$1;)V

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 930
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->register(Landroid/app/IActivityManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    const/4 v1, 0x1

    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Failed talking with activity manager!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z
    .locals 6
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 844
    .local p1, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 846
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 848
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 849
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 850
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 851
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 854
    .end local v3           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 855
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v0, ioe:Ljava/io/IOException;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 856
    const/4 v4, 0x0

    .line 858
    if-eqz v1, :cond_1

    .line 860
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 866
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_1
    :goto_2
    return v4

    .line 858
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 860
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 866
    :cond_3
    :goto_3
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 861
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 862
    .restart local v0       #ioe:Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 861
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 862
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 858
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_4

    .line 860
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 863
    :cond_4
    :goto_5
    throw v4

    .line 861
    :catch_3
    move-exception v0

    .line 862
    .restart local v0       #ioe:Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_5

    .line 858
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 854
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private loadPackageLists()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 875
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 877
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: you can not specify a package blacklist together with a whitelist or individual packages (via -p)."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 889
    :cond_1
    :goto_0
    return v0

    .line 881
    :cond_2
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 885
    :cond_3
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 470
    const-string v1, "com.android.commands.monkey"

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 472
    new-instance v1, Lcom/android/commands/monkey/Monkey;

    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/commands/monkey/Monkey;->run([Ljava/lang/String;)I

    move-result v0

    .line 473
    .local v0, resultCode:I
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 474
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1272
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1273
    const/4 v0, 0x0

    .line 1277
    :goto_0
    return-object v0

    .line 1275
    :cond_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1276
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    goto :goto_0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1207
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 1228
    :goto_0
    return-object v0

    .line 1210
    :cond_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v2, v3

    .line 1211
    .local v0, arg:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1212
    goto :goto_0

    .line 1214
    :cond_1
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1215
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1216
    goto :goto_0

    .line 1218
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    .line 1219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 1220
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1221
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1223
    :cond_3
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    goto :goto_0

    .line 1227
    :cond_4
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    goto :goto_0
.end method

.method private nextOptionData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1245
    :goto_0
    return-object v0

    .line 1240
    :cond_0
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1241
    const/4 v0, 0x0

    goto :goto_0

    .line 1243
    :cond_1
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1244
    .local v0, data:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    goto :goto_0
.end method

.method private nextOptionLong(Ljava/lang/String;)J
    .locals 6
    .parameter "opt"

    .prologue
    .line 1258
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1263
    .local v1, result:J
    return-wide v1

    .line 1259
    .end local v1           #result:J
    :catch_0
    move-exception v0

    .line 1260
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1261
    throw v0
.end method

.method private processOptions()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 703
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v7, v7

    if-ge v7, v6, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 833
    :goto_0
    return v5

    .line 710
    :cond_0
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOption()Ljava/lang/String;

    move-result-object v4

    .local v4, opt:Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 711
    const-string v7, "-s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 712
    const-string v7, "Seed"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 808
    .end local v4           #opt:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 809
    .local v2, ex:Ljava/lang/RuntimeException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 810
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto :goto_0

    .line 713
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #opt:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v7, "-p"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 714
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 715
    :cond_2
    const-string v7, "-c"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 716
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 717
    :cond_3
    const-string v7, "-v"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 718
    iget v7, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    goto :goto_1

    .line 719
    :cond_4
    const-string v7, "--ignore-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 720
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    goto :goto_1

    .line 721
    :cond_5
    const-string v7, "--ignore-timeouts"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 722
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    goto/16 :goto_1

    .line 723
    :cond_6
    const-string v7, "--ignore-security-exceptions"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 724
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    goto/16 :goto_1

    .line 725
    :cond_7
    const-string v7, "--monitor-native-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 726
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    goto/16 :goto_1

    .line 727
    :cond_8
    const-string v7, "--ignore-native-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 728
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    goto/16 :goto_1

    .line 729
    :cond_9
    const-string v7, "--kill-process-after-error"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 730
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    goto/16 :goto_1

    .line 731
    :cond_a
    const-string v7, "--hprof"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 732
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    goto/16 :goto_1

    .line 733
    :cond_b
    const-string v7, "--pct-touch"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 734
    const/4 v3, 0x0

    .line 735
    .local v3, i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "touch events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 736
    .end local v3           #i:I
    :cond_c
    const-string v7, "--pct-motion"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 737
    const/4 v3, 0x1

    .line 738
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "motion events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 739
    .end local v3           #i:I
    :cond_d
    const-string v7, "--pct-trackball"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 740
    const/4 v3, 0x3

    .line 741
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "trackball events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 742
    .end local v3           #i:I
    :cond_e
    const-string v7, "--pct-rotation"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 743
    const/4 v3, 0x4

    .line 744
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "screen rotation events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 745
    .end local v3           #i:I
    :cond_f
    const-string v7, "--pct-syskeys"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 746
    const/4 v3, 0x7

    .line 747
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "system (key) operations percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 748
    .end local v3           #i:I
    :cond_10
    const-string v7, "--pct-nav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 749
    const/4 v3, 0x5

    .line 750
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "nav events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 751
    .end local v3           #i:I
    :cond_11
    const-string v7, "--pct-majornav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 752
    const/4 v3, 0x6

    .line 753
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "major nav events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 754
    .end local v3           #i:I
    :cond_12
    const-string v7, "--pct-appswitch"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 755
    const/16 v3, 0x8

    .line 756
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "app switch events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 757
    .end local v3           #i:I
    :cond_13
    const-string v7, "--pct-flip"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 758
    const/16 v3, 0x9

    .line 759
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "keyboard flip percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 760
    .end local v3           #i:I
    :cond_14
    const-string v7, "--pct-anyevent"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 761
    const/16 v3, 0xa

    .line 762
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "any events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 763
    .end local v3           #i:I
    :cond_15
    const-string v7, "--pct-pinchzoom"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 764
    const/4 v3, 0x2

    .line 765
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "pinch zoom events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 766
    .end local v3           #i:I
    :cond_16
    const-string v7, "--pkg-blacklist-file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 767
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    goto/16 :goto_1

    .line 768
    :cond_17
    const-string v7, "--pkg-whitelist-file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 769
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    goto/16 :goto_1

    .line 770
    :cond_18
    const-string v7, "--throttle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 771
    const-string v7, "delay (in milliseconds) to wait between events"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    goto/16 :goto_1

    .line 772
    :cond_19
    const-string v7, "--randomize-throttle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 773
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    goto/16 :goto_1

    .line 774
    :cond_1a
    const-string v7, "--wait-dbg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 776
    const-string v7, "--dbg-no-events"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 777
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    goto/16 :goto_1

    .line 778
    :cond_1b
    const-string v7, "--port"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 779
    const-string v7, "Server port to listen on for commands"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    goto/16 :goto_1

    .line 780
    :cond_1c
    const-string v7, "--setup"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 781
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    goto/16 :goto_1

    .line 782
    :cond_1d
    const-string v7, "-f"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 783
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 784
    :cond_1e
    const-string v7, "--profile-wait"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 785
    const-string v7, "Profile delay (in milliseconds) to wait between user action"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    goto/16 :goto_1

    .line 787
    :cond_1f
    const-string v7, "--device-sleep-time"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 788
    const-string v7, "Device sleep time(in milliseconds)"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    goto/16 :goto_1

    .line 790
    :cond_20
    const-string v7, "--randomize-script"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 791
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    goto/16 :goto_1

    .line 792
    :cond_21
    const-string v7, "--script-log"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 793
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    goto/16 :goto_1

    .line 794
    :cond_22
    const-string v7, "--bugreport"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 795
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    goto/16 :goto_1

    .line 796
    :cond_23
    const-string v7, "--periodic-bugreport"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 797
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 798
    const-string v7, "Number of iterations"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    goto/16 :goto_1

    .line 799
    :cond_24
    const-string v6, "-h"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 800
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_0

    .line 803
    :cond_25
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Error: Unknown option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 816
    :cond_26
    iget v7, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_28

    .line 817
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, countStr:Ljava/lang/String;
    if-nez v0, :cond_27

    .line 819
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "** Error: Count not specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 820
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_0

    .line 825
    :cond_27
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mCount:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0           #countStr:Ljava/lang/String;
    :cond_28
    move v5, v6

    .line 833
    goto/16 :goto_0

    .line 826
    .restart local v0       #countStr:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 827
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "** Error: Count is not a number"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_0
.end method

.method private reportAnrTraces()V
    .locals 2

    .prologue
    .line 374
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    const-string v0, "anr traces"

    const-string v1, "cat /data/anr/traces.txt"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reportDumpsysMemInfo()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "meminfo"

    const-string v1, "dumpsys meminfo"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method private reportProcRank()V
    .locals 2

    .prologue
    .line 365
    const-string v0, "procrank"

    const-string v1, "procrank"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private run([Ljava/lang/String;)I
    .locals 22
    .parameter "args"

    .prologue
    .line 484
    move-object/from16 v14, p1

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v21, v14, v18

    .line 485
    .local v21, s:Ljava/lang/String;
    const-string v2, "--wait-dbg"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 484
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 491
    .end local v21           #s:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    .line 492
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 493
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 494
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 497
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    .line 498
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 501
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    const/16 v2, 0xb

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v17

    .line 501
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 505
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->processOptions()Z

    move-result v2

    if-nez v2, :cond_3

    .line 506
    const/4 v15, -0x1

    .line 692
    :goto_2
    return v15

    .line 509
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->loadPackageLists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 510
    const/4 v15, -0x1

    goto :goto_2

    .line 514
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v3, "android.intent.category.MONKEY"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_8

    .line 520
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":Monkey: seed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 523
    .local v19, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 524
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":AllowPackage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 527
    .end local v19           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 529
    .restart local v19       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 530
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":DisallowPackage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 533
    .end local v19           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_8

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 535
    .restart local v19       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 536
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":IncludeCategory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 541
    .end local v19           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->checkInternalConfiguration()Z

    move-result v2

    if-nez v2, :cond_9

    .line 542
    const/4 v15, -0x2

    goto/16 :goto_2

    .line 545
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getSystemInterfaces()Z

    move-result v2

    if-nez v2, :cond_a

    .line 546
    const/4 v15, -0x3

    goto/16 :goto_2

    .line 549
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getMainApps()Z

    move-result v2

    if-nez v2, :cond_b

    .line 550
    const/4 v15, -0x4

    goto/16 :goto_2

    .line 553
    :cond_b
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_c

    const-wide/16 v2, -0x1

    :goto_6
    invoke-virtual {v4, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 558
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    invoke-direct/range {v2 .. v11}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 562
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 603
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v2}, Lcom/android/commands/monkey/MonkeyEventSource;->validate()Z

    move-result v2

    if-nez v2, :cond_14

    .line 604
    const/4 v15, -0x5

    goto/16 :goto_2

    .line 554
    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    goto :goto_6

    .line 563
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_f

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 565
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    invoke-direct/range {v2 .. v13}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 568
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 574
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 575
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    goto :goto_7

    .line 570
    :cond_e
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    invoke-direct/range {v2 .. v12}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    goto :goto_8

    .line 576
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 578
    :try_start_0
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto/16 :goto_7

    .line 579
    :catch_0
    move-exception v16

    .line 580
    .local v16, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Error binding to network socket."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 581
    const/4 v15, -0x5

    goto/16 :goto_2

    .line 586
    .end local v16           #e:Ljava/io/IOException;
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_11

    .line 587
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Seeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 589
    :cond_11
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/commands/monkey/MonkeySourceRandom;-><init>(Ljava/util/Random;Ljava/util/ArrayList;JZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 592
    const/16 v17, 0x0

    :goto_9
    const/16 v2, 0xb

    move/from16 v0, v17

    if-ge v0, v2, :cond_13

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v2, v2, v17

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_12

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v3, v3, v17

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->setFactors(IF)V

    .line 592
    :cond_12
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 599
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateActivity()V

    goto/16 :goto_7

    .line 609
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v2, :cond_15

    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 613
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->start()V

    .line 614
    const/4 v15, 0x0

    .line 616
    .local v15, crashedAtCycle:I
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->runMonkeyCycles()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    .line 620
    new-instance v2, Lcom/android/commands/monkey/MonkeyRotationEvent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->stop()V

    .line 625
    monitor-enter p0

    .line 626
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v2, :cond_16

    .line 627
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 628
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 630
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v2, :cond_17

    .line 631
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Print the anr report"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anr_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 633
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 635
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v2, :cond_18

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_crash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 637
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 639
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v2, :cond_19

    .line 640
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 641
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 643
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v2, :cond_1a

    .line 644
    const-string v2, "Bugreport_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 645
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 647
    :cond_1a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 649
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v2, :cond_1b

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 651
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_1b

    .line 652
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "// Generated profiling reports in /data/misc"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 657
    :cond_1b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->unregister(Landroid/app/IActivityManager;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 668
    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_1d

    .line 669
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ":Dropped: keys="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 670
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->print(J)V

    .line 671
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " pointers="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 672
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->print(J)V

    .line 673
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " trackballs="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 674
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->print(J)V

    .line 675
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " flips="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 676
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->print(J)V

    .line 677
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " rotations="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 678
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->println(J)V

    .line 682
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->dump()V

    .line 684
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_1e

    .line 685
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** System appears to have crashed at event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using seed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 620
    :catchall_0
    move-exception v2

    new-instance v3, Lcom/android/commands/monkey/MonkeyRotationEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    throw v2

    .line 647
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 659
    :catch_1
    move-exception v16

    .line 662
    .local v16, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-lt v15, v2, :cond_1c

    .line 663
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v15, v2, -0x1

    goto/16 :goto_a

    .line 689
    .end local v16           #e:Landroid/os/RemoteException;
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_1f

    .line 690
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "// Monkey finished"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 692
    :cond_1f
    const/4 v15, 0x0

    goto/16 :goto_2
.end method

.method private runMonkeyCycles()I
    .locals 15

    .prologue
    .line 1004
    const/4 v3, 0x0

    .line 1005
    .local v3, eventCounter:I
    const/4 v1, 0x0

    .line 1007
    .local v1, cycleCounter:I
    const/4 v6, 0x0

    .line 1008
    .local v6, shouldReportAnrTraces:Z
    const/4 v7, 0x0

    .line 1009
    .local v7, shouldReportDumpsysMemInfo:Z
    const/4 v5, 0x0

    .line 1010
    .local v5, shouldAbort:Z
    const/4 v8, 0x0

    .line 1013
    .local v8, systemCrashed:Z
    :cond_0
    :goto_0
    if-nez v8, :cond_19

    iget v11, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-ge v1, v11, :cond_19

    .line 1014
    monitor-enter p0

    .line 1015
    :try_start_0
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    if-eqz v11, :cond_1

    .line 1016
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportProcRank()V

    .line 1017
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 1019
    :cond_1
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v11, :cond_2

    .line 1020
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 1021
    const/4 v6, 0x1

    .line 1023
    :cond_2
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v11, :cond_3

    .line 1024
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "anr_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1025
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 1027
    :cond_3
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v11, :cond_4

    .line 1028
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "app_crash"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1029
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 1031
    :cond_4
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v11, :cond_5

    .line 1032
    const-string v11, "Bugreport_"

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1033
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 1035
    :cond_5
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v11, :cond_6

    .line 1036
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 1037
    const/4 v7, 0x1

    .line 1039
    :cond_6
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    if-eqz v11, :cond_9

    .line 1042
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->checkNativeCrashes()Z

    move-result v11

    if-eqz v11, :cond_9

    if-lez v3, :cond_9

    .line 1043
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "** New native crash detected."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1044
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v11, :cond_7

    .line 1045
    const-string v11, "native_crash_"

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1047
    :cond_7
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-nez v11, :cond_8

    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    if-eqz v11, :cond_8

    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    if-eqz v11, :cond_d

    :cond_8
    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    .line 1050
    :cond_9
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-eqz v11, :cond_a

    .line 1051
    const/4 v5, 0x1

    .line 1053
    :cond_a
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    if-eqz v6, :cond_b

    .line 1058
    const/4 v6, 0x0

    .line 1059
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 1062
    :cond_b
    if-eqz v7, :cond_c

    .line 1063
    const/4 v7, 0x0

    .line 1064
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 1067
    :cond_c
    if-eqz v5, :cond_e

    .line 1068
    const/4 v5, 0x0

    .line 1069
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "** Monkey aborted due to error."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1070
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Events injected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1138
    :goto_2
    return v3

    .line 1047
    :cond_d
    const/4 v11, 0x0

    goto :goto_1

    .line 1053
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 1077
    :cond_e
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    if-eqz v11, :cond_f

    .line 1078
    add-int/lit8 v3, v3, 0x1

    .line 1079
    add-int/lit8 v1, v1, 0x1

    .line 1080
    goto/16 :goto_0

    .line 1083
    :cond_f
    iget v11, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v11, :cond_10

    rem-int/lit8 v11, v3, 0x64

    if-nez v11, :cond_10

    if-eqz v3, :cond_10

    .line 1084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, calendarTime:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1086
    .local v9, systemUpTime:J
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    //[calendar_time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " system_uptime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1088
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    // Sending event #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1091
    .end local v0           #calendarTime:Ljava/lang/String;
    .end local v9           #systemUpTime:J
    :cond_10
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v11}, Lcom/android/commands/monkey/MonkeyEventSource;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v2

    .line 1092
    .local v2, ev:Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v2, :cond_18

    .line 1093
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v12, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v13, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/commands/monkey/MonkeyEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    move-result v4

    .line 1094
    .local v4, injectCode:I
    if-nez v4, :cond_15

    .line 1095
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyKeyEvent;

    if-eqz v11, :cond_12

    .line 1096
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 1115
    :cond_11
    :goto_3
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    if-nez v11, :cond_0

    .line 1116
    add-int/lit8 v3, v3, 0x1

    .line 1117
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-eqz v11, :cond_0

    .line 1118
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1097
    :cond_12
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyMotionEvent;

    if-eqz v11, :cond_13

    .line 1098
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    goto :goto_3

    .line 1099
    :cond_13
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyFlipEvent;

    if-eqz v11, :cond_14

    .line 1100
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    goto :goto_3

    .line 1101
    :cond_14
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyRotationEvent;

    if-eqz v11, :cond_11

    .line 1102
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    goto :goto_3

    .line 1104
    :cond_15
    const/4 v11, -0x1

    if-ne v4, v11, :cond_16

    .line 1105
    const/4 v8, 0x1

    .line 1106
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "** Error: RemoteException while injecting event."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1107
    :cond_16
    const/4 v11, -0x2

    if-ne v4, v11, :cond_11

    .line 1108
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    if-nez v11, :cond_17

    const/4 v8, 0x1

    .line 1109
    :goto_4
    if-eqz v8, :cond_11

    .line 1110
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "** Error: SecurityException while injecting event."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1108
    :cond_17
    const/4 v8, 0x0

    goto :goto_4

    .line 1122
    .end local v4           #injectCode:I
    :cond_18
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-nez v11, :cond_19

    .line 1123
    add-int/lit8 v1, v1, 0x1

    .line 1124
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    .line 1126
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    if-eqz v11, :cond_0

    .line 1127
    int-to-long v11, v1

    iget-wide v13, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    .line 1128
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    goto/16 :goto_0

    .line 1137
    .end local v2           #ev:Lcom/android/commands/monkey/MonkeyEvent;
    :cond_19
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Events injected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private showUsage()V
    .locals 3

    .prologue
    .line 1284
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1285
    .local v0, usage:Ljava/lang/StringBuffer;
    const-string v1, "usage: monkey [-p ALLOWED_PACKAGE [-p ALLOWED_PACKAGE] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1286
    const-string v1, "              [-c MAIN_CATEGORY [-c MAIN_CATEGORY] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    const-string v1, "              [--ignore-crashes] [--ignore-timeouts]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1288
    const-string v1, "              [--ignore-security-exceptions]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1289
    const-string v1, "              [--monitor-native-crashes] [--ignore-native-crashes]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1290
    const-string v1, "              [--kill-process-after-error] [--hprof]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1291
    const-string v1, "              [--pct-touch PERCENT] [--pct-motion PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1292
    const-string v1, "              [--pct-trackball PERCENT] [--pct-syskeys PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1293
    const-string v1, "              [--pct-nav PERCENT] [--pct-majornav PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1294
    const-string v1, "              [--pct-appswitch PERCENT] [--pct-flip PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1295
    const-string v1, "              [--pct-anyevent PERCENT] [--pct-pinchzoom PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1296
    const-string v1, "              [--pkg-blacklist-file PACKAGE_BLACKLIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1297
    const-string v1, "              [--pkg-whitelist-file PACKAGE_WHITELIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1298
    const-string v1, "              [--wait-dbg] [--dbg-no-events]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1299
    const-string v1, "              [--setup scriptfile] [-f scriptfile [-f scriptfile] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1300
    const-string v1, "              [--port port]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1301
    const-string v1, "              [-s SEED] [-v [-v] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1302
    const-string v1, "              [--throttle MILLISEC] [--randomize-throttle]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1303
    const-string v1, "              [--profile-wait MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1304
    const-string v1, "              [--device-sleep-time MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1305
    const-string v1, "              [--randomize-script]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1306
    const-string v1, "              [--script-log]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1307
    const-string v1, "              [--bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1308
    const-string v1, "              [--periodic-bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1309
    const-string v1, "              COUNT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1310
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1311
    return-void
.end method

.method private signalPersistentProcesses()V
    .locals 3

    .prologue
    .line 1147
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->signalPersistentProcesses(I)V

    .line 1149
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1150
    const-wide/16 v1, 0x7d0

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1151
    monitor-exit p0

    .line 1156
    :goto_0
    return-void

    .line 1151
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private writeScriptLog(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 446
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "scriptlog.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 448
    .local v1, output:Ljava/io/Writer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iteration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1           #output:Ljava/io/Writer;
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

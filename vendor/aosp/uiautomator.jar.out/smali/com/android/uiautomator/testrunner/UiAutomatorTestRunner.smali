.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
    }
.end annotation


# static fields
.field private static final EXIT_EXCEPTION:I = -0x1

.field private static final EXIT_OK:I

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

.field private mDebug:Z

.field private mParams:Landroid/os/Bundle;

.field private mTestClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUiDevice:Lcom/android/uiautomator/core/UiDevice;

.field private mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    .line 58
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;)V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    .line 60
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    .line 299
    return-void
.end method

.method static synthetic access$100(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    return-object v0
.end method


# virtual methods
.method protected addTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    return-void
.end method

.method protected getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;
    .locals 2
    .parameter "classLoader"

    .prologue
    .line 312
    new-instance v0, Lcom/android/uiautomator/testrunner/TestCaseCollector;

    new-instance v1, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    invoke-direct {v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;-><init>(Ljava/lang/ClassLoader;Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;)V

    return-object v0
.end method

.method protected prepareTestCase(Ljunit/framework/TestCase;)V
    .locals 2
    .parameter "testCase"

    .prologue
    .line 331
    move-object v0, p1

    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setAutomationSupport(Lcom/android/uiautomator/testrunner/IAutomationSupport;)V

    move-object v0, p1

    .line 332
    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setUiDevice(Lcom/android/uiautomator/core/UiDevice;)V

    .line 333
    check-cast p1, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    .end local p1
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setParams(Landroid/os/Bundle;)V

    .line 334
    return-void
.end method

.method protected removeTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public run(Ljava/util/List;Landroid/os/Bundle;Z)V
    .locals 1
    .parameter
    .parameter "params"
    .parameter "debug"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, testClasses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 82
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    .line 84
    iput-boolean p3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    .line 85
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->start()V

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 87
    return-void
.end method

.method protected start()V
    .locals 25

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;

    move-result-object v4

    .line 95
    .local v4, collector:Lcom/android/uiautomator/testrunner/TestCaseCollector;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClasses(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 101
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 103
    :cond_0
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 104
    invoke-virtual {v4}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->getTestCases()Ljava/util/List;

    move-result-object v15

    .line 105
    .local v15, testCases:Ljava/util/List;,"Ljava/util/List<Ljunit/framework/TestCase;>;"
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v16, testRunOutput:Landroid/os/Bundle;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .local v3, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v18, Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    .local v18, writer:Ljava/io/PrintStream;
    :try_start_1
    new-instance v8, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;)V

    .line 111
    .local v8, resultPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;
    new-instance v17, Ljunit/framework/TestResult;

    invoke-direct/range {v17 .. v17}, Ljunit/framework/TestResult;-><init>()V

    .line 113
    .local v17, testRunResult:Ljunit/framework/TestResult;
    new-instance v19, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 114
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljunit/framework/TestListener;

    .line 117
    .local v7, listener:Ljunit/framework/TestListener;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listener:Ljunit/framework/TestListener;
    .end local v8           #resultPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;
    .end local v17           #testRunResult:Ljunit/framework/TestResult;
    :catch_0
    move-exception v13

    .line 131
    .local v13, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v19, "Test run aborted due to unexpected exception: %s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    const-string v19, "stream"

    const-string v20, "\nTest results for %s=%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->close()V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    .line 142
    .end local v13           #t:Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 96
    .end local v3           #byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v15           #testCases:Ljava/util/List;,"Ljava/util/List<Ljunit/framework/TestCase;>;"
    .end local v16           #testRunOutput:Landroid/os/Bundle;
    .end local v18           #writer:Ljava/io/PrintStream;
    :catch_1
    move-exception v5

    .line 98
    .local v5, e:Ljava/lang/ClassNotFoundException;
    new-instance v19, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 119
    .end local v5           #e:Ljava/lang/ClassNotFoundException;
    .restart local v3       #byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #resultPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;
    .restart local v15       #testCases:Ljava/util/List;,"Ljava/util/List<Ljunit/framework/TestCase;>;"
    .restart local v16       #testRunOutput:Landroid/os/Bundle;
    .restart local v17       #testRunResult:Ljunit/framework/TestResult;
    .restart local v18       #writer:Ljava/io/PrintStream;
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 122
    .local v11, startTime:J
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljunit/framework/TestCase;

    .line 123
    .local v14, testCase:Ljunit/framework/TestCase;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->prepareTestCase(Ljunit/framework/TestCase;)V

    .line 124
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 135
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #resultPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;
    .end local v11           #startTime:J
    .end local v14           #testCase:Ljunit/framework/TestCase;
    .end local v17           #testRunResult:Ljunit/framework/TestResult;
    :catchall_0
    move-exception v19

    const-string v20, "stream"

    const-string v21, "\nTest results for %s=%s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->close()V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    throw v19

    .line 126
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #resultPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;
    .restart local v11       #startTime:J
    .restart local v17       #testRunResult:Ljunit/framework/TestResult;
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v9, v19, v11

    .line 128
    .local v9, runTime:J
    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;->print2(Ljunit/framework/TestResult;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    const-string v19, "stream"

    const-string v20, "\nTest results for %s=%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->close()V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    goto/16 :goto_1
.end method

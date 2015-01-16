.class public Lcom/android/commands/uiautomator/RunTestCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "RunTestCommand.java"


# static fields
.field private static final ARG_FAIL_INCOMPLETE_C:I = -0x2

.field private static final ARG_FAIL_INCOMPLETE_E:I = -0x1

.field private static final ARG_FAIL_NO_CLASS:I = -0x3

.field private static final ARG_FAIL_RUNNER:I = -0x4

.field private static final ARG_FAIL_UNSUPPORTED:I = -0x63

.field private static final ARG_OK:I = 0x0

.field private static final CLASS_PARAM:Ljava/lang/String; = "class"

.field private static final CLASS_SEPARATOR:Ljava/lang/String; = ","

.field private static final DEBUG_PARAM:Ljava/lang/String; = "debug"

.field private static final RUNNER_PARAM:Ljava/lang/String; = "runner"


# instance fields
.field private mDebug:Z

.field private mParams:Landroid/os/Bundle;

.field private mRunner:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "runtest"

    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    .line 51
    return-void
.end method

.method private addTestClasses(Ljava/lang/String;)V
    .locals 6
    .parameter "classes"

    .prologue
    .line 155
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, classArray:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 157
    .local v2, clazz:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v2           #clazz:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)I
    .locals 6
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_6

    .line 90
    aget-object v3, p1, v0

    const-string v5, "-e"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 91
    add-int/lit8 v3, v0, 0x2

    array-length v5, p1

    if-ge v3, v5, :cond_5

    .line 92
    add-int/lit8 v0, v0, 0x1

    aget-object v1, p1, v0

    .line 93
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    .line 94
    .local v2, value:Ljava/lang/String;
    const-string v3, "class"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-direct {p0, v2}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClasses(Ljava/lang/String;)V

    .line 89
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_0
    const-string v3, "debug"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mDebug:Z

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 98
    :cond_3
    const-string v3, "runner"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    iput-object v2, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Ljava/lang/String;

    goto :goto_1

    .line 101
    :cond_4
    iget-object v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_5
    const/4 v4, -0x1

    .line 116
    :cond_6
    :goto_3
    return v4

    .line 106
    :cond_7
    aget-object v3, p1, v0

    const-string v5, "-c"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 107
    add-int/lit8 v3, v0, 0x1

    array-length v5, p1

    if-ge v3, v5, :cond_8

    .line 108
    add-int/lit8 v0, v0, 0x1

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClasses(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_8
    const/4 v4, -0x2

    goto :goto_3

    .line 113
    :cond_9
    const/16 v4, -0x63

    goto :goto_3
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "    runtest <class spec> [options]\n    <class spec>: <JARS> [-c <CLASSES> | -e class <CLASSES>]\n      <JARS>: a list of jar file containing test classes and dependencies. If\n        the path is relative, it\'s assumed to be under /data/local/tmp. Use\n        absolute path if the file is elsewhere. Multiple files can be\n        specified, separated by space.\n      <CLASSES>: a list of test class names to run, separated by comma. To\n        a single method, use TestClass#testMethod format. The -e or -c option\n        may be repeated.\n    options:\n      --nohup: trap SIG_HUP, so test won\'t terminate even if parent process\n               is terminated, e.g. USB is disconnected.\n      -e debug [true|false]: wait for debugger to connect before starting.\n      -e runner [CLASS]: use specified test runner class instead. If\n        unspecified, framework default runner will be used.\n      -e <NAME> <VALUE>: other name-value pairs to be passed to test classes.\n        May be repeated.\n"

    return-object v0
.end method

.method protected getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    .locals 12

    .prologue
    const/4 v11, -0x4

    .line 120
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 121
    new-instance v7, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-direct {v7}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;-><init>()V

    .line 147
    :goto_0
    return-object v7

    .line 124
    :cond_0
    const/4 v6, 0x0

    .line 126
    .local v6, o:Ljava/lang/Object;
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 127
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 139
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #o:Ljava/lang/Object;
    :goto_1
    :try_start_1
    move-object v0, v6

    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    .line 140
    .local v7, runner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    goto :goto_0

    .line 128
    .end local v7           #runner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    .restart local v6       #o:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 129
    .local v3, cnfe:Ljava/lang/ClassNotFoundException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find runner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 131
    .end local v3           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 132
    .local v5, ie:Ljava/lang/InstantiationException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot instantiate runner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 134
    .end local v5           #ie:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v4

    .line 135
    .local v4, iae:Ljava/lang/IllegalAccessException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Constructor of runner "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not accessibile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 141
    .end local v4           #iae:Ljava/lang/IllegalAccessException;
    .end local v6           #o:Ljava/lang/Object;
    :catch_3
    move-exception v1

    .line 142
    .local v1, cce:Ljava/lang/ClassCastException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Specified runner is not subclass of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 147
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public run([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/commands/uiautomator/RunTestCommand;->parseArgs([Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, ret:I
    sparse-switch v0, :sswitch_data_0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Please specify at least one test class to run."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    iget-object v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mDebug:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->run(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 77
    return-void

    .line 58
    :sswitch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Incomplete \'-c\' parameter."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 62
    :sswitch_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Incomplete \'-e\' parameter."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 66
    :sswitch_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unsupported standalone parameter."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    const/16 v1, -0x63

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_2
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "executes UI automation tests"

    return-object v0
.end method

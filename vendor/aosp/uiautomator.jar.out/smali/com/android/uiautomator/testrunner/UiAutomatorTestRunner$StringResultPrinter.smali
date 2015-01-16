.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;
.super Ljunit/textui/ResultPrinter;
.source "UiAutomatorTestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringResultPrinter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;)V
    .locals 0
    .parameter
    .parameter "writer"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .line 302
    invoke-direct {p0, p2}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    .line 303
    return-void
.end method


# virtual methods
.method declared-synchronized print2(Ljunit/framework/TestResult;J)V
    .locals 1
    .parameter "result"
    .parameter "runTime"

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;->printHeader(J)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$StringResultPrinter;->printFooter(Ljunit/framework/TestResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

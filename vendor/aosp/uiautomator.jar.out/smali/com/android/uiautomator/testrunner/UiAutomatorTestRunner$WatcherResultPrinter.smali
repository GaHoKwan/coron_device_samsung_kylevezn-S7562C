.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# static fields
.field private static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field private static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field private static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field private static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_VALUE_ID:Ljava/lang/String; = "UiAutomatorTestRunner"

.field private static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field private static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field private static final REPORT_VALUE_RESULT_START:I = 0x1


# instance fields
.field private final mResultTemplate:Landroid/os/Bundle;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;I)V
    .locals 3
    .parameter
    .parameter "numTests"

    .prologue
    const/4 v0, 0x0

    .line 222
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    .line 219
    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    .line 224
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "id"

    const-string v2, "UiAutomatorTestRunner"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "numtests"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "test"
    .parameter "t"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 273
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nError in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 6
    .parameter "test"
    .parameter "t"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 283
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nFailure in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 3
    .parameter "test"

    .prologue
    .line 290
    iget v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #getter for: Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;
    invoke-static {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->access$300(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-result-object v0

    iget v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 10
    .parameter "test"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, testClass:Ljava/lang/String;
    move-object v4, p1

    .line 235
    check-cast v4, Ljunit/framework/TestCase;

    invoke-virtual {v4}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, testName:Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    .line 237
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "class"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "test"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "current"

    iget v6, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "stream"

    const-string v6, "\n%s:"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 249
    :goto_0
    const/4 v2, 0x0

    .line 251
    .local v2, testMethod:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 253
    const-class v4, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const-class v4, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/test/RepetitiveTest;

    invoke-interface {v4}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v0

    .line 256
    .local v0, numIterations:I
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "numiterations"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0           #numIterations:I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    #getter for: Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;
    invoke-static {v4}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->access$300(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-interface {v4, v9, v5}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    .line 265
    iput v8, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 266
    return-void

    .line 246
    .end local v2           #testMethod:Ljava/lang/reflect/Method;
    :cond_1
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "stream"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .restart local v2       #testMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

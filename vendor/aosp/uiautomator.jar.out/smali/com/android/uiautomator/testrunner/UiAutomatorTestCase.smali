.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
.super Ljunit/framework/TestCase;
.source "UiAutomatorTestCase.java"


# static fields
.field private static final DISABLE_IME:Ljava/lang/String; = "disable_ime"

.field private static final DUMMY_IME_PACKAGE:Ljava/lang/String; = "com.android.testing.dummyime"


# instance fields
.field private mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

.field private mParams:Landroid/os/Bundle;

.field private mShouldDisableIme:Z

.field private mUiDevice:Lcom/android/uiautomator/core/UiDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    return-void
.end method

.method private restoreActiveIme()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    return-void
.end method

.method private setDummyIme()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    const-string v5, "input_method"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v2

    .line 122
    .local v2, im:Lcom/android/internal/view/IInputMethodManager;
    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    .line 123
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v1, 0x0

    .line 124
    .local v1, id:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 125
    .local v3, info:Landroid/view/inputmethod/InputMethodInfo;
    const-string v5, "com.android.testing.dummyime"

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 129
    .end local v3           #info:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 130
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Required testing fixture missing: IME package (%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "com.android.testing.dummyime"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v2, v5, v1}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method public getAutomationSupport()Lcom/android/uiautomator/testrunner/IAutomationSupport;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUiDevice()Lcom/android/uiautomator/core/UiDevice;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    return-object v0
.end method

.method setAutomationSupport(Lcom/android/uiautomator/testrunner/IAutomationSupport;)V
    .locals 0
    .parameter "automationSupport"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    .line 109
    return-void
.end method

.method setParams(Landroid/os/Bundle;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    .line 105
    return-void
.end method

.method setUiDevice(Lcom/android/uiautomator/core/UiDevice;)V
    .locals 0
    .parameter "uiDevice"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 97
    return-void
.end method

.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 51
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    const-string v2, "disable_ime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    .line 52
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setDummyIme()V

    .line 55
    :cond_0
    return-void
.end method

.method public sleep(J)V
    .locals 0
    .parameter "ms"

    .prologue
    .line 116
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 117
    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->restoreActiveIme()V

    .line 62
    :cond_0
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 63
    return-void
.end method

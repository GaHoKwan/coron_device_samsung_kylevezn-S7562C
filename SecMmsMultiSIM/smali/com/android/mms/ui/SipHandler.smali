.class public Lcom/android/mms/ui/SipHandler;
.super Landroid/content/BroadcastReceiver;
.source "SipHandler.java"


# static fields
.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final TAG:Ljava/lang/String; = "Mms/SipHandler"

.field private static sIsSipVisible:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mIsOnScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter "activity"
    .parameter "composer"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object v0, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 50
    iput-object p1, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 52
    return-void
.end method

.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static isSipVisible()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    return v0
.end method


# virtual methods
.method public HasKeyboard()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    .line 103
    .local v0, mKeyboard:I
    and-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x1

    .line 105
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public hideSip()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActionbarHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 99
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    .line 155
    iget-object v1, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->onSipStatusChanged()V

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ResponseAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method public setOnScreen(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/mms/ui/SipHandler;->mIsOnScreen:Z

    .line 168
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 76
    return-void
.end method

.method public showSip()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 110
    iget-boolean v0, p0, Lcom/android/mms/ui/SipHandler;->mIsOnScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SipHandler;->HasKeyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_0
    const-string v0, "Mms/SipHandler"

    const-string v1, "show sip but no screen on or has keyboard"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 116
    sput-boolean v3, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActionbarHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public showSipDelayed(Landroid/os/Handler;I)V
    .locals 4
    .parameter "handler"
    .parameter "delayMillis"

    .prologue
    .line 128
    new-instance v1, Lcom/android/mms/ui/SipHandler$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SipHandler$1;-><init>(Lcom/android/mms/ui/SipHandler;)V

    .line 134
    .local v1, showSipRun:Ljava/lang/Runnable;
    const/4 v0, 0x0

    .line 135
    .local v0, isneedblock:Z
    iget-object v2, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getBlockSIP()Z

    move-result v0

    .line 138
    :cond_0
    if-nez v0, :cond_1

    .line 139
    int-to-long v2, p2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :cond_1
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    return-void
.end method

.class Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowErrorPopupDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1612
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SipHandler;->setOnScreen(Z)V

    .line 1616
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->HasKeyboard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mOldSipVisibility:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    .line 1620
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 1621
    return-void
.end method

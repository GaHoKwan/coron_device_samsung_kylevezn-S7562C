.class Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscardDraftListener"
.end annotation


# instance fields
.field private mContinueIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1558
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1569
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1572
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->clearFocusEditText(I)V

    .line 1574
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1583
    :goto_0
    return-void

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1578
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onResume()V

    goto :goto_0

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1586
    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/16 v0, 0x54

    if-ne p2, v0, :cond_1

    .line 1587
    :cond_0
    const/4 v0, 0x1

    .line 1589
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;
    .locals 0
    .parameter "intent"

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    .line 1563
    return-object p0
.end method

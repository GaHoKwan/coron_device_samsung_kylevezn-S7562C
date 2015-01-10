.class Lcom/android/mms/ui/ComposeMessageFragment$157;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 19378
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19380
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    .line 19381
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    if-nez v7, :cond_1

    .line 19417
    :cond_0
    :goto_0
    return v5

    .line 19384
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 19385
    .local v3, parent:Landroid/view/ViewGroup;
    if-nez v3, :cond_2

    .line 19386
    const-string v6, "Mms/ComposeMessageFragment"

    const-string v7, "parent is null !!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19390
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 19391
    .local v2, page:Landroid/view/ViewGroup;
    if-nez v2, :cond_3

    .line 19392
    const-string v6, "Mms/ComposeMessageFragment"

    const-string v7, "page is null !!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19396
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 19397
    .local v4, richContainer:Landroid/view/ViewGroup;
    if-nez v4, :cond_4

    .line 19398
    const-string v6, "Mms/ComposeMessageFragment"

    const-string v7, "richContainer is null !!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19401
    :cond_4
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 19402
    .local v0, curPage:I
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/mms/ui/MmsRichContainer;->clearFocusEditText(I)V

    .line 19403
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 19405
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 19406
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19409
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v1

    .line 19410
    .local v1, isSipVisible:Z
    if-nez v1, :cond_6

    .line 19411
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    invoke-virtual {v7, v5, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 19412
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v5, :cond_6

    .line 19413
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v5}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :cond_6
    move v5, v6

    .line 19415
    goto/16 :goto_0
.end method

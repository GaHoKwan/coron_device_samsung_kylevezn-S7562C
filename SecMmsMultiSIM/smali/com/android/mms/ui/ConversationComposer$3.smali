.class Lcom/android/mms/ui/ConversationComposer$3;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownX:I

.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1610
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1611
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020261

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1612
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->mDownX:I

    .line 1614
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #setter for: Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ConversationComposer;->access$302(Lcom/android/mms/ui/ConversationComposer;Z)Z

    .line 1615
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->drawMessageTouchPointer()V

    .line 1628
    :cond_0
    :goto_0
    return v3

    .line 1617
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1618
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v0, v1

    .line 1619
    .local v0, x:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ConversationComposer$3;->mDownX:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SplitManager;->UpdateSplitPosition(I)Z

    .line 1620
    iput v0, p0, Lcom/android/mms/ui/ConversationComposer$3;->mDownX:I

    goto :goto_0

    .line 1621
    .end local v0           #x:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1622
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1623
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->saveSplitPosition()V

    .line 1625
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #setter for: Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ConversationComposer;->access$302(Lcom/android/mms/ui/ConversationComposer;Z)Z

    .line 1626
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->drawMessageTouchPointer()V

    goto :goto_0
.end method
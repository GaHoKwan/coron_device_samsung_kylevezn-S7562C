.class Lcom/android/mms/animation/MsgDeleteActionAnimation$1;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"

# interfaces
.implements Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation;->createDeleteActionThreadAnim()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyTransformation(F)V
    .locals 4
    .parameter "interpolatedTime"

    .prologue
    .line 50
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mTransferDelItemAnim : onApplyTransformation "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->hideSelectedChildItems()V

    .line 52
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 53
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->calculateOffsetForTransDelAnim(IF)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public onBeginTransDeleteAnimation()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->hideSelectedChildItems()V

    .line 59
    return-void
.end method

.method public onCancelTransDeleteAnimation()V
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mTransferDelItemAnim : onCancelTransDeleteAnimation "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 74
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->calculateOffsetForTransDelAnim(IF)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->onEndTransDeleteAnimation()V

    .line 78
    return-void
.end method

.method public onEndTransDeleteAnimation()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mTransferDelItemAnim : onEndTransDeleteAnimation "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->hideSelectedChildItems()V

    .line 65
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-boolean v0, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    .line 67
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    .line 69
    :cond_0
    return-void
.end method

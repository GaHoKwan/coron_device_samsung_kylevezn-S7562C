.class Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;-><init>(Lcom/android/mms/ui/MessageListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

.field final synthetic val$this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;Lcom/android/mms/ui/MessageListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->val$this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyTransformation(F)V
    .locals 3
    .parameter "interpolatedTime"

    .prologue
    .line 277
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    .line 278
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 279
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2, v0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->calculateOffsetForTransDelAnim(IF)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method public onBeginTransDeleteAnimation()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    .line 286
    return-void
.end method

.method public onCancelTransDeleteAnimation()V
    .locals 4

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 300
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->calculateOffsetForTransDelAnim(IF)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->onEndTransDeleteAnimation()V

    .line 304
    return-void
.end method

.method public onEndTransDeleteAnimation()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 295
    :cond_0
    return-void
.end method

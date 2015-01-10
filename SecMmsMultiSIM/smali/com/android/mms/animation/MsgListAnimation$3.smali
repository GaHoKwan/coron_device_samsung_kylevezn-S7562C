.class Lcom/android/mms/animation/MsgListAnimation$3;
.super Ljava/lang/Object;
.source "MsgListAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgListAnimation;->createCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgListAnimation;

.field final synthetic val$checkbox:Landroid/view/View;

.field final synthetic val$isLastIndex:Z


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgListAnimation;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/mms/animation/MsgListAnimation$3;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    iput-boolean p2, p0, Lcom/android/mms/animation/MsgListAnimation$3;->val$isLastIndex:Z

    iput-object p3, p0, Lcom/android/mms/animation/MsgListAnimation$3;->val$checkbox:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/mms/animation/MsgListAnimation$3;->val$isLastIndex:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$3;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$3;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;->onEndDeleteAnimation()V

    .line 160
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$3;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mIsAnimating:Z

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$3;->val$checkbox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 163
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$3;->val$checkbox:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 164
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 155
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 152
    return-void
.end method

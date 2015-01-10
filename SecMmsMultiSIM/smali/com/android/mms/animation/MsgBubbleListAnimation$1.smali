.class Lcom/android/mms/animation/MsgBubbleListAnimation$1;
.super Ljava/lang/Object;
.source "MsgBubbleListAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgBubbleListAnimation;->createHideCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgBubbleListAnimation;

.field final synthetic val$changeToNormalMode:Z

.field final synthetic val$checkbox:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgBubbleListAnimation;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/mms/animation/MsgBubbleListAnimation$1;->this$0:Lcom/android/mms/animation/MsgBubbleListAnimation;

    iput-object p2, p0, Lcom/android/mms/animation/MsgBubbleListAnimation$1;->val$checkbox:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/mms/animation/MsgBubbleListAnimation$1;->val$changeToNormalMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation$1;->val$checkbox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 117
    iget-boolean v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation$1;->val$changeToNormalMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation$1;->this$0:Lcom/android/mms/animation/MsgBubbleListAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation$1;->this$0:Lcom/android/mms/animation/MsgBubbleListAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;->onEndDeleteAnimation()V

    .line 119
    iget-object v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation$1;->this$0:Lcom/android/mms/animation/MsgBubbleListAnimation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mIsAnimating:Z

    .line 121
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mms/animation/MsgBubbleListAnimation$1;->this$0:Lcom/android/mms/animation/MsgBubbleListAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mIsAnimating:Z

    .line 110
    return-void
.end method

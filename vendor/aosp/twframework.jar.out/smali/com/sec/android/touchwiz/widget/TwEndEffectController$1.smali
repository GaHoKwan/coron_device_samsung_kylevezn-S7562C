.class Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;
.super Ljava/lang/Object;
.source "TwEndEffectController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwEndEffectController;->startTextShakingAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwEndEffectController;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 236
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mParentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->access$000(Lcom/sec/android/touchwiz/widget/TwEndEffectController;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mParentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->access$000(Lcom/sec/android/touchwiz/widget/TwEndEffectController;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1$1;-><init>(Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    const-string v0, "TwEndEffectController"

    const-string v1, "animation ended()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 253
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mTextShakeAnimStatus:I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->access$102(Lcom/sec/android/touchwiz/widget/TwEndEffectController;I)I

    .line 258
    const-string v0, "TwEndEffectController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation started(), duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

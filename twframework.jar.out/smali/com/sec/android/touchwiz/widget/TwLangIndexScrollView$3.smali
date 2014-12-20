.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$3;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

.field final synthetic val$animSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/animation/AnimatorSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2897
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$3;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2903
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$3;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2909
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$3;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2910
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$4402(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Z)Z

    .line 2911
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2917
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$4402(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Z)Z

    .line 2923
    return-void
.end method

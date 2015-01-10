.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->moveOneHandDialer(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3278
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mKeypadAni:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3291
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mOneHand:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3292
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$11;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mOneHand:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0901c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3293
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3286
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3282
    return-void
.end method

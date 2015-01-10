.class Lcom/android/contacts/editor/BaseRawContactEditorView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseRawContactEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/BaseRawContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "anim"

    .prologue
    const/high16 v1, 0x3f80

    .line 238
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 239
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 241
    return-void
.end method

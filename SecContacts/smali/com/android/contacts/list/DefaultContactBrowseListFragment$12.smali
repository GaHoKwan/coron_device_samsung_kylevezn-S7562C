.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$12;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animtaion"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1403
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1404
    .local v0, ani:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1405
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1406
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$12;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1407
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$12;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 1408
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$12;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$12;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$600()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$700()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 1409
    return-void

    .line 1408
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animtaion"

    .prologue
    .line 1399
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animtaion"

    .prologue
    .line 1395
    return-void
.end method

.class Lcom/android/contacts/detail/ContactDetailLayoutController$3;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoSelected(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$900(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->onPhotoOfTabCarouselSelected(Landroid/view/View;)V

    .line 788
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    sub-int v1, p3, p1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mFakeDragXRatio:F
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$800(Lcom/android/contacts/detail/ContactDetailLayoutController;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTabSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 782
    return-void
.end method

.method public onTouchDown()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    goto :goto_0
.end method

.method public onTouchUp()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v0

    goto :goto_0
.end method

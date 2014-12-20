.class public Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;
.super Ljava/lang/Object;
.source "TwAnimatedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemAnimator"
.end annotation


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mTempItemList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;


# direct methods
.method protected constructor <init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V
    .locals 1
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    .line 687
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    .line 688
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    .line 690
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 0
    .parameter "indent"

    .prologue
    .line 1006
    return-void
.end method

.method public forceFinish()V
    .locals 2

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    .line 994
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 995
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 997
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;->OnLocalItemAnimatorEnd()V

    .line 1003
    :cond_1
    return-void
.end method

.method public getDeleteItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public getItemAnimationKey(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public getRetainItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public itemAnimationCount()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 716
    return-void
.end method

.method public putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 730
    return-void
.end method

.method public putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 720
    return-void
.end method

.method public removeAll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 815
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 816
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 817
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 818
    .local v2, aniKey:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 819
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_1

    .line 816
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 821
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 822
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 823
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 824
    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 828
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #aniKey:I
    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 829
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 830
    .restart local v2       #aniKey:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 831
    .restart local v0       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_4

    .line 828
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 833
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 834
    .restart local v1       #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 835
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 836
    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_3

    .line 840
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #aniKey:I
    :cond_5
    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 841
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 842
    .restart local v2       #aniKey:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 843
    .restart local v0       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_7

    .line 840
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move-object v1, v0

    .line 845
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 846
    .restart local v1       #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 847
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 848
    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_5

    .line 853
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #aniKey:I
    .end local v3           #i:I
    :cond_8
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 854
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 855
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 856
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_9

    .line 857
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 858
    :cond_9
    return-void
.end method

.method public removeDeleteItemAnimation(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 796
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 798
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 799
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 800
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 801
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 802
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 806
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 807
    return-void
.end method

.method public removeDeleteItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 778
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 779
    .local v1, i:I
    if-ltz v1, :cond_1

    .line 780
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 781
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 782
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 783
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 784
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 787
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 790
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 791
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 792
    :cond_2
    return-void
.end method

.method public removeItemAnimation(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 762
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 764
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 765
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 766
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 767
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 768
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 772
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 773
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 775
    :cond_1
    return-void
.end method

.method public removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 739
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 740
    .local v1, i:I
    if-ltz v1, :cond_1

    .line 741
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 742
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 743
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 744
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 745
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 748
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 750
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 751
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 752
    :cond_2
    return-void
.end method

.method public removeRetainItemAnimation(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 878
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 880
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 881
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 882
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 883
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 884
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 888
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 889
    return-void
.end method

.method public removeRetainItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 862
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 863
    .local v1, i:I
    if-ltz v1, :cond_1

    .line 864
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 865
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 866
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 867
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 868
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 871
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 873
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 874
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 875
    :cond_2
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 911
    .local v3, curTime:J
    const/4 v1, 0x1

    .line 912
    .local v1, allFinished:Z
    const/4 v2, 0x0

    .line 913
    .local v2, animationCount:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 914
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 915
    .local v10, size:I
    add-int/2addr v2, v10

    .line 916
    add-int/lit8 v6, v10, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_1

    .line 917
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 918
    .local v9, position:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 920
    .local v8, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 921
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 922
    .local v5, finished:Z
    and-int/2addr v1, v5

    .line 923
    if-eqz v5, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_0

    .line 924
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 927
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 928
    add-int/2addr v2, v10

    .line 929
    add-int/lit8 v6, v10, -0x1

    :goto_1
    if-ltz v6, :cond_3

    .line 930
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 931
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 933
    .restart local v8       #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 934
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 935
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 936
    if-eqz v5, :cond_2

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_2

    .line 937
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 940
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_3
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 941
    add-int/2addr v2, v10

    .line 942
    add-int/lit8 v6, v10, -0x1

    :goto_2
    if-ltz v6, :cond_5

    .line 943
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 944
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 946
    .restart local v8       #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 947
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 948
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 949
    if-eqz v5, :cond_4

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_4

    .line 950
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 954
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_5
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 955
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 956
    .local v0, aToDelete:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 957
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeRetainItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 954
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeDeleteItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_3

    .line 960
    .end local v0           #aToDelete:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    :cond_6
    if-nez v2, :cond_7

    .line 961
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 962
    :cond_7
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 964
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    .line 965
    if-nez v1, :cond_9

    .line 966
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v11, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 977
    :cond_8
    :goto_4
    return-void

    .line 968
    :cond_9
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 969
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v12, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v11, v12}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 970
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 971
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    .line 973
    :cond_a
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 974
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;->OnLocalItemAnimatorEnd()V

    goto :goto_4
.end method

.method public start()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 898
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 899
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->run()V

    .line 900
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStart()V

    .line 902
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 981
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;->OnLocalItemAnimatorEnd()V

    .line 986
    :cond_1
    return-void
.end method

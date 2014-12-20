.class Lcom/sec/android/touchwiz/widget/TwAbsListView$2;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 6753
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6755
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 6756
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput-boolean v2, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    .line 6757
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3900(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V

    .line 6758
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Landroid/view/ViewGroup;->mPersistentDrawingCache:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 6759
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4100(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V

    .line 6761
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6762
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6765
    :cond_1
    return-void
.end method

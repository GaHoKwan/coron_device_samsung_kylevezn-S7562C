.class Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRetainViews:Ljava/util/HashMap;

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 8187
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8202
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8187
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8187
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .locals 12

    .prologue
    .line 8515
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 8516
    .local v3, maxViews:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8517
    .local v8, viewTypeCount:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8518
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 8519
    aget-object v4, v5, v1

    .line 8520
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 8521
    .local v6, size:I
    sub-int v0, v6, v3

    .line 8522
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 8523
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 8524
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    #calls: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v9, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4900(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    .line 8523
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_1

    .line 8518
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8527
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 1
    .parameter "scrap"

    .prologue
    .line 8376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;Z)V

    .line 8377
    return-void
.end method

.method addScrapView(Landroid/view/View;I)V
    .locals 4
    .parameter "scrap"
    .parameter "position"

    .prologue
    .line 8429
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 8430
    .local v0, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 8457
    :cond_0
    :goto_0
    return-void

    .line 8436
    :cond_1
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 8437
    .local v1, viewType:I
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8438
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 8439
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x0

    #calls: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v2, p1, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4700(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .line 8444
    :cond_2
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8446
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 8447
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8448
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8454
    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    if-eqz v2, :cond_0

    .line 8455
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 8450
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8451
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addScrapView(Landroid/view/View;Z)V
    .locals 5
    .parameter "scrap"
    .parameter "ignoreRetainView"

    .prologue
    .line 8385
    if-nez p1, :cond_1

    .line 8421
    :cond_0
    :goto_0
    return-void

    .line 8388
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 8389
    .local v0, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v0, :cond_0

    .line 8393
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    .line 8394
    .local v1, retainViews:Ljava/util/HashMap;
    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8395
    const-string v3, "[ABS_LIST]"

    const-string v4, "scrap view should be retained~! return~!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8401
    :cond_2
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 8402
    .local v2, viewType:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8403
    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    .line 8404
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v4, 0x0

    #calls: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v3, p1, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4600(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .line 8409
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 8410
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8411
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8417
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8418
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 8419
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 8413
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8414
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addShouldRetainView(ILandroid/view/View;)V
    .locals 2
    .parameter "position"
    .parameter "v"

    .prologue
    .line 8216
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8221
    :goto_0
    return-void

    .line 8218
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 8219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    .line 8220
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 8295
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 8296
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8297
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8298
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 8299
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4400(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    .line 8298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8302
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8303
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 8304
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 8305
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8306
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 8307
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4500(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    .line 8306
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8303
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8311
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_2
    return-void
.end method

.method public clearShouldRetainView()V
    .locals 3

    .prologue
    .line 8224
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 8225
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;Z)V

    goto :goto_0

    .line 8229
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 8231
    .end local v0           #itr:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 8322
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 8323
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8325
    :cond_0
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 8327
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8328
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8329
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8330
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 8333
    .local v3, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 8337
    aput-object v1, v0, v2

    .line 8328
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8340
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 8350
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 8351
    .local v1, index:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8352
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 8353
    aget-object v2, v0, v1

    .line 8354
    .local v2, match:Landroid/view/View;
    aput-object v3, v0, v1

    .line 8357
    .end local v2           #match:Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method public getRetainViewPositions()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8239
    const/4 v0, 0x0

    .line 8240
    .local v0, ret:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 8241
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 8242
    :cond_0
    return-object v0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .parameter "position"

    .prologue
    .line 8364
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 8365
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 8372
    :goto_0
    return-object v1

    .line 8367
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 8368
    .local v0, whichScrap:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 8369
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 8372
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShouldRetainView(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 8250
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShouldRetainViewCount()I
    .locals 1

    .prologue
    .line 8246
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 7

    .prologue
    .line 8269
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 8270
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8271
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8272
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 8273
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 8272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8276
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8277
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 8278
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 8279
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8280
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 8281
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 8280
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8285
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_2
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8533
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 8534
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8543
    :cond_0
    return-void

    .line 8536
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8537
    .local v3, viewTypeCount:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8538
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 8539
    aget-object v1, v2, v0

    .line 8540
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeShouldRetainView(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 8234
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 8235
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8236
    :cond_0
    return-void
.end method

.method scrapActiveViews()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 8463
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8464
    .local v0, activeViews:[Landroid/view/View;
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    if-eqz v11, :cond_1

    move v2, v9

    .line 8465
    .local v2, hasListener:Z
    :goto_0
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v11, v9, :cond_2

    move v5, v9

    .line 8467
    .local v5, multipleScraps:Z
    :goto_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8468
    .local v6, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 8469
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_5

    .line 8470
    aget-object v7, v0, v3

    .line 8471
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 8472
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 8474
    .local v4, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v8, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 8476
    .local v8, whichScrap:I
    aput-object v12, v0, v3

    .line 8478
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 8480
    const/4 v9, -0x2

    if-eq v8, v9, :cond_0

    .line 8481
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v9, v7, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4800(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    .line 8469
    .end local v4           #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v8           #whichScrap:I
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v1           #count:I
    .end local v2           #hasListener:Z
    .end local v3           #i:I
    .end local v5           #multipleScraps:Z
    .end local v6           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #victim:Landroid/view/View;
    :cond_1
    move v2, v10

    .line 8464
    goto :goto_0

    .restart local v2       #hasListener:Z
    :cond_2
    move v5, v10

    .line 8465
    goto :goto_1

    .line 8486
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .restart local v5       #multipleScraps:Z
    .restart local v6       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7       #victim:Landroid/view/View;
    .restart local v8       #whichScrap:I
    :cond_3
    if-eqz v5, :cond_4

    .line 8487
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v6, v9, v8

    .line 8489
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8490
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v9, v3

    iput v9, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8491
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8493
    invoke-virtual {v7, v12}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8494
    if-eqz v2, :cond_0

    .line 8495
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    invoke-interface {v9, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 8506
    .end local v4           #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v7           #victim:Landroid/view/View;
    .end local v8           #whichScrap:I
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->pruneScrapViews()V

    .line 8507
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .parameter "color"

    .prologue
    .line 8551
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 8552
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8553
    .local v4, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8554
    .local v5, scrapCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 8555
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8554
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8558
    .end local v2           #i:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    :cond_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8559
    .local v6, typeCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 8560
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 8561
    .restart local v4       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8562
    .restart local v5       #scrapCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 8563
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8562
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8559
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8568
    .end local v3           #j:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    .end local v6           #typeCount:I
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8569
    .local v0, activeViews:[Landroid/view/View;
    array-length v1, v0

    .line 8570
    .local v1, count:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 8571
    aget-object v7, v0, v2

    .line 8572
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_3

    .line 8573
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8570
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8576
    .end local v7           #victim:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .parameter "viewTypeCount"

    .prologue
    .line 8255
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 8256
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8259
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 8260
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 8261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 8260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8263
    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8264
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8265
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8266
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 8288
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

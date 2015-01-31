.class public Lcom/sec/android/glview/TwGLViewGroup;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLViewGroup.java"

# interfaces
.implements Landroid/view/IGLViewGroup;


# static fields
.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000


# instance fields
.field protected mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLView;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewGroupFlags:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 1
    .parameter "glContext"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initViewGroup()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initViewGroup()V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 121
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initViewGroup()V

    .line 122
    return-void
.end method

.method private initViewGroup()V
    .locals 1

    .prologue
    .line 125
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setDescendantFocusability(I)V

    .line 126
    return-void
.end method


# virtual methods
.method public declared-synchronized addView(ILcom/sec/android/glview/TwGLView;)V
    .locals 2
    .parameter "position"
    .parameter "view"

    .prologue
    .line 612
    monitor-enter p0

    if-nez p2, :cond_0

    .line 613
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 616
    :cond_0
    :try_start_1
    iput-object p0, p2, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 622
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 623
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 624
    monitor-exit p0

    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 596
    monitor-enter p0

    if-nez p1, :cond_0

    .line 597
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 599
    :cond_0
    :try_start_1
    iput-object p0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 600
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 602
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    monitor-exit p0

    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 183
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 184
    return-void
.end method

.method public clearIndicators()V
    .locals 2

    .prologue
    .line 759
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 760
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clearIndicators()V

    goto :goto_0

    .line 763
    :cond_0
    return-void
.end method

.method public contains(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-nez v3, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 210
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 212
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public contains(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 187
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 191
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 193
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dumpViewHierarchy(I)V
    .locals 6
    .parameter "level"

    .prologue
    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 744
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 747
    const-string v3, "DUMP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Focusable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Clip(Manual:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :goto_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 752
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 753
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->dumpViewHierarchy(I)V

    goto :goto_2

    .line 749
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    const-string v3, "DUMP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Focusable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 755
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_2
    return-void
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 17
    .parameter "focusedView"
    .parameter "direction"

    .prologue
    .line 296
    if-nez p1, :cond_1

    .line 297
    const/4 v4, 0x0

    .line 386
    :cond_0
    return-object v4

    .line 299
    :cond_1
    const/4 v4, 0x0

    .line 301
    .local v4, candidateView:Lcom/sec/android/glview/TwGLView;
    invoke-super/range {p0 .. p2}, Lcom/sec/android/glview/TwGLView;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    .line 302
    .local v11, tempView:Lcom/sec/android/glview/TwGLView;
    if-eqz v11, :cond_2

    .line 303
    move-object v4, v11

    .line 306
    :cond_2
    const/4 v12, 0x0

    .line 307
    .local v12, tempViewLeft:F
    const/4 v13, 0x0

    .line 308
    .local v13, tempViewTop:F
    const/4 v5, 0x0

    .line 309
    .local v5, candidateViewLeft:F
    const/4 v6, 0x0

    .line 310
    .local v6, candidateViewTop:F
    const/4 v9, 0x0

    .line 311
    .local v9, horizontalOffset:F
    const/4 v14, 0x0

    .line 312
    .local v14, verticalOffset:F
    const/4 v2, 0x0

    .line 313
    .local v2, candidateHorizontalOffset:F
    const/4 v3, 0x0

    .line 314
    .local v3, candidateVerticalOffset:F
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v7

    .line 315
    .local v7, focusedViewLeft:F
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v8

    .line 317
    .local v8, focusedViewTop:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 318
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 319
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/sec/android/glview/TwGLView;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    .line 320
    if-eqz v11, :cond_3

    .line 321
    if-nez v4, :cond_4

    .line 322
    move-object v4, v11

    goto :goto_0

    .line 324
    :cond_4
    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v12

    .line 325
    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v13

    .line 326
    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v5

    .line 327
    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v6

    .line 328
    sub-float v15, v7, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 329
    sub-float v15, v8, v13

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 330
    sub-float v15, v7, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 331
    sub-float v15, v8, v6

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 333
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 335
    :sswitch_0
    cmpl-float v15, v12, v5

    if-ltz v15, :cond_3

    cmpg-float v15, v12, v7

    if-gtz v15, :cond_3

    .line 336
    cmpl-float v15, v9, v14

    if-ltz v15, :cond_3

    .line 337
    sub-float v15, v14, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v16, v9, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_5

    .line 338
    move-object v4, v11

    goto :goto_0

    .line 340
    :cond_5
    cmpg-float v15, v14, v3

    if-gtz v15, :cond_3

    .line 341
    move-object v4, v11

    goto :goto_0

    .line 347
    :sswitch_1
    cmpg-float v15, v12, v5

    if-gtz v15, :cond_3

    cmpl-float v15, v12, v7

    if-ltz v15, :cond_3

    .line 348
    cmpl-float v15, v9, v14

    if-ltz v15, :cond_3

    .line 349
    sub-float v15, v14, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v16, v9, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_6

    .line 350
    move-object v4, v11

    goto/16 :goto_0

    .line 352
    :cond_6
    cmpg-float v15, v14, v3

    if-gtz v15, :cond_3

    .line 353
    move-object v4, v11

    goto/16 :goto_0

    .line 359
    :sswitch_2
    cmpl-float v15, v13, v6

    if-ltz v15, :cond_3

    cmpg-float v15, v13, v8

    if-gtz v15, :cond_3

    .line 360
    cmpg-float v15, v9, v14

    if-gtz v15, :cond_3

    .line 361
    sub-float v15, v14, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v16, v9, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_7

    .line 362
    move-object v4, v11

    goto/16 :goto_0

    .line 364
    :cond_7
    cmpg-float v15, v9, v2

    if-gtz v15, :cond_3

    .line 365
    move-object v4, v11

    goto/16 :goto_0

    .line 371
    :sswitch_3
    cmpg-float v15, v13, v6

    if-gtz v15, :cond_3

    cmpl-float v15, v13, v8

    if-ltz v15, :cond_3

    .line 372
    cmpg-float v15, v9, v14

    if-gtz v15, :cond_3

    .line 373
    sub-float v15, v14, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v16, v9, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_8

    .line 374
    move-object v4, v11

    goto/16 :goto_0

    .line 376
    :cond_8
    cmpg-float v15, v9, v2

    if-gtz v15, :cond_3

    .line 377
    move-object v4, v11

    goto/16 :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, resultView:Lcom/sec/android/glview/TwGLView;
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-nez v3, :cond_1

    move-object p0, v4

    .line 291
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 271
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    move-object p0, v4

    .line 272
    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBypassTouch()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object p0, v4

    .line 275
    goto :goto_0

    .line 277
    :cond_3
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 278
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/glview/TwGLView;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    .line 280
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_4

    .line 281
    move-object v1, v2

    goto :goto_1

    .line 285
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_5
    if-eqz v1, :cond_6

    move-object p0, v1

    .line 286
    goto :goto_0

    .line 288
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_0

    move-object p0, v4

    .line 291
    goto :goto_0
.end method

.method public declared-synchronized findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 3
    .parameter "id"

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, p1, :cond_0

    move-object v1, p0

    .line 236
    :goto_0
    monitor-exit p0

    return-object v1

    .line 229
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 230
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->findViewById(I)Lcom/sec/android/glview/TwGLView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 232
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 236
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 226
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 3
    .parameter "tag"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTag()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, p1, :cond_0

    move-object v1, p0

    .line 256
    :goto_0
    monitor-exit p0

    return-object v1

    .line 249
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 252
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 256
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 246
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getChildren()Ljava/util/List;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 2

    .prologue
    .line 647
    iget v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getIndex(Lcom/sec/android/glview/TwGLView;)I
    .locals 3
    .parameter "view"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    const/4 v0, 0x0

    .line 162
    .local v0, index:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 168
    .end local v0           #index:I
    :goto_1
    return v0

    .line 166
    .restart local v0       #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 4
    .parameter "gl"

    .prologue
    .line 505
    const/4 v1, 0x1

    .line 507
    .local v1, ret:Z
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 508
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 510
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 511
    const/4 v1, 0x0

    goto :goto_0

    .line 515
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v3, :cond_2

    .line 516
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initSize()V

    .line 519
    :cond_2
    return v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public initSize()V
    .locals 6

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    .line 397
    .local v2, right:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    .line 399
    .local v0, bottom:F
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 400
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 402
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    .line 403
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    add-float v2, v4, v5

    .line 405
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 406
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float v0, v4, v5

    goto :goto_0

    .line 409
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getSizeSpecified()Z

    move-result v4

    if-nez v4, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 411
    :cond_3
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 2

    .prologue
    .line 569
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 570
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 571
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    goto :goto_0

    .line 574
    :cond_0
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v2

    .line 530
    .local v2, matrix:[F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 531
    .local v0, clipRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 532
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 534
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 535
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 536
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 537
    invoke-virtual {v3, p1, v2, v0}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 538
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 539
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    goto :goto_0

    .line 542
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 2

    .prologue
    .line 560
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 561
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 562
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 4
    .parameter "gl"

    .prologue
    .line 481
    const/4 v1, 0x1

    .line 483
    .local v1, ret:Z
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 484
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 486
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 487
    const/4 v1, 0x0

    goto :goto_0

    .line 491
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v3, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initSize()V

    .line 495
    :cond_2
    return v1
.end method

.method protected onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 584
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    goto :goto_0

    .line 587
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    .line 588
    return-void
.end method

.method protected onOutOfScreen()V
    .locals 2

    .prologue
    .line 546
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 547
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    goto :goto_0

    .line 550
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    .line 551
    return-void
.end method

.method public onRequestFocusInDescendants(ILcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedView"

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v1

    .line 691
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 692
    const/4 v5, 0x0

    .line 693
    .local v5, index:I
    const/4 v4, 0x1

    .line 694
    .local v4, increment:I
    move v2, v1

    .line 702
    .local v2, end:I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 703
    .local v6, list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    move v3, v5

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 704
    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    .line 705
    .local v0, child:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v7

    if-nez v7, :cond_1

    .line 706
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 707
    const/4 v7, 0x1

    .line 711
    .end local v0           #child:Lcom/sec/android/glview/TwGLView;
    :goto_2
    return v7

    .line 696
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #increment:I
    .end local v5           #index:I
    .end local v6           #list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 697
    .restart local v5       #index:I
    const/4 v4, -0x1

    .line 698
    .restart local v4       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 703
    .restart local v0       #child:Lcom/sec/android/glview/TwGLView;
    .restart local v3       #i:I
    .restart local v6       #list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    add-int/2addr v3, v4

    goto :goto_1

    .line 711
    .end local v0           #child:Lcom/sec/android/glview/TwGLView;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 735
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 736
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    .line 739
    :cond_0
    return-void
.end method

.method public declared-synchronized removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 633
    monitor-enter p0

    if-nez p1, :cond_0

    .line 644
    :goto_0
    monitor-exit p0

    return-void

    .line 636
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 638
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->removeView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 633
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 642
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 643
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public requestFocus(ILcom/sec/android/glview/TwGLView;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedView"

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 668
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 680
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 677
    :cond_0
    :goto_0
    return v1

    .line 672
    :sswitch_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 673
    .local v1, took:Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->onRequestFocusInDescendants(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto :goto_0

    .line 676
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->onRequestFocusInDescendants(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 677
    .restart local v1       #took:Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto :goto_0

    .line 668
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetSize()V
    .locals 6

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    .line 418
    .local v2, right:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    .line 419
    .local v0, bottom:F
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 420
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 422
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    .line 423
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    add-float v2, v4, v5

    .line 425
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 426
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float v0, v4, v5

    goto :goto_0

    .line 429
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 430
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 431
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 651
    sparse-switch p1, :sswitch_data_0

    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :sswitch_0
    iget v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    .line 661
    iget v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    .line 662
    return-void

    .line 651
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 721
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 722
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    goto :goto_0

    .line 725
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 726
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "paddings"

    .prologue
    const/4 v6, 0x0

    .line 440
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 441
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 442
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 443
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 444
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 445
    .local v0, childPaddings:Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 446
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 450
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 451
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 455
    :goto_2
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 456
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 460
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 461
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 466
    :goto_4
    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 448
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 453
    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 458
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 463
    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 468
    .end local v0           #childPaddings:Landroid/graphics/Rect;
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_4
    return-void
.end method

.class public Lcom/android/mms/ui/TextSizeController;
.super Ljava/lang/Object;
.source "TextSizeController.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/TextSizeController"


# instance fields
.field private mBaseTextSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field private mTextViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/TextSizeController;->mTextViews:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/TextSizeController;->mBaseTextSizes:Ljava/util/List;

    .line 21
    invoke-virtual {p0}, Lcom/android/mms/ui/TextSizeController;->reset()V

    .line 22
    return-void
.end method

.method private addTextViewToControl(Landroid/widget/TextView;F)V
    .locals 2
    .parameter "textView"
    .parameter "baseTextSize"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/TextSizeController;->mTextViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/mms/ui/TextSizeController;->mTextViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/android/mms/ui/TextSizeController;->mBaseTextSizes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/mms/ui/TextSizeController;->mScale:F

    mul-float/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    :cond_0
    return-void
.end method

.method private applyScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 45
    const/high16 v0, 0x3f00

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x4000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 46
    iput p1, p0, Lcom/android/mms/ui/TextSizeController;->mScale:F

    .line 47
    invoke-virtual {p0}, Lcom/android/mms/ui/TextSizeController;->updateViews()V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public addTextViewToControl(Landroid/widget/TextView;)V
    .locals 1
    .parameter "textView"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/TextSizeController;->addTextViewToControl(Landroid/widget/TextView;F)V

    .line 32
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 61
    .local v0, alpha:F
    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 62
    const v0, 0x3f7851ec

    .line 67
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/TextSizeController;->mScale:F

    mul-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/TextSizeController;->applyScale(F)V

    .line 68
    const/4 v1, 0x1

    return v1

    .line 64
    :cond_0
    const v0, 0x3f83d70a

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 85
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 25
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/mms/ui/TextSizeController;->mScale:F

    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/TextSizeController;->mTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    iget-object v0, p0, Lcom/android/mms/ui/TextSizeController;->mBaseTextSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    return-void
.end method

.method public updateViews()V
    .locals 6

    .prologue
    .line 51
    iget-object v4, p0, Lcom/android/mms/ui/TextSizeController;->mTextViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 52
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 53
    iget-object v4, p0, Lcom/android/mms/ui/TextSizeController;->mTextViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, textView:Landroid/widget/TextView;
    iget v5, p0, Lcom/android/mms/ui/TextSizeController;->mScale:F

    iget-object v4, p0, Lcom/android/mms/ui/TextSizeController;->mBaseTextSizes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v2, v5, v4

    .line 55
    .local v2, textSize:F
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v2           #textSize:F
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

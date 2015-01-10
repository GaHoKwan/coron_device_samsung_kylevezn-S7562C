.class public Lcom/android/mms/ui/ToButtonLayout;
.super Landroid/widget/LinearLayout;
.source "ToButtonLayout.java"


# static fields
.field private static final mRecipientButtonHeight:I = 0x26


# instance fields
.field private mToButtonPanel:Landroid/widget/AbsoluteLayout;

.field private mToButtonPanelLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public addButton(Landroid/view/View;IIIF)V
    .locals 6
    .parameter "button"
    .parameter "width"
    .parameter "x"
    .parameter "y"
    .parameter "displayDensity"

    .prologue
    .line 27
    iget-object v3, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const/high16 v3, 0x4218

    mul-float/2addr v3, p5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 37
    .local v1, height:I
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p2, v1, p3, p4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 40
    .local v2, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "ToButtonLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addButton "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 64
    const v0, 0x7f0e0243

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanelLayout:Landroid/widget/LinearLayout;

    .line 65
    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanelLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public removeAllButtons()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanelLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    .line 53
    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanelLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.class public Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;
.super Landroid/widget/FrameLayout;
.source "AlphaTouchInterceptorOverlay.java"


# instance fields
.field private mAlpha:F

.field private mAlphaLayer:Landroid/view/View;

.field private mInterceptorLayer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlpha:F

    .line 51
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/ThemeUtils;->getSelectableItemBackground(Landroid/content/res/Resources$Theme;)I

    move-result v0

    .line 53
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    iget-object v1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    iput-object p0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    .line 57
    return-void
.end method


# virtual methods
.method public setOverlayClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 91
    return-void
.end method

.method public setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

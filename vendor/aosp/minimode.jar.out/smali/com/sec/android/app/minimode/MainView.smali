.class public Lcom/sec/android/app/minimode/MainView;
.super Landroid/widget/RelativeLayout;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;,
        Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;,
        Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainView"


# instance fields
.field private mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

.field private mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

.field private mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .line 39
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    invoke-interface {v0}, Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;->onAttachedToWindow()V

    .line 78
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 79
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    invoke-interface {v0}, Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;->onDetachedFromWindow()V

    .line 86
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 87
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;->onWindowFocusChanged(Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public setOnAttachedToWindowListener(Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .line 59
    return-void
.end method

.method public setOnDetachedFromWindowListener(Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .line 63
    return-void
.end method

.method public setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .line 55
    return-void
.end method

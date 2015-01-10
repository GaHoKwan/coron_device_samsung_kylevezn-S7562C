.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 326
    const/16 v2, 0x15

    if-ne p2, v2, :cond_0

    .line 327
    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 328
    .local v0, NextView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 334
    .end local v0           #NextView:Landroid/view/View;
    :goto_0
    return v1

    .line 330
    :cond_0
    const/16 v2, 0x16

    if-ne p2, v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setDefaultFocus()V

    goto :goto_0

    .line 334
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;
.super Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 8005
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 8008
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 8009
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 8010
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onSectionsChanged()V

    .line 8012
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 8016
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 8017
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 8018
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onSectionsChanged()V

    .line 8020
    :cond_0
    return-void
.end method

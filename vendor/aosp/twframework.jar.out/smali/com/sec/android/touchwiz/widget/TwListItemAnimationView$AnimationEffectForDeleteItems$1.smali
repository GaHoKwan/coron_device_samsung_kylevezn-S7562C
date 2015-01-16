.class Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

.field final synthetic val$this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->val$this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userOnApplyTransformation(F)V
    .locals 3
    .parameter "interpolatedTime"

    .prologue
    .line 1104
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userHideSelectedItems()V

    .line 1106
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v1

    .line 1107
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1108
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v2, v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userCalculateOffsetTransfer(IF)V

    .line 1107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1110
    :cond_0
    return-void
.end method

.method public userOnBeginAnimation()V
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userHideSelectedItems()V

    .line 1114
    return-void
.end method

.method public userOnCancelAnimation()V
    .locals 4

    .prologue
    .line 1129
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v1

    .line 1130
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userCalculateOffsetTransfer(IF)V

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->userOnEndAnimation()V

    .line 1135
    return-void
.end method

.method public userOnEndAnimation()V
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userHideSelectedItems()V

    .line 1119
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsTransferEffect:Z

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsTransferEffect:Z

    .line 1123
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userAfterAnimation()V

    .line 1125
    :cond_0
    return-void
.end method

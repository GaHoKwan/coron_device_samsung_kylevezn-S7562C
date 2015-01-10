.class public abstract Lcom/android/mms/animation/MsgBaseListAnimation;
.super Ljava/lang/Object;
.source "MsgBaseListAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;
    }
.end annotation


# instance fields
.field protected mAleadyShowAnimation:Z

.field protected mDeleteCheckBox:Landroid/widget/CheckBox;

.field private mHeightOfTitle:I

.field protected mHideSelectAllAnim:Landroid/view/animation/Animation;

.field protected mIsAnimating:Z

.field protected mListView:Landroid/widget/ListView;

.field protected mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

.field protected mSelectAllLayout:Landroid/widget/LinearLayout;

.field protected mShowSelectAllAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    .line 13
    iput-object v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    .line 14
    iput-object v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    .line 21
    iput-boolean v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mIsAnimating:Z

    .line 141
    iput-object v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    .line 24
    iput v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHeightOfTitle:I

    .line 25
    return-void
.end method


# virtual methods
.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHeightOfTitle:I

    return v0
.end method

.method public abstract hidecheckbox()V
.end method

.method public resetAnimationFlag()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    .line 137
    return-void
.end method

.method public setDeleteModeLayout(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "deleteModeAnimation"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mDeleteCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgBaseListAnimation;->setShowDeleteModeAnim(Landroid/view/animation/Animation;)V

    .line 48
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    .line 54
    :cond_1
    return-void
.end method

.method protected setHideDeleteModeAnim(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "hideSelectAllAnim"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    .line 90
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 91
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/animation/MsgBaseListAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/mms/animation/MsgBaseListAnimation$2;-><init>(Lcom/android/mms/animation/MsgBaseListAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 103
    return-void
.end method

.method public setLayout(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/ListView;)V
    .locals 0
    .parameter "selectAllLayout"
    .parameter "deleteCheckbox"
    .parameter "listView"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 38
    iput-object p2, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mDeleteCheckBox:Landroid/widget/CheckBox;

    .line 39
    iput-object p3, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mListView:Landroid/widget/ListView;

    .line 40
    return-void
.end method

.method protected setListItemSlideEffectDone()V
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    .line 133
    :cond_0
    return-void
.end method

.method public setNormalModeLayout(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "normalModeAnimation"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgBaseListAnimation;->setHideDeleteModeAnim(Landroid/view/animation/Animation;)V

    .line 60
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgBaseListAnimation;->resetAnimationFlag()V

    .line 67
    return-void
.end method

.method public setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V
    .locals 0
    .parameter "onDelAnimTotalListener"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    .line 146
    return-void
.end method

.method protected setShowDeleteModeAnim(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "showSelectAllAnim"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    .line 72
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 73
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/animation/MsgBaseListAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/mms/animation/MsgBaseListAnimation$1;-><init>(Lcom/android/mms/animation/MsgBaseListAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    return-void
.end method

.method public setTitleHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHeightOfTitle:I

    .line 29
    return-void
.end method

.method public showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "checkboxView"
    .parameter "checkBoxAnim"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/mms/animation/MsgBaseListAnimation$3;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/animation/MsgBaseListAnimation$3;-><init>(Lcom/android/mms/animation/MsgBaseListAnimation;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

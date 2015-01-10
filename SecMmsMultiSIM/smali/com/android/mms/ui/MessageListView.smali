.class public final Lcom/android/mms/ui/MessageListView;
.super Landroid/widget/ListView;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;,
        Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;,
        Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;,
        Lcom/android/mms/ui/MessageListView$TransDelAnim;,
        Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;
    }
.end annotation


# instance fields
.field private bLongPress:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

.field public mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

.field protected mIsAvailableUp:Z

.field protected mIsDeleteMsgAnimating:Z

.field private mKeyIsLongPressed:Z

.field protected mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    .line 58
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    .line 60
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 605
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    .line 75
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 77
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    .line 58
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    .line 60
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 605
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    .line 84
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 86
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private showContextPopup()V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 199
    .local v1, position:I
    if-gez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 203
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 205
    .local v0, bubbleLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0
.end method


# virtual methods
.method protected initDelAnimListView()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 94
    new-instance v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    .line 95
    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    .line 96
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 228
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 229
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_1

    .line 233
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 235
    .local v0, dp:Landroid/view/Display;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 236
    .local v1, lo:[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 240
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 241
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    .end local v0           #dp:Landroid/view/Display;
    .end local v1           #lo:[I
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 125
    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :cond_0
    const/16 v1, 0x42

    if-eq p1, v1, :cond_1

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 139
    .local v0, vibe:Landroid/os/Vibrator;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 140
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListView;->showContextPopup()V

    .line 141
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 143
    .end local v0           #vibe:Landroid/os/Vibrator;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 102
    packed-switch p1, :pswitch_data_0

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 104
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 105
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 109
    .local v1, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 112
    .local v0, clip:Landroid/text/ClipboardManager;
    iget-object v3, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/4 v3, 0x1

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportQwertKeypad()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    if-eqz v3, :cond_0

    .line 151
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 152
    const/4 v3, 0x1

    .line 187
    :goto_0
    return v3

    .line 153
    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x17

    if-eq p1, v3, :cond_1

    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 159
    .local v1, position:I
    if-gez v1, :cond_2

    move v3, v4

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 162
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_3

    .line 165
    :try_start_0
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    if-nez v3, :cond_3

    .line 169
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 170
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->performFailedIconClick()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1           #position:I
    .end local v2           #view:Lcom/android/mms/ui/MessageListItem;
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 172
    .restart local v1       #position:I
    .restart local v2       #view:Lcom/android/mms/ui/MessageListItem;
    :cond_4
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/android/mms/ui/MessageListItem;->setListView(Lcom/android/mms/ui/MessageListView;)V

    .line 173
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->userRelease()V

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 217
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 998
    if-lez p2, :cond_0

    .line 999
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1000
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 254
    return-void
.end method

.method public setOnDeleteMsgAnimation(Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;)V
    .locals 0
    .parameter "onDelAnimTotalListener"

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    .line 610
    return-void
.end method

.method public startDeleteMsgAnimation([I)V
    .locals 1
    .parameter "selectedIndexes"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->readyDeleteMsgAnimation([I)V

    .line 225
    :cond_0
    return-void
.end method

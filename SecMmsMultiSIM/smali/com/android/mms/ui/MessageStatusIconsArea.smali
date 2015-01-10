.class public Lcom/android/mms/ui/MessageStatusIconsArea;
.super Landroid/widget/LinearLayout;
.source "MessageStatusIconsArea.java"


# instance fields
.field private mSimIcon:Landroid/widget/ImageView;

.field private mTitleIcon01:Landroid/widget/ImageView;

.field private mTitleIcon02:Landroid/widget/ImageView;

.field private mTitleIcon03:Landroid/widget/ImageView;


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

.method private hideAllIcons()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public initForMessage(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 3
    .parameter "msgItem"
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/mms/ui/MessageStatusIconsArea;->hideAllIcons()V

    .line 40
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    .line 45
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageStatusIconsArea;->setLockIcon(Z)V

    .line 46
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageStatusIconsArea;->setFailedIcon(Z)V

    .line 47
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageStatusIconsArea;->setSimIcon(I)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p2, p3, p4, v2}, Lcom/android/mms/ui/MessageUtils;->isMessageLocked(JLjava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageStatusIconsArea;->setLockIcon(Z)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageStatusIconsArea;->setFailedIcon(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 29
    const v0, 0x7f0e00f0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon01:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon02:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon03:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f0e017f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mSimIcon:Landroid/widget/ImageView;

    .line 36
    return-void
.end method

.method public setFailedIcon(Z)V
    .locals 2
    .parameter "isFailed"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon01:Landroid/widget/ImageView;

    const v1, 0x7f020262

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon01:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon01:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLockIcon(Z)V
    .locals 2
    .parameter "isLocked"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon02:Landroid/widget/ImageView;

    const v1, 0x7f020263

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSimIcon(I)V
    .locals 3
    .parameter "simSlot"

    .prologue
    const/4 v2, 0x0

    .line 63
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mSimIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v2}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageStatusIconsArea;->mSimIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

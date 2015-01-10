.class public Lcom/android/mms/ui/MessageSkinBubbleItem;
.super Landroid/widget/LinearLayout;
.source "MessageSkinBubbleItem.java"


# static fields
.field private static final mReceivedBubbleIds:[I

.field private static final mSentBubbleIds:[I


# instance fields
.field private mBodyTextView:Landroid/widget/TextView;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

.field private mMessageSkinBubbleLayout:Landroid/widget/LinearLayout;

.field private mNewMsgDate:Landroid/widget/TextView;

.field private mSentMsgDate:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mReceivedBubbleIds:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentBubbleIds:[I

    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x97t 0x1t 0x2t 0x7ft
        0x9at 0x1t 0x2t 0x7ft
        0x9dt 0x1t 0x2t 0x7ft
        0xa0t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0x97t 0x1t 0x2t 0x7ft
    .end array-data

    .line 23
    :array_1
    .array-data 0x4
        0xa7t 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
        0xadt 0x1t 0x2t 0x7ft
        0xb0t 0x1t 0x2t 0x7ft
        0xb3t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageSkinFakeItem;)V
    .locals 9
    .parameter "messageItem"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 54
    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    .line 55
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageSkinFakeItem;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    .local v2, timeMillis:J
    const/16 v0, 0xb00

    .line 58
    .local v0, baseFormatFlags:I
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mContext:Landroid/content/Context;

    const/16 v6, 0xb01

    invoke-static {v5, v2, v3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, timeStr:Ljava/lang/String;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    iget-boolean v5, v5, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    if-eqz v5, :cond_0

    .line 62
    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageSkinBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v6, 0x7f020197

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mNewMsgDate:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mNewMsgDate:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageSkinBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v6, 0x7f0201a7

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgDate:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v5, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgDate:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getIsNew()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 78
    const v0, 0x7f0e017a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageSkinBubbleLayout:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f0e017c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f0e0161

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBodyTextView:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0e017b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgDate:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0e017d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mNewMsgDate:Landroid/widget/TextView;

    .line 83
    return-void
.end method

.method public setBubbleImage(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, resourceId:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lcom/android/mms/ui/MessageSkinBubbleItem;->mReceivedBubbleIds:[I

    aget v0, v1, p1

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    return-void

    .line 89
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentBubbleIds:[I

    aget v0, v1, p1

    goto :goto_0
.end method

.method public setMessageItem(Lcom/android/mms/ui/MessageSkinFakeItem;)V
    .locals 0
    .parameter "messageItem"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    .line 52
    return-void
.end method

.method public setShadowOnText(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x100

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mNewMsgDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2, v2, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2, v2, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mNewMsgDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

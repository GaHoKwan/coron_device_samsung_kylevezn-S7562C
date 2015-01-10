.class Lcom/android/mms/ui/MessageListItem$3;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->setCheckBoxPosition(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1669
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x30

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 1674
    const/4 v0, 0x0

    .line 1675
    .local v0, Linecount:I
    const/4 v1, 0x0

    .line 1676
    .local v1, imagecheck:Z
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    if-ne v3, v4, :cond_6

    .line 1677
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 1686
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1687
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1689
    const/4 v1, 0x1

    .line 1691
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1693
    add-int/lit8 v0, v0, 0x1

    .line 1695
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 1697
    add-int/lit8 v0, v0, 0x1

    .line 1699
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1702
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1705
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-ge v0, v7, :cond_5

    if-eqz v1, :cond_8

    .line 1706
    :cond_5
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1707
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1718
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1719
    return-void

    .line 1679
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 1681
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1683
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 1709
    .restart local v2       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    if-ne v0, v4, :cond_a

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 1712
    :cond_9
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1713
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 1715
    :cond_a
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

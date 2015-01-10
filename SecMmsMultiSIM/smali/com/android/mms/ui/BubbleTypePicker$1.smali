.class Lcom/android/mms/ui/BubbleTypePicker$1;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BubbleTypePicker;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BubbleTypePicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p2, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 100
    if-eqz p2, :cond_3

    .line 110
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #calls: Lcom/android/mms/ui/BubbleTypePicker;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    invoke-static {v1, p3, p1, p2}, Lcom/android/mms/ui/BubbleTypePicker;->access$000(Lcom/android/mms/ui/BubbleTypePicker;ILandroid/widget/AdapterView;Landroid/view/View;)V

    .line 111
    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->val$type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->val$type:I

    if-nez v1, :cond_4

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p3, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    .line 118
    :goto_0
    const/4 v0, 0x0

    .line 120
    .local v0, temp:Landroid/widget/HorizontalScrollView;
    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->val$type:I

    if-nez v1, :cond_5

    .line 121
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v0, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    .line 125
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 127
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 134
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iget-object v3, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->setBubbleImage(II)V

    .line 136
    .end local v0           #temp:Landroid/widget/HorizontalScrollView;
    :cond_3
    return-void

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p3, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    goto :goto_0

    .line 122
    .restart local v0       #temp:Landroid/widget/HorizontalScrollView;
    :cond_5
    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->val$type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v0, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    goto :goto_1

    .line 128
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 129
    invoke-virtual {v0, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->val$type:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #calls: Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V
    invoke-static {v0}, Lcom/android/mms/ui/BubbleTypePicker;->access$100(Lcom/android/mms/ui/BubbleTypePicker;)V

    .line 141
    :cond_1
    return-void
.end method

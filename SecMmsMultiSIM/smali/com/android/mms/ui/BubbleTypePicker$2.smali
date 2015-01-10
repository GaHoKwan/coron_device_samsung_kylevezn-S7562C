.class Lcom/android/mms/ui/BubbleTypePicker$2;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 143
    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p2, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 157
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #calls: Lcom/android/mms/ui/BubbleTypePicker;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    invoke-static {v0, p3, p1, p2}, Lcom/android/mms/ui/BubbleTypePicker;->access$000(Lcom/android/mms/ui/BubbleTypePicker;ILandroid/widget/AdapterView;Landroid/view/View;)V

    .line 159
    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->val$type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->val$type:I

    if-nez v0, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p3, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageBubbleActivity;->setBubbleImage(II)V

    .line 166
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$2;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p3, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    goto :goto_0
.end method

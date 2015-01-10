.class Lcom/android/mms/ui/BubbleTypePicker$4;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BubbleTypePicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$4;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$4;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$4;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v2, v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$4;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 201
    return-void
.end method

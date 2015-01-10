.class Lcom/android/mms/ui/MessageBubbleActivity$1;
.super Ljava/lang/Object;
.source "MessageBubbleActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBubbleActivity;->setWindowResizingEventHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBubbleActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBubbleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/mms/ui/MessageBubbleActivity$1;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 442
    iget-object v6, p0, Lcom/android/mms/ui/MessageBubbleActivity$1;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    const v7, 0x7f0e0137

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 443
    .local v3, historyDisplayArea:Landroid/view/View;
    iget-object v6, p0, Lcom/android/mms/ui/MessageBubbleActivity$1;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    const v7, 0x7f0e012f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 445
    .local v2, history:Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 446
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 447
    .local v0, currentHeight:I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 449
    .local v1, currentWidth:I
    iget-object v6, p0, Lcom/android/mms/ui/MessageBubbleActivity$1;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 450
    .local v5, minWidth:I
    iget-object v6, p0, Lcom/android/mms/ui/MessageBubbleActivity$1;->this$0:Lcom/android/mms/ui/MessageBubbleActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 452
    .local v4, minHeight:I
    if-lt v1, v5, :cond_1

    if-lt v0, v4, :cond_1

    .line 453
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .end local v0           #currentHeight:I
    .end local v1           #currentWidth:I
    .end local v4           #minHeight:I
    .end local v5           #minWidth:I
    :cond_0
    :goto_0
    return-void

    .line 455
    .restart local v0       #currentHeight:I
    .restart local v1       #currentWidth:I
    .restart local v4       #minHeight:I
    .restart local v5       #minWidth:I
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

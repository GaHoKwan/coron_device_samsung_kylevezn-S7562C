.class Lcom/samsung/mms/location/LocationMapActivity$9;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1802
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 1805
    .local v0, clearTextBoundary:I
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1810
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1826
    :cond_0
    :goto_0
    return v4

    .line 1812
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1814
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 1818
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V
    invoke-static {v1, v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$1400(Lcom/samsung/mms/location/LocationMapActivity;I)V

    goto :goto_0

    .line 1822
    :cond_2
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V
    invoke-static {v1, v5}, Lcom/samsung/mms/location/LocationMapActivity;->access$1400(Lcom/samsung/mms/location/LocationMapActivity;I)V

    goto :goto_0
.end method

.class Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1982
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 6
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 1992
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1994
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1995
    .local v1, width:I
    int-to-float v2, p1

    add-float/2addr v2, p2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1996
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1997
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 1985
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #calls: Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    invoke-static {v1, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1600(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    .line 1986
    .local v0, actionView:Lcom/android/contacts/quickcontact/CheckableImageView;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v2, v5}, Landroid/widget/HorizontalScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1988
    return-void
.end method

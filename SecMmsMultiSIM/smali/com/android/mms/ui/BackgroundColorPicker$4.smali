.class Lcom/android/mms/ui/BackgroundColorPicker$4;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;

.field final synthetic val$grid:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/widget/GridView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput-object p2, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->val$grid:Landroid/widget/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v6, 0x14

    const/4 v3, 0x0

    .line 236
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    if-ne p2, v6, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->val$grid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->val$grid:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    .line 237
    const/4 v3, 0x1

    .line 250
    :cond_0
    :goto_0
    return v3

    .line 241
    :cond_1
    const/16 v4, 0x13

    if-eq p2, v4, :cond_2

    if-ne p2, v6, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->val$grid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->val$grid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 243
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 244
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->val$grid:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 245
    .local v2, imageView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->val$grid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$4;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput v3, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    goto :goto_0
.end method

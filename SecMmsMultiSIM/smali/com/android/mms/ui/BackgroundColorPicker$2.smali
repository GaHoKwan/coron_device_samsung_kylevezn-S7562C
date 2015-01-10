.class Lcom/android/mms/ui/BackgroundColorPicker$2;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 177
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput-object p2, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->val$grid:Landroid/widget/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const v9, 0x7f0201b9

    const v7, 0x7f0201b8

    const/4 v8, 0x0

    .line 179
    if-eqz p2, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->val$grid:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-eqz v6, :cond_4

    .line 180
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 181
    .local v5, imageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    if-eqz p3, :cond_1

    .line 183
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #calls: Lcom/android/mms/ui/BackgroundColorPicker;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    invoke-static {v6, p3, p1, p2}, Lcom/android/mms/ui/BackgroundColorPicker;->access$000(Lcom/android/mms/ui/BackgroundColorPicker;ILandroid/widget/AdapterView;Landroid/view/View;)V

    .line 202
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 203
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v6, v6, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v7

    invoke-virtual {v6, v7, v8}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 214
    .end local v5           #imageView:Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    .line 186
    .restart local v5       #imageView:Landroid/widget/ImageView;
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 188
    .local v2, density:F
    move-object v3, p1

    .line 189
    .local v3, group:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 190
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 191
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #imageView:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 192
    .restart local v5       #imageView:Landroid/widget/ImageView;
    const/high16 v6, 0x3f80

    mul-float/2addr v6, v2

    float-to-int v0, v6

    .line 193
    .local v0, borderSize:I
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 194
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 197
    .end local v0           #borderSize:I
    :cond_2
    const/high16 v6, 0x4000

    mul-float/2addr v6, v2

    float-to-int v0, v6

    .line 198
    .restart local v0       #borderSize:I
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 199
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 204
    .end local v0           #borderSize:I
    .end local v1           #count:I
    .end local v2           #density:F
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v4           #i:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 205
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v6, v6, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v8, v8}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_1

    .line 208
    .end local v5           #imageView:Landroid/widget/ImageView;
    :cond_4
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->val$grid:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-nez v6, :cond_0

    .line 209
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 210
    .restart local v5       #imageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #imageView:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 212
    .restart local v5       #imageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker$2;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

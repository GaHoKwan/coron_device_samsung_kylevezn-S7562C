.class Lcom/samsung/mms/location/LocationMapActivity$11;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 1874
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1892
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1895
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1877
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1880
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1881
    .local v0, x:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1882
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1889
    .end local v0           #x:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 1884
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1887
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

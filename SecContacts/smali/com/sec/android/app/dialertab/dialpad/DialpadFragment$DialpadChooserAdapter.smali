.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialpadChooserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
    }
.end annotation


# instance fields
.field private mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 9328
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 9326
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 9330
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 9336
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f0d00b6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02051a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 9343
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f0d00b7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020519

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x66

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 9350
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f0d00b8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020518

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x67

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 9355
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 9358
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 9365
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 9372
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 9381
    if-nez p2, :cond_0

    .line 9382
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400b8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 9385
    :cond_0
    const v2, 0x7f090029

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9386
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9387
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11004b

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9389
    const v2, 0x7f090024

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 9390
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 9392
    return-object p2
.end method

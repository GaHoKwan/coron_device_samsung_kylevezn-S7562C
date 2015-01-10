.class public Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountImageAdapter"
.end annotation


# instance fields
.field private mAccountIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4381
    .local p3, accountIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4382
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;

    .line 4383
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    .line 4384
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 4387
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 4391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 4395
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 4401
    if-nez p2, :cond_0

    .line 4402
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4403
    .local v0, image:Landroid/widget/ImageView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 4404
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getAccountIconSize()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getAccountIconSize()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4406
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4407
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 4412
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4413
    return-object v0

    .end local v0           #image:Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .line 4409
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #image:Landroid/widget/ImageView;
    goto :goto_0
.end method

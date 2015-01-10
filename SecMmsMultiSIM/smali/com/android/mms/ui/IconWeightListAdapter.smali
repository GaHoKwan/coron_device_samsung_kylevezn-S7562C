.class public Lcom/android/mms/ui/IconWeightListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconWeightListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final mResource:I = 0x7f030043


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    const v0, 0x7f030043

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/IconWeightListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 53
    if-nez p2, :cond_0

    .line 54
    iget-object v4, p0, Lcom/android/mms/ui/IconWeightListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030043

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, view:Landroid/view/View;
    :goto_0
    const v4, 0x7f0e010b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v4, 0x7f0e00e4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 66
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;->getResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;->getResource()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :goto_1
    return-object v3

    .line 56
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v1           #image:Landroid/widget/ImageView;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 72
    .restart local v0       #appIcon:Landroid/graphics/drawable/Drawable;
    .restart local v1       #image:Landroid/widget/ImageView;
    .restart local v2       #text:Landroid/widget/TextView;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

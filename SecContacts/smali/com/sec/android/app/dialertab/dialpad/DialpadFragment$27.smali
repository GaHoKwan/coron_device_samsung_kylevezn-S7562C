.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$27;
.super Landroid/widget/ArrayAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onCreateSimSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 8723
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$27;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput-object p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$27;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "simSelectView"
    .parameter "parent"

    .prologue
    .line 8727
    if-nez p2, :cond_0

    .line 8728
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$27;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v4, 0x10900d4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8733
    :cond_0
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8734
    .local v1, text1:Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8735
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8737
    .local v0, icon:Landroid/widget/ImageView;
    if-nez p1, :cond_1

    .line 8738
    const v3, 0x7f0d040e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 8739
    const v3, 0x7f0202bd

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8744
    :goto_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8746
    return-object p2

    .line 8741
    :cond_1
    const v3, 0x7f0d040f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 8742
    const v3, 0x7f0202c2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

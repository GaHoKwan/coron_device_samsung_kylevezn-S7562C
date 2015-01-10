.class Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressAdapter"
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
.field mAddressArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflate:Landroid/view/LayoutInflater;

.field mNameArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, nameArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, addressArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 16636
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 16637
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 16631
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;->mNameArray:Ljava/util/List;

    .line 16632
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;->mAddressArray:Ljava/util/List;

    .line 16638
    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;->mNameArray:Ljava/util/List;

    .line 16639
    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;->mAddressArray:Ljava/util/List;

    .line 16640
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;->mInflate:Landroid/view/LayoutInflater;

    .line 16641
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 16645
    if-nez p2, :cond_0

    .line 16646
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;->mInflate:Landroid/view/LayoutInflater;

    const v3, 0x7f03000b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 16649
    :cond_0
    const v2, 0x7f0e0020

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 16650
    .local v1, name:Landroid/widget/TextView;
    const v2, 0x7f0e0021

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16651
    .local v0, address:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;->mNameArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16652
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AddressAdapter;->mAddressArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16653
    return-object p2
.end method

.class public Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HoverRecipientListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/data/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field private layout:I

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mContact:Lcom/android/mms/data/Contact;

.field private mContext:Landroid/content/Context;

.field private mRecipientListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16583
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 16584
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 16585
    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->layout:I

    .line 16586
    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    .line 16588
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 16590
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->mContext:Landroid/content/Context;

    .line 16591
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

    .line 16595
    move-object v1, p2

    .line 16596
    .local v1, recipientListItem:Landroid/view/View;
    if-nez v1, :cond_0

    .line 16597
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 16601
    :cond_0
    const v2, 0x7f0200fe

    .line 16602
    .local v2, typeImage:I
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    .line 16604
    const v3, 0x7f0e0012

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16607
    .local v0, nameOrNumber:Landroid/widget/TextView;
    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 16609
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16610
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16617
    :goto_0
    return-object v1

    .line 16613
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContactInfo(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "contact"

    .prologue
    .line 16626
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    .line 16628
    return-void
.end method

.method public setContactInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 16621
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    .line 16623
    return-void
.end method

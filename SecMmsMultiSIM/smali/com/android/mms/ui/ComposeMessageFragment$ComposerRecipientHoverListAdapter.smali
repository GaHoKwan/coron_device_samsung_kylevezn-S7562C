.class Lcom/android/mms/ui/ComposeMessageFragment$ComposerRecipientHoverListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerRecipientHoverListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/RecipientPerson;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientPerson;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10275
    .local p4, Recipient:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/RecipientPerson;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerRecipientHoverListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 10276
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 10277
    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerRecipientHoverListAdapter;->mResource:I

    .line 10278
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerRecipientHoverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 10279
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 10285
    if-nez p2, :cond_0

    .line 10286
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerRecipientHoverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerRecipientHoverListAdapter;->mResource:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 10289
    :cond_0
    const v4, 0x7f0e00c5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10290
    .local v0, attachmentName:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/RecipientPerson;

    .line 10292
    .local v1, recipient:Lcom/android/mms/ui/RecipientPerson;
    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientPerson;->getName()Ljava/lang/String;

    move-result-object v2

    .line 10295
    .local v2, recipient_name:Ljava/lang/String;
    const v3, 0x7f0200fe

    .line 10297
    .local v3, typeImage:I
    invoke-virtual {v0, v3, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10298
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10299
    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 10300
    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 10302
    return-object p2
.end method

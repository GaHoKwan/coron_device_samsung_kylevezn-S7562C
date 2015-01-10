.class public Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;
.super Landroid/app/Fragment;
.source "SendContactOptionFragment.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setIsRootScreen(Z)V

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 49
    const v2, 0x7f040156

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;->mView:Landroid/view/View;

    .line 50
    iget-object v2, p0, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;->mView:Landroid/view/View;

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 51
    .local v1, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_0

    .line 52
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 55
    iget-object v2, p0, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;->mView:Landroid/view/View;

    const v3, 0x7f090315

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    .local v0, button:Landroid/widget/Button;
    const v2, 0x7f0d01dc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    new-instance v2, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment$1;-><init>(Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;->mView:Landroid/view/View;

    return-object v2
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setIsRootScreen(Z)V

    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 70
    return-void
.end method

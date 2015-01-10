.class public Lcom/sec/android/app/contacts/activities/ServiceNumbers;
.super Lcom/android/contacts/ContactsActivity;
.source "ServiceNumbers.java"


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 67
    instance-of v0, p1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .line 70
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x4

    .line 48
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 54
    :cond_0
    const v1, 0x7f0d0292

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 55
    const v1, 0x7f040159

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 56
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    if-nez v1, :cond_1

    .line 57
    new-instance v1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090161

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 63
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

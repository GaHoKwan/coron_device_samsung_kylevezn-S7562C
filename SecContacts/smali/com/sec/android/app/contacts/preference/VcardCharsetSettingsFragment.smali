.class public Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;
.super Landroid/app/Fragment;
.source "VcardCharsetSettingsFragment.java"


# instance fields
.field private helpTextView:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private titleView:Landroid/widget/TextView;

.field private viewForHelp:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setIsRootScreen(Z)V

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 42
    const v3, 0x7f040137

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->viewForHelp:Landroid/view/View;

    .line 43
    iget-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->viewForHelp:Landroid/view/View;

    const v4, 0x7f0902d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->titleView:Landroid/widget/TextView;

    .line 44
    iget-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->viewForHelp:Landroid/view/View;

    const/high16 v4, 0x101

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->helpTextView:Landroid/widget/TextView;

    .line 45
    iget-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->viewForHelp:Landroid/view/View;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->listView:Landroid/widget/ListView;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v3, "EUC-KR"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x109000f

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 54
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "characterset"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 59
    .local v2, position:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment$1;-><init>(Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    iget-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 67
    iget-object v3, p0, Lcom/sec/android/app/contacts/preference/VcardCharsetSettingsFragment;->viewForHelp:Landroid/view/View;

    return-object v3
.end method

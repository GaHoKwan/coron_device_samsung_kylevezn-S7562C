.class public Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;
.super Landroid/app/DialogFragment;
.source "AddToRejectListTipsDialogFragment.java"


# instance fields
.field mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field public mContactUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static neverShowAddToRejectListTipsAgain(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showAddToRejectListTips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method

.method public static shouldShowAddToRejectListTips(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showAddToRejectListTips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 2
    .parameter "fragmentManager"
    .parameter "activity"
    .parameter "contactUri"
    .parameter "isAdd"

    .prologue
    .line 122
    new-instance v0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;-><init>()V

    .line 123
    .local v0, fragment:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;
    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->setContactUri(Landroid/net/Uri;)V

    .line 125
    if-eqz p3, :cond_1

    .line 127
    const-string v1, "AddToRejectListTipsDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    const-string v1, "AddToRejectListTipsDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->addToRejectList(Landroid/app/Activity;Z)V

    goto :goto_0
.end method


# virtual methods
.method public addToRejectList(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isAdd"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    invoke-static {p1, v0, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .line 118
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, view:Landroid/view/View;
    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 73
    if-eqz p1, :cond_1

    .line 74
    const-string v3, "isCheckBoxChecked"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 80
    :goto_0
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    .line 85
    :goto_1
    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, doNotShowAgainContainer:Landroid/view/View;
    new-instance v3, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0325

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 109
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0

    .line 77
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #doNotShowAgainContainer:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "isCheckBoxChecked"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "contactUri"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    .line 114
    return-void
.end method

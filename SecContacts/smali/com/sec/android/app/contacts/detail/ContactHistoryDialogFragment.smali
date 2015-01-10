.class public Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactHistoryDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static alertDialog:Landroid/app/AlertDialog;


# instance fields
.field private mDialogCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mShowNeverAgain:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mShowNeverAgain:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mShowNeverAgain:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mShowNeverAgain:Z

    return p1
.end method

.method public static dismissDialog()V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 122
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragmentManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, targetFragment:Landroid/app/Fragment;,"TF;"
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;-><init>()V

    .line 59
    .local v0, instance:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 60
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04006d

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, contents:Landroid/view/View;
    const v3, 0x7f0901ad

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 69
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 85
    :cond_0
    const v3, 0x7f0901ac

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f0d02d3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 91
    const v3, 0x7f0d02d4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 116
    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->alertDialog:Landroid/app/AlertDialog;

    return-object v3
.end method

.class public Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimInitializingDialogFragment.java"


# static fields
.field private static mTitleStringResId:I


# instance fields
.field private final TITLE_RES_KEY:Ljava/lang/String;

.field private mTitleRetainResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleStringResId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleRetainResId:I

    .line 43
    const-string v0, "mTitleRetainResId"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->TITLE_RES_KEY:Ljava/lang/String;

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;I)V
    .locals 2
    .parameter "fragmentManager"
    .parameter "titleStringResId"

    .prologue
    .line 96
    sput p1, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleStringResId:I

    .line 97
    new-instance v0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;-><init>()V

    .line 98
    .local v0, fragment:Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;
    const-string v1, "SimInitializingDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0d0416

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    new-instance v0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;)V

    .line 53
    .local v0, positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    if-eqz p1, :cond_2

    .line 54
    const-string v3, "mTitleRetainResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleRetainResId:I

    .line 59
    :goto_0
    const/4 v1, -0x1

    .line 60
    .local v1, stringResId:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    const v1, 0x7f0d0248

    .line 68
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    :cond_0
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v8, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, tempText:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v8, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 76
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleRetainResId:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 56
    .end local v1           #stringResId:I
    .end local v2           #tempText:Ljava/lang/String;
    :cond_2
    sget v3, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleStringResId:I

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleRetainResId:I

    goto/16 :goto_0

    .line 65
    .restart local v1       #stringResId:I
    :cond_3
    const v1, 0x7f0d0247

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "mTitleRetainResId"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleRetainResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    return-void
.end method

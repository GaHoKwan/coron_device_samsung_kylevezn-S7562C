.class public Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;
.super Landroid/app/Fragment;
.source "VerizonBackupAssistantFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->mActivity:Landroid/app/Activity;

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040187

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, view:Landroid/view/View;
    const v3, 0x7f090357

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, startButton:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 54
    new-instance v3, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    const v3, 0x7f090358

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, notNowButton:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 75
    new-instance v3, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_1
    return-object v2
.end method

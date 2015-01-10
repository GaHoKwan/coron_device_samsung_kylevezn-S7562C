.class public Lcom/android/mms/ui/CMASUserPromptDialog;
.super Landroid/app/Activity;
.source "CMASUserPromptDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMASUserPromptDialog/Dialog"


# instance fields
.field private mStatusbarManager:Landroid/app/StatusBarManager;

.field private sDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CMASUserPromptDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->launchCmasSetting()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mms/ui/CMASUserPromptDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private launchCmasSetting()V
    .locals 5

    .prologue
    .line 103
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.CMASPreferenceActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 134
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 135
    .local v0, mStatusbarManager:Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 137
    const-string v1, "CMASUserPromptDialog/Dialog"

    const-string v2, "dismissDialog"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 47
    const-string v2, "CMASUserPromptDialog/Dialog"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f020371

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 56
    .local v1, view:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 58
    const v2, 0x7f0e0063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a0509

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a050a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v2, 0x7f0a0508

    new-instance v3, Lcom/android/mms/ui/CMASUserPromptDialog$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/CMASUserPromptDialog$1;-><init>(Lcom/android/mms/ui/CMASUserPromptDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    const v2, 0x7f0a011e

    new-instance v3, Lcom/android/mms/ui/CMASUserPromptDialog$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/CMASUserPromptDialog$2;-><init>(Lcom/android/mms/ui/CMASUserPromptDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    new-instance v2, Lcom/android/mms/ui/CMASUserPromptDialog$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/CMASUserPromptDialog$3;-><init>(Lcom/android/mms/ui/CMASUserPromptDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    .line 93
    iget-object v2, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    .line 97
    iget-object v2, p0, Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->dismissDialog()V

    .line 124
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 117
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASUserPromptDialog;->dismissDialog()V

    .line 118
    return-void
.end method

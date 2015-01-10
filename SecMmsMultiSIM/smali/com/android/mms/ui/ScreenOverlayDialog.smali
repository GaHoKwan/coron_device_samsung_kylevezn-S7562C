.class public Lcom/android/mms/ui/ScreenOverlayDialog;
.super Landroid/app/Dialog;
.source "ScreenOverlayDialog.java"


# static fields
.field public static final OVERLAY_COMPOSE_DIALOG_PERF:Ljava/lang/String; = "OverlayComposeDialogOnOff"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mConversationComposer:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 6
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 22
    const v4, 0x1030010

    invoke-direct {p0, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p2, p0, Lcom/android/mms/ui/ScreenOverlayDialog;->mActivity:Landroid/app/Activity;

    .line 25
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 26
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030076

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 27
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0e01e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 28
    .local v0, helpCheck:Landroid/widget/CheckBox;
    const v4, 0x7f0e01e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 29
    .local v2, okBtn:Landroid/widget/Button;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 31
    new-instance v4, Lcom/android/mms/ui/ScreenOverlayDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/ui/ScreenOverlayDialog$1;-><init>(Lcom/android/mms/ui/ScreenOverlayDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    new-instance v4, Lcom/android/mms/ui/ScreenOverlayDialog$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ScreenOverlayDialog$2;-><init>(Lcom/android/mms/ui/ScreenOverlayDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ScreenOverlayDialog;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/mms/ui/ScreenOverlayDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

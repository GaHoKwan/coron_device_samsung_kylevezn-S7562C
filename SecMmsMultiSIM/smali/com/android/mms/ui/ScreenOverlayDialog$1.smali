.class Lcom/android/mms/ui/ScreenOverlayDialog$1;
.super Ljava/lang/Object;
.source "ScreenOverlayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ScreenOverlayDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ScreenOverlayDialog;

.field final synthetic val$helpCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ScreenOverlayDialog;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/mms/ui/ScreenOverlayDialog$1;->this$0:Lcom/android/mms/ui/ScreenOverlayDialog;

    iput-object p2, p0, Lcom/android/mms/ui/ScreenOverlayDialog$1;->val$helpCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/ScreenOverlayDialog$1;->this$0:Lcom/android/mms/ui/ScreenOverlayDialog;

    #getter for: Lcom/android/mms/ui/ScreenOverlayDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ScreenOverlayDialog;->access$000(Lcom/android/mms/ui/ScreenOverlayDialog;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "OverlayComposeDialogOnOff"

    iget-object v2, p0, Lcom/android/mms/ui/ScreenOverlayDialog$1;->val$helpCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->setCheckedOnOff(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 36
    iget-object v0, p0, Lcom/android/mms/ui/ScreenOverlayDialog$1;->this$0:Lcom/android/mms/ui/ScreenOverlayDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 37
    return-void
.end method

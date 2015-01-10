.class final Lcom/android/mms/ui/ComposeDeleteMessage$1;
.super Ljava/lang/Object;
.source "ComposeDeleteMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$1;->val$listener:Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeDeleteMessage$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage$1;->val$listener:Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 265
    return-void
.end method

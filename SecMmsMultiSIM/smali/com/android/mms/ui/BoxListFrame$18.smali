.class Lcom/android/mms/ui/BoxListFrame$18;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;ZZLandroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2151
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$18;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iput-object p2, p0, Lcom/android/mms/ui/BoxListFrame$18;->val$listener:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iput-object p3, p0, Lcom/android/mms/ui/BoxListFrame$18;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$18;->val$listener:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$18;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 2154
    return-void
.end method

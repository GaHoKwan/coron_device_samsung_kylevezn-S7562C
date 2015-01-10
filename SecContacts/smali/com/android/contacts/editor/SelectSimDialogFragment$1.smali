.class Lcom/android/contacts/editor/SelectSimDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectSimDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/SelectSimDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/SelectSimDialogFragment;

.field final synthetic val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SelectSimDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/contacts/editor/SelectSimDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectSimDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/SelectSimDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    iget-object v0, p0, Lcom/android/contacts/editor/SelectSimDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectSimDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/SelectSimDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    #calls: Lcom/android/contacts/editor/SelectSimDialogFragment;->onSimSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/SelectSimDialogFragment;->access$000(Lcom/android/contacts/editor/SelectSimDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 113
    return-void
.end method

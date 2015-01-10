.class Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "DeleteContactsConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;->onDoneSelected()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->access$200(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->start(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 89
    return-void
.end method

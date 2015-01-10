.class Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;
.super Ljava/lang/Object;
.source "SIMManagementDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    packed-switch v0, :pswitch_data_0

    .line 158
    const-string v2, "SIMManagementDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 162
    :goto_0
    if-eqz v0, :cond_0

    .line 163
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 165
    :cond_0
    return-void

    .line 129
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    #calls: Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->handleImportRequest(I)Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->access$000(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;I)Z

    move-result v0

    goto :goto_0

    .line 136
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v2, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string v2, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const-string v2, "CONTACT_SELECTION_TITLE"

    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    const v4, 0x7f0d03cc

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 142
    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.DELETE_SIM_CONTACT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v2, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    const-string v2, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    const-string v2, "CONTACT_SELECTION_TITLE"

    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    const v4, 0x7f0d03cd

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 153
    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x7f0d03cb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

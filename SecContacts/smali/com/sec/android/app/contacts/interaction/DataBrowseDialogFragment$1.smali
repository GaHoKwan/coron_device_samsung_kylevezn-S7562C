.class Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;
.super Ljava/lang/Object;
.source "DataBrowseDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;

    .line 126
    .local v1, target:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mPartition:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$200(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Z

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$300(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;->onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 127
    return-void
.end method

.class Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment$1;
.super Ljava/lang/Object;
.source "PhoneNumberBrowseDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .line 93
    .local v0, target:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->access$000(Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;)Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startCallIntentAndFinishActivity(Ljava/lang/String;)V

    .line 94
    return-void
.end method

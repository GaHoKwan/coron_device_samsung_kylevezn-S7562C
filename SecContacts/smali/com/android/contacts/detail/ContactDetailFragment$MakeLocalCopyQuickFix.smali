.class Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;
.super Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeLocalCopyQuickFix"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 4528
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4528
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 4553
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->isApplicable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4585
    :cond_0
    :goto_0
    return-void

    .line 4557
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryExportSupport()I

    move-result v1

    .line 4558
    .local v1, exportSupport:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4560
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v3, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryAccountName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #calls: Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 4565
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 4567
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4568
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #calls: Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v2, v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 4574
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 4575
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountWithDataSet;

    #calls: Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 4579
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v4, 0x7f0d0143

    sget-object v5, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    .line 4558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4548
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d01cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplicable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4532
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4542
    :cond_0
    :goto_0
    return v0

    .line 4535
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4538
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryExportSupport()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4542
    const/4 v0, 0x1

    goto :goto_0
.end method

.class Lcom/android/contacts/activities/ContactEditorActivity$1;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 688
    return-void
.end method

.method public onContactSplit(Landroid/net/Uri;)V
    .locals 1
    .parameter "newLookupUri"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 683
    return-void
.end method

.method public onCustomCreateContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 5
    .parameter "account"
    .parameter "intentExtras"

    .prologue
    .line 713
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 715
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 718
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 719
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    if-eqz p2, :cond_0

    .line 724
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 726
    :cond_0
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v3, "data_set"

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const/high16 v3, 0x280

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 731
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 732
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 733
    return-void
.end method

.method public onCustomEditContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 5
    .parameter "account"
    .parameter "rawContactUri"
    .parameter "intentExtras"
    .parameter "redirect"

    .prologue
    .line 738
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 740
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 743
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 744
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 748
    if-eqz p3, :cond_0

    .line 749
    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 752
    :cond_0
    if-eqz p4, :cond_1

    .line 753
    const/high16 v3, 0x280

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 755
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 756
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 760
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "contactLookupUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 694
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x280

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 696
    const-string v1, "addToDefaultDirectory"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 707
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 708
    return-void
.end method

.method public onReverted()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 663
    return-void
.end method

.method public onSaveFinished(Landroid/content/Intent;)V
    .locals 2
    .parameter "resultIntent"

    .prologue
    .line 669
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    #getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mRedirectToPeopleActivity:Z
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    const-string v0, "fromPeopleActivity"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    #getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 677
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 678
    return-void

    .line 673
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 674
    :cond_3
    if-eqz p1, :cond_1

    .line 675
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.class Lcom/android/contacts/editor/ContactEditorFragment$11$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

.field final synthetic val$adapter:Lcom/android/contacts/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$11;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1722
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v7, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    if-eqz v7, :cond_0

    .line 1723
    sget-object v7, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1724
    const/4 v7, 0x0

    sput-object v7, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    .line 1726
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v6

    .line 1727
    .local v6, newAccount:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1853
    :cond_1
    :goto_0
    return-void

    .line 1732
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    .line 1733
    .local v5, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v7, "vnd.sec.contact.sim"

    iget-object v8, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->isDualStandbySim2(Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1300(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1735
    :cond_3
    const/4 v2, 0x0

    .line 1736
    .local v2, isSimEnabled:Z
    const/4 v4, 0x0

    .line 1737
    .local v4, isSimReady:Z
    const/4 v3, 0x0

    .line 1738
    .local v3, isSimFull:Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1739
    :cond_4
    iget-object v7, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 1740
    iget-object v7, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v4

    .line 1741
    iget-object v7, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v3

    .line 1748
    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 1750
    if-eqz v3, :cond_9

    .line 1751
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1754
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1755
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d0248

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1758
    :cond_5
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "onItemClick : isSimFull!!!!!"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d00ab

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1762
    :cond_6
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1763
    :cond_7
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1764
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const v9, 0x7f0d0416

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v12, v12, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v12

    iget-object v13, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1768
    :cond_8
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "onItemClick : isSimFull!!!!!"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const v9, 0x7f0d0415

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v12, v12, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v12

    iget-object v13, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1785
    :cond_9
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 1787
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1790
    :cond_a
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v8

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V
    invoke-static {v7, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1500(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/View;)V

    .line 1791
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v9, v9, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v7, v8, v9, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1600(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_0

    .line 1794
    :cond_b
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v9, v9, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-static {v7, v8, v9, v6}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_0

    .line 1832
    .end local v1           #accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    .end local v2           #isSimEnabled:Z
    .end local v3           #isSimFull:Z
    .end local v4           #isSimReady:Z
    :cond_c
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 1834
    .restart local v1       #accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;
    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 1836
    :cond_d
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v8

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V
    invoke-static {v7, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1500(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/View;)V

    .line 1837
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v9, v9, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v7, v8, v9, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1600(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_0

    .line 1841
    :cond_e
    const-string v7, "vnd.sec.contact.sim"

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "vnd.sec.contact.sim2"

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1843
    :cond_f
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v8

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V
    invoke-static {v7, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1500(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/View;)V

    .line 1844
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v9, v9, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v7, v8, v9, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1600(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_0

    .line 1847
    :cond_10
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v8, v8, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v9, v9, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-static {v7, v8, v9, v6}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_0
.end method

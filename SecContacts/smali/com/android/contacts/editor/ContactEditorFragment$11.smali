.class Lcom/android/contacts/editor/ContactEditorFragment$11;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field final synthetic val$currentState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/AccountWithDataSet;Landroid/view/View;Lcom/android/contacts/model/EntityDelta;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1691
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$anchorView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 1694
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1857
    :cond_0
    :goto_0
    return-void

    .line 1696
    :cond_1
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_3

    .line 1697
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1699
    :try_start_0
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    :cond_2
    :goto_1
    sput-object v6, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    .line 1706
    :cond_3
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    .line 1707
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1200(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    :goto_2
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v0, v4, v3, v5}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 1710
    .local v0, adapter:Lcom/android/contacts/util/AccountsListAdapter;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1712
    .local v2, offset:I
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$anchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1713
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 1714
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$anchorView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1715
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1716
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1717
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1718
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    new-instance v4, Lcom/android/contacts/editor/ContactEditorFragment$11$1;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment$11$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$11;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1855
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1856
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    goto/16 :goto_0

    .line 1700
    .end local v0           #adapter:Lcom/android/contacts/util/AccountsListAdapter;
    .end local v2           #offset:I
    :catch_0
    move-exception v1

    .line 1701
    .local v1, exception:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error with dismiss account switcher"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1707
    .end local v1           #exception:Ljava/lang/IllegalArgumentException;
    :cond_5
    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    goto :goto_2
.end method

.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .parameter "queryText"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 835
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    :goto_0
    return v0

    .line 839
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;)V

    .line 841
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object p1, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-boolean v0, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 845
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchMode(Z)V

    .line 850
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, p1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 852
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 853
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-boolean v1, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 856
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchMode(Z)V

    :cond_2
    move v0, v1

    .line 859
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter "queryText"

    .prologue
    .line 867
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 870
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 871
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 875
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

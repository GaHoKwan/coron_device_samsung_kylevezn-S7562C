.class Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;
.super Ljava/lang/Object;
.source "InteractionGroupMemberPickerFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSearchQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

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

    .line 394
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    :goto_0
    return v0

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$302(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSearchMode(Z)V

    .line 405
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSearchMode(Z)V

    :cond_2
    move v0, v1

    .line 411
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter "queryText"

    .prologue
    .line 419
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 422
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 427
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

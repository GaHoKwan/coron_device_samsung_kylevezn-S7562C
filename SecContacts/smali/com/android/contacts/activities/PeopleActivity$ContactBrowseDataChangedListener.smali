.class final Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactBrowseDataChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2029
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2029
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onContactDataChanged(Z)V
    .locals 5
    .parameter "isListEmpty"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2033
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 2034
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2035
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2043
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 2038
    .local v0, profileCount:I
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v4}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-lez v4, :cond_3

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #profileCount:I
    :cond_2
    move v0, v3

    .line 2037
    goto :goto_1

    .restart local v0       #profileCount:I
    :cond_3
    move v2, v3

    .line 2038
    goto :goto_2
.end method

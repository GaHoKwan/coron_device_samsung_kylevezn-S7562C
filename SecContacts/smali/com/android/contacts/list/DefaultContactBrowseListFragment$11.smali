.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onResume()V
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
    .line 1061
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {v1, p2, p1}, Lcom/android/contacts/VoLTEStateTracker;->isVoLteEnabled(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setVoLTEEnabled(Z)V

    .line 1066
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->notifyDataSetChanged()V

    .line 1067
    return-void
.end method

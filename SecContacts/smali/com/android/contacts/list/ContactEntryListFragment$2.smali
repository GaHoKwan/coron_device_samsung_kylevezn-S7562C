.class Lcom/android/contacts/list/ContactEntryListFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactEntryListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$2;,"Lcom/android/contacts/list/ContactEntryListFragment.2;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 427
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$2;,"Lcom/android/contacts/list/ContactEntryListFragment.2;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;
    invoke-static {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->access$000(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/android/contacts/VoLTEStateTracker;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/android/contacts/VoLTEStateTracker;->isVoLteEnabled(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setVoLTEEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 429
    return-void
.end method

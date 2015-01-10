.class Lcom/android/contacts/list/ContactTileListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ContactTileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/VoLTEStateTracker;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/android/contacts/VoLTEStateTracker;->isVoLteEnabled(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setVoLTEEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 389
    return-void
.end method

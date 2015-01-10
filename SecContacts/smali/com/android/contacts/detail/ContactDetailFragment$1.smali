.class Lcom/android/contacts/detail/ContactDetailFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {v0, p2, p1}, Lcom/android/contacts/VoLTEStateTracker;->isVoLteEnabled(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$202(Z)Z

    .line 603
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 606
    :cond_0
    return-void
.end method

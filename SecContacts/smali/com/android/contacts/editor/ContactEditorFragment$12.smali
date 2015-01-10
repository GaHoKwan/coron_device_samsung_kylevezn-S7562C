.class Lcom/android/contacts/editor/ContactEditorFragment$12;
.super Landroid/content/BroadcastReceiver;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2954
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2957
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2958
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2976
    :cond_0
    :goto_0
    return-void

    .line 2962
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2963
    .local v0, action:Ljava/lang/String;
    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2964
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mIsHVGS:Z
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2200(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2965
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const-string v3, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/contacts/editor/ContactEditorFragment;->mIsSipVisible:Z

    .line 2966
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsSipVisible : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-boolean v4, v4, Lcom/android/contacts/editor/ContactEditorFragment;->mIsSipVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 2968
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-boolean v2, v2, Lcom/android/contacts/editor/ContactEditorFragment;->mIsSipVisible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2969
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2300(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->tabVisibity(Z)V

    goto :goto_0

    .line 2971
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2300(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->tabVisibity(Z)V

    goto :goto_0
.end method

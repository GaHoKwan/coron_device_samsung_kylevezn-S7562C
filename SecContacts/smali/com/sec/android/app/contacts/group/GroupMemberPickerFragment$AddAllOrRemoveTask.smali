.class Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;
.super Landroid/os/AsyncTask;
.source "GroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddAllOrRemoveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 472
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x1

    .line 477
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #setter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mAddAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$302(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Z)Z

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #calls: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->addAllMember()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$400(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V

    .line 486
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #setter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mRemoveAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$502(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Z)Z

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #calls: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->removeAllMember()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$600(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 472
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$AddAllOrRemoveTask;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #calls: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$700(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V

    .line 494
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

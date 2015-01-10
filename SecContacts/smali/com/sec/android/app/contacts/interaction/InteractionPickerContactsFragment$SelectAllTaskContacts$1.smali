.class Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;
.super Ljava/util/TimerTask;
.source "InteractionPickerContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1468
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1602(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1470
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1472
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1700(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1702(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1475
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    .line 1479
    :cond_0
    return-void
.end method

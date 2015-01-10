.class Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard$1;
.super Ljava/lang/Object;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1423
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1602(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1700(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1702(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1428
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    .line 1433
    :cond_0
    return-void
.end method

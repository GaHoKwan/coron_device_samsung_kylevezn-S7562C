.class Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;
.super Landroid/os/AsyncTask;
.source "InteractionPickerContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskContacts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1438
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v3, 0x0

    .line 1442
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1443
    .local v0, ischecked:Z
    const/4 v1, 0x0

    .line 1444
    .local v1, result:Z
    if-eqz v0, :cond_0

    .line 1445
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1448
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1900(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1449
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllCheckedContacts(Z)Z
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$2000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    move-result v1

    .line 1452
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1447
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    goto :goto_0

    .line 1451
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1438
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "success"

    .prologue
    .line 1457
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1459
    .local v0, mSuccess:Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    .line 1461
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1462
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1500(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V

    .line 1465
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1466
    .local v1, timer:Ljava/util/Timer;
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1481
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1438
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

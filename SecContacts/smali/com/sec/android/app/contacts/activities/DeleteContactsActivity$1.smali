.class Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;
.super Ljava/lang/Object;
.source "DeleteContactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedCountChanged(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->access$002(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;I)I

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    #calls: Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateSaveButtonStatus()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->access$100(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->access$200(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    #calls: Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateActionBarTitle()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->access$300(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V

    .line 96
    :cond_0
    return-void
.end method

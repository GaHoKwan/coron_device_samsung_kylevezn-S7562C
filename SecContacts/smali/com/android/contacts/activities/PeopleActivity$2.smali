.class Lcom/android/contacts/activities/PeopleActivity$2;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$2;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedCountChanged(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$2;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getDeleteDoneActionBarMenuItem()Landroid/view/View;

    move-result-object v2

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_1
    return-void

    .line 868
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "PeopleActivity"

    const-string v2, "Cannot register listener for delete done button."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

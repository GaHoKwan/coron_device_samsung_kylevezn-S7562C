.class Lcom/android/contacts/detail/ContactDetailFragment$23;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->makeRingtoneEntry(Ljava/lang/String;)V
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
    .line 2585
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$23;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 2589
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$23;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$23;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_0

    .line 2590
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$23;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .line 2591
    .local v0, peopleActivity:Lcom/android/contacts/activities/PeopleActivity;
    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->clearCustomSearchViewFocus()V

    .line 2594
    .end local v0           #peopleActivity:Lcom/android/contacts/activities/PeopleActivity;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$23;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2596
    :goto_0
    return-void

    .line 2595
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$23;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$23;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    goto :goto_0
.end method

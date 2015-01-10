.class Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupDetailFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2415
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onAddMemberRequested()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 2459
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 2460
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v1

    .line 2461
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$3000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isAutoAdd()Z

    move-result v2

    .line 2462
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-class v5, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2463
    const-string v4, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2464
    const-string v4, "GroupInfo"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2466
    const-string v0, "AutoAdd"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2468
    if-ne v1, v6, :cond_0

    .line 2469
    const-string v0, "EditMode"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2475
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/16 v1, 0x5f

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2476
    return-void

    .line 2470
    :cond_0
    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    .line 2471
    const-string v0, "EditMode"

    const/16 v1, 0x12

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 2473
    :cond_1
    const-string v0, "EditMode"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 2452
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2453
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "finishActivityOnUpSelected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2454
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 2455
    return-void
.end method

.method public onGroupSizeUpdated(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2421
    return-void
.end method

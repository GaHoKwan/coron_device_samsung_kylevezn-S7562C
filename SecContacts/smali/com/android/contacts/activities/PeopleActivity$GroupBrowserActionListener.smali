.class final Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupBrowserActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2397
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2397
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onViewGroupAction(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2401
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #calls: Lcom/android/contacts/activities/PeopleActivity;->setupGroupDetailFragment(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/contacts/activities/PeopleActivity;->access$2900(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 2412
    :goto_0
    return-void

    .line 2405
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-class v2, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2406
    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2408
    const-string v1, "AutoAdd"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2410
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

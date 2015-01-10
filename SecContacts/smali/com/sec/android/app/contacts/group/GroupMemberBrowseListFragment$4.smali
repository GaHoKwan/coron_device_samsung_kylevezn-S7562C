.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 523
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 524
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    #calls: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->requestSearchViewFocus(Landroid/app/Activity;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/app/Activity;)V

    .line 527
    :cond_0
    return-void
.end method

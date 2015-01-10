.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 476
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 481
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onAddMemberRequested()V

    goto :goto_0
.end method

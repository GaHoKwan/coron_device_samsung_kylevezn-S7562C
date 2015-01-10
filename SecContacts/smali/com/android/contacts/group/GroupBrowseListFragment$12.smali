.class Lcom/android/contacts/group/GroupBrowseListFragment$12;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$groupId:J

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2293
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object p2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->val$accountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->val$title:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->val$groupId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 2295
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v3, 0x0

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z
    invoke-static {v2, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3202(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 2296
    const/4 v1, 0x0

    .line 2297
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.sec.contact.agg.account_type"

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->val$accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2299
    .local v0, groupDeleteWithMember:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2301
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "deleteCompleted"

    invoke-static {v2, v0, v3, v4, v6}, Lcom/android/contacts/ContactSaveService;->createGroupMultipleDeleteIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 2319
    .end local v0           #groupDeleteWithMember:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->showProgress()V
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3100(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    .line 2321
    if-eqz v1, :cond_1

    .line 2322
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2324
    :cond_1
    return-void

    .line 2304
    :cond_2
    const-string v2, "com.google"

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->val$accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.nttdocomo"

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->val$accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2313
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->val$groupId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "deleteCompleted"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/contacts/ContactSaveService;->createGroupSingleDeleteIntent(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

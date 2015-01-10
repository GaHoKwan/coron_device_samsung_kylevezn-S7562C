.class public Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateGroupUpdateIntentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<[J>;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1469
    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1470
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1465
    check-cast p1, Landroid/app/Activity;

    .end local p1
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;->doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 1486
    .local p2, params:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    aget-object v7, p2, v8

    .line 1487
    .local v7, original:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x1

    aget-object v6, p2, v8

    .line 1488
    .local v6, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1489
    .local v3, memberToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1498
    .local v4, memberToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1499
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1500
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1505
    .end local v1           #id:J
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1506
    .restart local v1       #id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1507
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1510
    .end local v1           #id:J
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1513
    .local v5, membersToAddRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[J>;"
    #calls: Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$1600(Ljava/util/List;)[J

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    #calls: Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$1600(Ljava/util/List;)[J

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    return-object v5
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<[J>;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .line 1524
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 1526
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090270

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment;

    .line 1529
    if-eqz v0, :cond_0

    .line 1531
    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$1700(Lcom/android/contacts/group/GroupEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1532
    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$900(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1536
    :goto_0
    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$1900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1537
    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$2000(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    .line 1538
    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$400(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v4

    .line 1539
    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mMode:I
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$800(Lcom/android/contacts/group/GroupEditorFragment;)I

    move-result v9

    .line 1541
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "saveCompleted"

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/contacts/ContactSaveService;->createGroupUpdateIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1545
    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1547
    :cond_0
    return-void

    .line 1534
    :cond_1
    #calls: Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$1800(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1465
    check-cast p1, Landroid/app/Activity;

    .end local p1
    check-cast p2, Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;->onPostExecute(Landroid/app/Activity;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 1475
    .line 1479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1480
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1465
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method

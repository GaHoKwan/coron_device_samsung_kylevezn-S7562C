.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "SIMContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private bIsSim1:Z

.field private count:I

.field private mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

.field private mSelectedContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

.field private mode:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V
    .locals 1
    .parameter
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1606
    .local p3, selectedInfoHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .line 1607
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1594
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->bIsSim1:Z

    .line 1608
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .line 1609
    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    .line 1610
    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    .line 1611
    invoke-static {p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 1612
    return-void
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1588
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->bIsSim1:Z

    return p1
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 13
    .parameter "target"
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1651
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1652
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ProgressDialog;

    .line 1653
    .local v8, prog:Landroid/app/ProgressDialog;
    const-string v6, "vnd.sec.contact.sim"

    .line 1654
    .local v6, destAccountType:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 1655
    iput v12, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1656
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1657
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount()I

    move-result v2

    .line 1658
    .local v2, dbEnableCount:I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1659
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v9}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v9

    const/16 v10, 0x190

    if-ne v9, v10, :cond_1

    .line 1660
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v10, "vnd.sec.contact.sim2"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount(Ljava/lang/String;)I

    move-result v2

    .line 1661
    const-string v6, "vnd.sec.contact.sim2"

    .line 1664
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1665
    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z
    invoke-static {p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1666
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v9, v9, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1871
    .end local v2           #dbEnableCount:I
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    .line 1669
    .restart local v2       #dbEnableCount:I
    .restart local v7       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1676
    .local v0, contactId:J
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->bIsSim1:Z

    if-nez v9, :cond_8

    .line 1677
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1678
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v9, :cond_4

    .line 1679
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_ExportAllNumberToSIM"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1684
    const/4 v5, 0x0

    .line 1685
    .local v5, dbTotalCount:I
    const/4 v4, 0x0

    .line 1686
    .local v4, dbSavedCount:I
    const/4 v3, 0x0

    .line 1688
    .local v3, dbRemainedCount:I
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getDBNumberCount(J)I

    move-result v5

    .line 1689
    move v3, v5

    .line 1690
    if-nez v5, :cond_5

    .line 1691
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v0, v1, v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim2(JZ)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v9, v11, :cond_4

    .line 1692
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1723
    .end local v3           #dbRemainedCount:I
    .end local v4           #dbSavedCount:I
    .end local v5           #dbTotalCount:I
    :cond_4
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1724
    invoke-virtual {v8, v11}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 1695
    .restart local v3       #dbRemainedCount:I
    .restart local v4       #dbSavedCount:I
    .restart local v5       #dbTotalCount:I
    :cond_5
    :goto_1
    if-lez v3, :cond_4

    if-lez v2, :cond_4

    .line 1696
    const/4 v4, 0x0

    .line 1697
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sub-int v10, v5, v3

    invoke-virtual {v9, v0, v1, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim2(JI)I

    move-result v4

    .line 1700
    if-lez v4, :cond_6

    .line 1701
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1702
    sub-int/2addr v3, v4

    goto :goto_1

    .line 1705
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1710
    .end local v3           #dbRemainedCount:I
    .end local v4           #dbSavedCount:I
    .end local v5           #dbTotalCount:I
    :cond_7
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v0, v1, v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim2(JZ)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v9, v11, :cond_4

    .line 1711
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v9, v9, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1729
    :cond_8
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1730
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v9, :cond_9

    .line 1731
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_ExportAllNumberToSIM"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1736
    const/4 v5, 0x0

    .line 1737
    .restart local v5       #dbTotalCount:I
    const/4 v4, 0x0

    .line 1738
    .restart local v4       #dbSavedCount:I
    const/4 v3, 0x0

    .line 1740
    .restart local v3       #dbRemainedCount:I
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getDBNumberCount(J)I

    move-result v5

    .line 1741
    move v3, v5

    .line 1742
    if-nez v5, :cond_a

    .line 1743
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v0, v1, v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim(JZ)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v9, v11, :cond_9

    .line 1744
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1774
    .end local v3           #dbRemainedCount:I
    .end local v4           #dbSavedCount:I
    .end local v5           #dbTotalCount:I
    :cond_9
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1775
    invoke-virtual {v8, v11}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto/16 :goto_0

    .line 1747
    .restart local v3       #dbRemainedCount:I
    .restart local v4       #dbSavedCount:I
    .restart local v5       #dbTotalCount:I
    :cond_a
    :goto_2
    if-lez v3, :cond_9

    if-lez v2, :cond_9

    .line 1748
    const/4 v4, 0x0

    .line 1749
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sub-int v10, v5, v3

    invoke-virtual {v9, v0, v1, v6, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim(JLjava/lang/String;I)I

    move-result v4

    .line 1751
    if-lez v4, :cond_b

    .line 1752
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1753
    sub-int/2addr v3, v4

    goto :goto_2

    .line 1756
    :cond_b
    const/4 v3, 0x0

    goto :goto_2

    .line 1761
    .end local v3           #dbRemainedCount:I
    .end local v4           #dbSavedCount:I
    .end local v5           #dbTotalCount:I
    :cond_c
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v0, v1, v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim(JZ)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v9, v11, :cond_9

    .line 1762
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v9, v9, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1588
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0d03d4

    const v6, 0x7f0d03ce

    const v5, 0x7f0d03d1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1877
    .line 1879
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 1880
    const-string v0, "SIMContactSelectionActivity"

    const-string v3, "progress null"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :goto_0
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 1894
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1898
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    if-ne v0, v1, :cond_5

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1906
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1907
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v4, v6, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V

    .line 1948
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1949
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1951
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setDelete(Z)V

    .line 1954
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1957
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 1958
    return-void

    .line 1882
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1883
    const-string v0, "SIMContactSelectionActivity"

    const-string v3, "progress.get null"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1886
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1887
    :catch_0
    move-exception v0

    .line 1888
    const-string v0, "SIMContactSelectionActivity"

    const-string v3, "ExportTask - onPostExecute : Exception occured"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1902
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0d03d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1910
    :cond_6
    const v0, 0x7f0d02f4

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1918
    :cond_7
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1922
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    if-ne v0, v1, :cond_8

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1930
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1931
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v4, v6, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1926
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0d03d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1934
    :cond_9
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10000b

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1936
    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 1951
    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1588
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1617
    const v0, 0x7f0d006f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1618
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1619
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1620
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1621
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1623
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1624
    new-instance v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1638
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1640
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1645
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1646
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1588
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method

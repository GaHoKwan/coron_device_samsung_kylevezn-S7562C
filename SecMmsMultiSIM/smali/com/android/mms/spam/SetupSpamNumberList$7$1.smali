.class Lcom/android/mms/spam/SetupSpamNumberList$7$1;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList$7;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 462
    const/4 v2, 0x0

    .line 463
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v4, v4, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v4

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_1

    .line 464
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v4, v4, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v0

    .line 466
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->deleteSpamNumber(I)V
    invoke-static {v3, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1300(Lcom/android/mms/spam/SetupSpamNumberList;I)V

    .line 467
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v4, v4, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 468
    const/4 v2, 0x1

    .line 463
    .end local v0           #del_id:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 472
    :cond_1
    if-nez v2, :cond_2

    .line 473
    const-string v3, "Mms/SetupSpamNumberList"

    const-string v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_1
    return-void

    .line 477
    :cond_2
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v3, v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$302(Lcom/android/mms/spam/SetupSpamNumberList;I)I

    .line 478
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v4, v4, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const v5, 0x7f0a0389

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1400(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$7$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$7;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$7;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1500(Lcom/android/mms/spam/SetupSpamNumberList;)V

    goto :goto_1
.end method

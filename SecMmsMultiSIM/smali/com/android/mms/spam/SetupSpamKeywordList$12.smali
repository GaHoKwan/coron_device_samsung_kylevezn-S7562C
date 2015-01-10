.class Lcom/android/mms/spam/SetupSpamKeywordList$12;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    .line 667
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$800(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$800(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$800(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v0

    .line 669
    .local v0, del_id:I
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->deleteSpamKeyword(I)V
    invoke-static {v1, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1000(Lcom/android/mms/spam/SetupSpamKeywordList;I)V

    .line 670
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$800(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 671
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const v3, 0x7f0a0389

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1100(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/lang/String;)V

    .line 674
    .end local v0           #del_id:I
    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v1, v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$802(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    .line 675
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 676
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I
    invoke-static {v1, v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$602(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    .line 677
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->updateTitleBar()V
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1500(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    .line 678
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 679
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1200(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    .line 681
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-nez v1, :cond_1

    .line 682
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 683
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0387

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 684
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :cond_1
    :goto_0
    return-void

    .line 686
    :cond_2
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$12;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

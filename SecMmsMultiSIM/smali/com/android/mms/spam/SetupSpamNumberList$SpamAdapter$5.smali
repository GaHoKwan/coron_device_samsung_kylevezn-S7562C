.class Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

.field final synthetic val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x64

    .line 1086
    const/4 v0, 0x0

    .line 1087
    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1093
    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1900(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V

    .line 1094
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v1, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1102(Lcom/android/mms/spam/SetupSpamNumberList;I)I

    .line 1095
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 1096
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$5;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 1097
    const/4 v1, 0x1

    return v1

    .line 1087
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

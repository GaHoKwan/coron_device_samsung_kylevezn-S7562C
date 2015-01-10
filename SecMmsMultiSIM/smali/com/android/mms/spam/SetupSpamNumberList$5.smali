.class Lcom/android/mms/spam/SetupSpamNumberList$5;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$5;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 377
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$5;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$800(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 378
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$5;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$5;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$5;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$5;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$5;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteScreenItems()V
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1000(Lcom/android/mms/spam/SetupSpamNumberList;)V

    .line 382
    return-void
.end method

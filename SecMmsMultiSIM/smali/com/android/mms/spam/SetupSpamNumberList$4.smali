.class Lcom/android/mms/spam/SetupSpamNumberList$4;
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
    .line 364
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 366
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$800(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 367
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v5

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v2

    add-int v6, v2, v1

    if-nez v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v5, v6, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 368
    goto :goto_1

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$800(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/CheckBox;

    move-result-object v2

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 371
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteScreenItems()V
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1000(Lcom/android/mms/spam/SetupSpamNumberList;)V

    .line 372
    return-void

    :cond_2
    move v3, v4

    .line 370
    goto :goto_2
.end method

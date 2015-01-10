.class Lcom/android/mms/spam/SetupSpamKeywordList$10;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;
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
    .line 614
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$10;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 616
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$10;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListContextMenu:Landroid/view/ContextMenu;
    invoke-static {v1, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1302(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    .line 617
    if-nez p3, :cond_1

    .line 618
    const-string v1, "Mms/SetupSpamKeywordList"

    const-string v2, "menuInfo is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$10;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p3

    .line 624
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 625
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$10;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$802(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    .line 626
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$10;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$10;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$800(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V

    goto :goto_0
.end method

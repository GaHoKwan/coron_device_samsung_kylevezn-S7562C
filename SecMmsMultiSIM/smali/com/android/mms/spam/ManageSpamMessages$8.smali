.class Lcom/android/mms/spam/ManageSpamMessages$8;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/ManageSpamMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$8;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 686
    move-object v2, p3

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 687
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz p3, :cond_2

    .line 688
    iget-object v3, p0, Lcom/android/mms/spam/ManageSpamMessages$8;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mMode:I
    invoke-static {v3}, Lcom/android/mms/spam/ManageSpamMessages;->access$000(Lcom/android/mms/spam/ManageSpamMessages;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v3, p0, Lcom/android/mms/spam/ManageSpamMessages$8;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/ManageSpamMessages;->access$100(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/android/mms/spam/ManageSpamMessages$8;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/ManageSpamMessages;->access$100(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/ListView;

    move-result-object v3

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 694
    .local v1, cur:Landroid/database/Cursor;
    const-string v3, "ADDRESS"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, address:Ljava/lang/String;
    const v3, 0x7f0a0028

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 698
    const v3, 0x7f0a0365

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 700
    const/4 v3, 0x1

    const v4, 0x7f0a00c3

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 702
    iget-object v3, p0, Lcom/android/mms/spam/ManageSpamMessages$8;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/spam/ManageSpamMessages;->mPosForContext:I
    invoke-static {v3, v4}, Lcom/android/mms/spam/ManageSpamMessages;->access$1102(Lcom/android/mms/spam/ManageSpamMessages;I)I

    .line 703
    iget-object v3, p0, Lcom/android/mms/spam/ManageSpamMessages$8;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #setter for: Lcom/android/mms/spam/ManageSpamMessages;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v3, p1}, Lcom/android/mms/spam/ManageSpamMessages;->access$1202(Lcom/android/mms/spam/ManageSpamMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 705
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #cur:Landroid/database/Cursor;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/spam/ManageSpamMessages$8;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/spam/ManageSpamMessages;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v3, v4}, Lcom/android/mms/spam/ManageSpamMessages;->access$1202(Lcom/android/mms/spam/ManageSpamMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

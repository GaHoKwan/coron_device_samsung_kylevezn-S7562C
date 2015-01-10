.class Lcom/android/mms/ui/ManageSimMessages$8;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 774
    move-object v3, p3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 775
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz p3, :cond_4

    .line 776
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMode:I
    invoke-static {v5}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 810
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v5

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 811
    .local v1, cur:Landroid/database/Cursor;
    const-string v5, "ADDRESS"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 818
    .local v4, nameInContact:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 819
    const v5, 0x7f0a02ff

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 823
    .end local v0           #address:Ljava/lang/String;
    :goto_1
    const v5, 0x7f0a0300

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 824
    const/4 v5, 0x1

    const v6, 0x7f0a00c3

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 826
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mPosForContext:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$1402(Lcom/android/mms/ui/ManageSimMessages;I)I

    .line 834
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v5, p1}, Lcom/android/mms/ui/ManageSimMessages;->access$1002(Lcom/android/mms/ui/ManageSimMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 813
    .end local v1           #cur:Landroid/database/Cursor;
    .end local v4           #nameInContact:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 814
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Mms/ManageSimMessages"

    const-string v6, "Cursor Index Exception Occured"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #cur:Landroid/database/Cursor;
    .restart local v4       #nameInContact:Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    .restart local v0       #address:Ljava/lang/String;
    :cond_3
    move-object v0, v4

    goto :goto_2

    .line 836
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #cur:Landroid/database/Cursor;
    .end local v4           #nameInContact:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v6, 0x0

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v5, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$1002(Lcom/android/mms/ui/ManageSimMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.class Lcom/android/phone/callsettings/AutoRejectList$13;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 612
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 614
    .local v0, del_id:I
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->deleteAutoRejectNumber(I)V
    invoke-static {v2, v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$1500(Lcom/android/phone/callsettings/AutoRejectList;I)V

    .line 616
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I
    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 618
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$1302(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 620
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const v4, 0x7f0e0355

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->displayToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$1600(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$000(Lcom/android/phone/callsettings/AutoRejectList;)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 624
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$1102(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 626
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->updateCount()V
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1900(Lcom/android/phone/callsettings/AutoRejectList;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v0           #del_id:I
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

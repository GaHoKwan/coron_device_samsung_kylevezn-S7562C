.class Lcom/android/phone/callsettings/IpCall$4;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 341
    const/4 v2, 0x0

    .line 343
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 344
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;I)V

    .line 347
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v4, ""

    #calls: Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/IpCall;->access$800(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 350
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 351
    const/4 v2, 0x1

    .line 352
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$900(Lcom/android/phone/callsettings/IpCall;)V

    .line 343
    .end local v0           #del_id:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 355
    :cond_2
    if-nez v2, :cond_4

    .line 365
    :cond_3
    :goto_1
    return-void

    .line 358
    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v5, 0x7f0e0355

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/IpCall;->access$1000(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 360
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$900(Lcom/android/phone/callsettings/IpCall;)V

    .line 363
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 364
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.class Lcom/android/mms/ui/ManageSimMessages$9;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onContextItemSelected(Landroid/view/MenuItem;)Z
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
    .line 892
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 894
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mPosForContext:I
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 896
    .local v0, cursor1:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v2, 0x2

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 897
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1500(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V

    .line 900
    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1700(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 918
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 921
    return-void

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->startQuery()V
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1800(Lcom/android/mms/ui/ManageSimMessages;)V

    goto :goto_0

    .line 907
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$1900()I

    move-result v1

    if-le v1, v4, :cond_2

    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$2000()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 908
    const-string v1, "Mms/ManageSimMessages"

    const-string v2, "onContextItemSelected - SIM1 is deactive."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1700(Lcom/android/mms/ui/ManageSimMessages;)V

    goto :goto_0

    .line 913
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$9;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->startQuery()V
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1800(Lcom/android/mms/ui/ManageSimMessages;)V

    goto :goto_0
.end method

.class Lcom/android/mms/ui/ManageSimMessages$13;
.super Landroid/content/BroadcastReceiver;
.source "ManageSimMessages.java"


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
    .line 1763
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1766
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1767
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1769
    .local v1, airplane:I
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, v6, :cond_1

    .line 1770
    const-string v2, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_AIRPLANE_MODE_CHANGED mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMode:I
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMode:I
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1774
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mMode:I
    invoke-static {v2, v5}, Lcom/android/mms/ui/ManageSimMessages;->access$602(Lcom/android/mms/ui/ManageSimMessages;I)I

    .line 1775
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMode:I
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SimMessageListAdapter;->setMode(I)V

    .line 1779
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v2, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 1780
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1782
    :cond_1
    return-void
.end method

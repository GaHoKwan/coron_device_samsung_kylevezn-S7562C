.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, action:Ljava/lang/String;
    const-string v1, "Update_SpeedDial_Data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkViewFromDB()V

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 268
    :cond_0
    return-void
.end method

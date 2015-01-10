.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$23;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2355
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$23;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2357
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2359
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.app.action.changed_call_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2360
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$23;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x0

    #calls: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)V

    .line 2362
    :cond_0
    return-void
.end method

.class Lcom/android/phone/InVTCallScreen$6;
.super Landroid/content/BroadcastReceiver;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 1792
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1793
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1795
    .local v4, mLowBatteryWarningLevel:I
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InVTCallScreen:mLowBatteryReceiver : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1797
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1798
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v6, "Low battery Indication received"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1800
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z
    invoke-static {v5, v8}, Lcom/android/phone/InVTCallScreen;->access$8302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1801
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->performBatteryLowProcess()V
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$8400(Lcom/android/phone/InVTCallScreen;)V

    .line 1820
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1803
    const-string v5, "status"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1805
    .local v3, battStatus:I
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1806
    .local v2, battScale:I
    const-string v5, "level"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1807
    .local v1, battLevel:I
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1808
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1810
    if-gt v1, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 1812
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v6, "Low battery and not in charging state"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1813
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z
    invoke-static {v5, v8}, Lcom/android/phone/InVTCallScreen;->access$8302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1814
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->performBatteryLowProcess()V
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$8400(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_0

    .line 1816
    :cond_2
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$6;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z
    invoke-static {v5, v6}, Lcom/android/phone/InVTCallScreen;->access$8302(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_0
.end method

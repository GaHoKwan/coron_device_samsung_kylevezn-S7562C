.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-static {p2}, Landroid/app/enterprise/IEnterpriseVpnInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v1

    #setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$002(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Landroid/app/enterprise/IEnterpriseVpnInterface;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    .line 91
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 95
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$002(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Landroid/app/enterprise/IEnterpriseVpnInterface;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    .line 97
    return-void
.end method
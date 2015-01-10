.class final Lnbisdk/eg$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/eg;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic qf:Lnbisdk/eg;


# direct methods
.method constructor <init>(Lnbisdk/eg;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    :cond_0
    if-nez v0, :cond_4

    const-string v0, "StatusChanged"

    const-string v1, "There is no network coverage."

    const-string v2, "AndroidConnectivityManager.java"

    const/16 v3, 0x37

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-static {v0}, Lnbisdk/eg;->a(Lnbisdk/eg;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-static {v1}, Lnbisdk/eg;->a(Lnbisdk/eg;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iget-object v2, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-static {v2}, Lnbisdk/eg;->b(Lnbisdk/eg;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-static {v2}, Lnbisdk/eg;->c(Lnbisdk/eg;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eq v0, v5, :cond_2

    if-ne v1, v5, :cond_3

    :cond_2
    iget-object v2, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-static {v2}, Lnbisdk/eg;->d(Lnbisdk/eg;)Lnbisdk/dl;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-static {v2}, Lnbisdk/eg;->d(Lnbisdk/eg;)Lnbisdk/dl;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/dl;->ag()V

    :cond_3
    iget-object v2, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-static {v2, v1}, Lnbisdk/eg;->a(Lnbisdk/eg;Z)Z

    iget-object v1, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-static {v1, v0}, Lnbisdk/eg;->b(Lnbisdk/eg;Z)Z

    iget-object v0, p0, Lnbisdk/eg$1;->qf:Lnbisdk/eg;

    invoke-static {v0}, Lnbisdk/eg;->e(Lnbisdk/eg;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "state is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StatusChanged"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidConnectivityManager.java"

    const/16 v3, 0x46

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

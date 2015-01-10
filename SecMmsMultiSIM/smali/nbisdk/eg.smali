.class public Lnbisdk/eg;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/jm;


# static fields
.field private static he:Lnbisdk/eg;


# instance fields
.field private gY:Lnbisdk/dl;

.field private gZ:Landroid/content/BroadcastReceiver;

.field private ha:Ljava/lang/String;

.field private hb:Landroid/net/ConnectivityManager;

.field private hc:Z

.field private hd:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    iput-object v0, p0, Lnbisdk/eg;->ha:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/eg;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lnbisdk/eg;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lnbisdk/eg;->hb:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lnbisdk/eg;->hb:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/eg;->hd:Z

    iget-object v0, p0, Lnbisdk/eg;->hb:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/eg;->hc:Z

    new-instance v0, Lnbisdk/eg$1;

    invoke-direct {v0, p0}, Lnbisdk/eg$1;-><init>(Lnbisdk/eg;)V

    iput-object v0, p0, Lnbisdk/eg;->gZ:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lnbisdk/eg;->ha:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/eg;->gZ:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lnbisdk/eg;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lnbisdk/eg;->hb:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic a(Lnbisdk/eg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnbisdk/eg;->hc:Z

    return p1
.end method

.method static synthetic b(Lnbisdk/eg;)Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/eg;->hd:Z

    return v0
.end method

.method static synthetic b(Lnbisdk/eg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnbisdk/eg;->hd:Z

    return p1
.end method

.method public static c(Landroid/content/Context;)Lnbisdk/eg;
    .locals 1

    sget-object v0, Lnbisdk/eg;->he:Lnbisdk/eg;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/eg;

    invoke-direct {v0, p0}, Lnbisdk/eg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnbisdk/eg;->he:Lnbisdk/eg;

    :cond_0
    sget-object v0, Lnbisdk/eg;->he:Lnbisdk/eg;

    return-object v0
.end method

.method static synthetic c(Lnbisdk/eg;)Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/eg;->hc:Z

    return v0
.end method

.method static synthetic d(Lnbisdk/eg;)Lnbisdk/dl;
    .locals 1

    iget-object v0, p0, Lnbisdk/eg;->gY:Lnbisdk/dl;

    return-object v0
.end method

.method static synthetic e(Lnbisdk/eg;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/eg;->eR()V

    return-void
.end method

.method private declared-synchronized eR()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/eg;->gY:Lnbisdk/dl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/eg;->gY:Lnbisdk/dl;

    invoke-interface {v0}, Lnbisdk/dl;->af()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final d(Lnbisdk/dl;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/eg;->gY:Lnbisdk/dl;

    return-void
.end method

.method public final destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/eg;->gY:Lnbisdk/dl;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lnbisdk/eg;->gY:Lnbisdk/dl;

    :cond_0
    iget-object v0, p0, Lnbisdk/eg;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/eg;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnbisdk/eg;->gZ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    sput-object v2, Lnbisdk/eg;->he:Lnbisdk/eg;

    return-void
.end method

.method public final e(B)Lnbisdk/cm;
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    move v1, v5

    :goto_1
    iget-object v0, p0, Lnbisdk/eg;->hb:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    iget-object v0, p0, Lnbisdk/eg;->hb:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    new-instance v0, Lnbisdk/cm;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    move v3, v6

    :goto_2
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v1, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lnbisdk/cm;-><init>(BZZZZZ)V

    goto :goto_0

    :pswitch_1
    move v1, v6

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

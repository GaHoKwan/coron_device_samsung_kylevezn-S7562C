.class public final Lnbisdk/hb;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lnbisdk/ft;


# instance fields
.field private lH:Lnbisdk/iv;

.field private lI:Landroid/net/wifi/WifiManager;

.field private lJ:J

.field private lK:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lnbisdk/hb;->lH:Lnbisdk/iv;

    iput-object v0, p0, Lnbisdk/hb;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/hb;->lJ:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/hb;->lK:Z

    :try_start_0
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/hb;->lK:Z

    :cond_1
    iput-object p1, p0, Lnbisdk/hb;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/Vector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/xg;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v0, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/kv;

    iget-object v1, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v2, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const-wide/16 v3, 0x0

    iget-object v5, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget v6, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct/range {v0 .. v6}, Lnbisdk/kv;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "authentication"

    const-string v3, "OPEN"

    invoke-static {v1, v2, v3}, Lnbisdk/hb;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/kv;->d(Ljava/util/Vector;)V

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lnbisdk/kv;->d(Ljava/util/Vector;)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v10, :cond_3

    const-string v3, "authentication"

    const-string v4, "WEP"

    invoke-static {v1, v3, v4}, Lnbisdk/hb;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "WPA-EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v10, :cond_4

    const-string v3, "authentication"

    const-string v4, "WPA_ENTERPRISE"

    invoke-static {v1, v3, v4}, Lnbisdk/hb;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v3, "WPA2-EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v10, :cond_5

    const-string v3, "authentication"

    const-string v4, "WPA2_ENTERPRISE"

    invoke-static {v1, v3, v4}, Lnbisdk/hb;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v10, :cond_6

    const-string v3, "authentication"

    const-string v4, "WPA_PSK"

    invoke-static {v1, v3, v4}, Lnbisdk/hb;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v10, :cond_7

    const-string v3, "authentication"

    const-string v4, "WPA2_PSK"

    invoke-static {v1, v3, v4}, Lnbisdk/hb;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v3, "CCMP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v10, :cond_8

    const-string v3, "cipher"

    const-string v4, "CCMP"

    invoke-static {v1, v3, v4}, Lnbisdk/hb;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v3, "TKIP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v10, :cond_1

    const-string v2, "cipher"

    const-string v3, "TKIP"

    invoke-static {v1, v2, v3}, Lnbisdk/hb;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    return-object v8
.end method

.method private static a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/dy;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lnbisdk/dy;

    invoke-direct {v0, p1, p2}, Lnbisdk/dy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static hb()Ljava/util/Vector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/xg;",
            ">;"
        }
    .end annotation

    const/16 v9, -0x3e

    const/16 v8, -0x8ae

    const-wide/16 v3, 0x0

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lnbisdk/kv;

    const-string v1, "00:13:5f:55:95:21"

    const/16 v2, -0x3d

    const-string v5, "fake wifi 1"

    const/16 v6, -0x457

    invoke-direct/range {v0 .. v6}, Lnbisdk/kv;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnbisdk/kv;

    const-string v1, "00:13:5f:55:95:20"

    const-string v5, "fake wifi 2"

    move v2, v9

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lnbisdk/kv;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnbisdk/kv;

    const-string v1, "00:13:5f:55:95:21"

    const/16 v2, -0x3f

    const-string v5, "fake wifi 3"

    const/16 v6, -0xd05

    invoke-direct/range {v0 .. v6}, Lnbisdk/kv;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnbisdk/kv;

    const-string v1, "00:21:55:ac:6b:61"

    const/16 v2, -0x40

    const-string v5, "fake wifi 4"

    const/16 v6, -0x115c

    invoke-direct/range {v0 .. v6}, Lnbisdk/kv;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnbisdk/kv;

    const-string v1, "00:21:55:ac:6b:60"

    const/16 v2, -0x41

    const-string v5, "fake wifi 5"

    const/16 v6, -0x15b3

    invoke-direct/range {v0 .. v6}, Lnbisdk/kv;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnbisdk/kv;

    const-string v1, "00:13:5f:55:9c:d0"

    const-string v5, "fake wifi 6"

    move v2, v9

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lnbisdk/kv;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnbisdk/kv;

    const-string v1, "00:11:50:2f:3b:68"

    const-string v5, "fake wifi 7"

    move v2, v9

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lnbisdk/kv;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v7
.end method


# virtual methods
.method public final b(Lnbisdk/iv;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/hb;->lH:Lnbisdk/iv;

    return-void
.end method

.method protected final finalize()V
    .locals 1

    iget-object v0, p0, Lnbisdk/hb;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/hb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final getWifiState()I
    .locals 3

    const/4 v1, 0x4

    const/4 v0, 0x2

    iget-boolean v2, p0, Lnbisdk/hb;->lK:Z

    if-eqz v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    iget-object v2, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public final gh()J
    .locals 2

    iget-boolean v0, p0, Lnbisdk/hb;->lK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/hb;->lJ:J

    :cond_0
    iget-wide v0, p0, Lnbisdk/hb;->lJ:J

    return-wide v0
.end method

.method public final gi()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/xg;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/hb;->lK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/hb;->hb()Ljava/util/Vector;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnbisdk/hb;->a(Ljava/util/List;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gj()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gk()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/hb;->lJ:J

    return-wide v0
.end method

.method public final gl()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/xg;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/hb;->lK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/hb;->hb()Ljava/util/Vector;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnbisdk/hb;->a(Ljava/util/List;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gm()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/hb;->lK:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/hb;->lJ:J

    iget-object v0, p0, Lnbisdk/hb;->lH:Lnbisdk/iv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/hb;->lI:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/hb;->gl()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/hb;->lH:Lnbisdk/iv;

    invoke-interface {v1, v0}, Lnbisdk/iv;->h(Ljava/util/Vector;)V

    :cond_0
    return-void
.end method

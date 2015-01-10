.class public Lnbisdk/bt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/bt$b;,
        Lnbisdk/bt$a;,
        Lnbisdk/bt$c;
    }
.end annotation


# static fields
.field private static zS:Lcom/navbuilder/nb/e;

.field private static zT:Ljava/lang/String;

.field private static zU:Ljava/util/Hashtable;

.field private static zV:Ljava/util/Timer;


# instance fields
.field private Aa:Lnbisdk/bt$c;

.field private Ab:Z

.field private Ac:Lnbisdk/sr;

.field private Ad:Lcom/navbuilder/nb/c;

.field private Ae:Lcom/nbi/common/NBIContextListener;

.field private Af:Lcom/nbi/common/NBIException;

.field private Ag:Ljava/lang/String;

.field private Ah:Ljava/lang/String;

.field private Ai:I

.field private Aj:Lcom/nbi/common/NBINetworkListener;

.field private Ak:Lnbisdk/bt$b;

.field private Al:Lnbisdk/bt$a;

.field final Am:Ljava/lang/Runnable;

.field private zW:Lnbisdk/dz;

.field private zX:Lnbisdk/ev;

.field private zY:Landroid/content/Context;

.field private zZ:Lnbisdk/kd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lnbisdk/bt;-><init>(Landroid/content/Context;Ljava/lang/String;Lnbisdk/dz;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnbisdk/dz;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lnbisdk/bt;->Ae:Lcom/nbi/common/NBIContextListener;

    iput-object v4, p0, Lnbisdk/bt;->Af:Lcom/nbi/common/NBIException;

    iput-object v4, p0, Lnbisdk/bt;->Ag:Ljava/lang/String;

    iput-object v4, p0, Lnbisdk/bt;->Ah:Ljava/lang/String;

    iput v0, p0, Lnbisdk/bt;->Ai:I

    iput-object v4, p0, Lnbisdk/bt;->Aj:Lcom/nbi/common/NBINetworkListener;

    iput-object v4, p0, Lnbisdk/bt;->Ak:Lnbisdk/bt$b;

    new-instance v2, Lnbisdk/ca;

    invoke-direct {v2, p0}, Lnbisdk/ca;-><init>(Lnbisdk/bt;)V

    iput-object v2, p0, Lnbisdk/bt;->Am:Ljava/lang/Runnable;

    sget-object v2, Lnbisdk/bt;->zV:Ljava/util/Timer;

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    const-class v2, Lnbisdk/bt;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lnbisdk/bt;->zV:Ljava/util/Timer;

    if-eqz v3, :cond_1

    sget-object v3, Lnbisdk/bt;->zV:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    const/4 v3, 0x0

    sput-object v3, Lnbisdk/bt;->zV:Ljava/util/Timer;

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lnbisdk/bt;->Ab:Z

    iput-object p1, p0, Lnbisdk/bt;->zY:Landroid/content/Context;

    const-string v1, "com.nbi.common.internal.android.plugin.PluginFactory"

    invoke-static {v1}, Lnbisdk/bt;->bn(Ljava/lang/String;)Lcom/nbi/common/internal/android/plugin/a;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "com.nbi.common.internal.android.plugin.DefaultFactory"

    invoke-static {v1}, Lnbisdk/bt;->bn(Ljava/lang/String;)Lcom/nbi/common/internal/android/plugin/a;

    move-result-object v1

    :cond_2
    invoke-interface {v1, p1}, Lcom/nbi/common/internal/android/plugin/a;->getPAL(Landroid/content/Context;)Lnbisdk/dz;

    move-result-object v2

    iput-object v2, p0, Lnbisdk/bt;->zW:Lnbisdk/dz;

    invoke-interface {v1, p1, p2}, Lcom/nbi/common/internal/android/plugin/a;->getConfig$5f8ced22(Landroid/content/Context;Ljava/lang/String;)Lnbisdk/ev;

    move-result-object v1

    iput-object v1, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    if-eqz p4, :cond_3

    invoke-static {}, Lnbisdk/bt;->nI()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    const-string v2, "config.carrier"

    invoke-interface {v1, v2, p4}, Lnbisdk/ev;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Lnbisdk/sr;

    invoke-direct {v1, p0}, Lnbisdk/sr;-><init>(Lnbisdk/bt;)V

    iput-object v1, p0, Lnbisdk/bt;->Ac:Lnbisdk/sr;

    iget-object v1, p0, Lnbisdk/bt;->Ac:Lnbisdk/sr;

    invoke-virtual {v1}, Lnbisdk/sr;->my()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnbisdk/bt;->Ac:Lnbisdk/sr;

    invoke-virtual {v1}, Lnbisdk/sr;->mx()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lnbisdk/bt;->g([B)V

    :cond_4
    sget-object v1, Lnbisdk/bt;->zS:Lcom/navbuilder/nb/e;

    if-eqz v1, :cond_5

    sget-object v1, Lnbisdk/bt;->zS:Lcom/navbuilder/nb/e;

    iget-object v2, p0, Lnbisdk/bt;->zW:Lnbisdk/dz;

    iget-object v3, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    invoke-virtual {v1, v2, v3}, Lcom/navbuilder/nb/e;->b(Lnbisdk/dz;Lnbisdk/ev;)V

    sput-object v4, Lnbisdk/bt;->zS:Lcom/navbuilder/nb/e;

    :cond_5
    iget-object v1, p0, Lnbisdk/bt;->zW:Lnbisdk/dz;

    iget-object v2, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    invoke-static {v1, v2}, Lcom/navbuilder/nb/e;->a(Lnbisdk/dz;Lnbisdk/ev;)Lcom/navbuilder/nb/e;

    move-result-object v1

    sput-object v1, Lnbisdk/bt;->zS:Lcom/navbuilder/nb/e;

    sput-object p2, Lnbisdk/bt;->zT:Ljava/lang/String;

    iget-object v1, p0, Lnbisdk/bt;->Ac:Lnbisdk/sr;

    invoke-virtual {v1}, Lnbisdk/sr;->my()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lnbisdk/bt;->zS:Lcom/navbuilder/nb/e;

    new-instance v2, Lnbisdk/bt$4;

    invoke-direct {v2, p0}, Lnbisdk/bt$4;-><init>(Lnbisdk/bt;)V

    iput-object v2, p0, Lnbisdk/bt;->Ad:Lcom/navbuilder/nb/c;

    iget-object v2, p0, Lnbisdk/bt;->Ad:Lcom/navbuilder/nb/c;

    invoke-virtual {v1, v2}, Lcom/navbuilder/nb/e;->b(Lcom/navbuilder/nb/c;)V

    :cond_6
    new-instance v1, Lnbisdk/kd;

    invoke-direct {v1, p1}, Lnbisdk/kd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnbisdk/bt;->zZ:Lnbisdk/kd;

    new-instance v1, Lnbisdk/bt$a;

    invoke-direct {v1, p0}, Lnbisdk/bt$a;-><init>(Lnbisdk/bt;)V

    iput-object v1, p0, Lnbisdk/bt;->Al:Lnbisdk/bt$a;

    new-instance v1, Lnbisdk/bt$b;

    invoke-direct {v1, p0}, Lnbisdk/bt$b;-><init>(Lnbisdk/bt;)V

    iput-object v1, p0, Lnbisdk/bt;->Ak:Lnbisdk/bt$b;

    iget-object v1, p0, Lnbisdk/bt;->Ak:Lnbisdk/bt$b;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/tt;->na()Lnbisdk/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnbisdk/y;->a(Lnbisdk/dl;)V

    new-instance v1, Lnbisdk/bt$c;

    invoke-direct {v1, p0}, Lnbisdk/bt$c;-><init>(Lnbisdk/bt;)V

    iput-object v1, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v0, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/bt$c;->S(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_0
    invoke-static {p1}, Lnbisdk/bt;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/bt;->Ac:Lnbisdk/sr;

    invoke-virtual {v1}, Lnbisdk/sr;->mA()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnbisdk/bt;->Ac:Lnbisdk/sr;

    invoke-virtual {v1}, Lnbisdk/sr;->mz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lnbisdk/bt;->Ac:Lnbisdk/sr;

    invoke-virtual {v1, v0}, Lnbisdk/sr;->bf(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnbisdk/bt$2;

    invoke-direct {v1, p0}, Lnbisdk/bt$2;-><init>(Lnbisdk/bt;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_8
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lnbisdk/bt;->Ac:Lnbisdk/sr;

    invoke-virtual {v1, v0}, Lnbisdk/sr;->bf(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lnbisdk/bt;I)I
    .locals 0

    iput p1, p0, Lnbisdk/bt;->Ai:I

    return p1
.end method

.method static synthetic a(Lnbisdk/bt;Lcom/nbi/common/NBIException;)Lcom/nbi/common/NBIException;
    .locals 0

    iput-object p1, p0, Lnbisdk/bt;->Af:Lcom/nbi/common/NBIException;

    return-object p1
.end method

.method static synthetic a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/bt;->zV:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lnbisdk/bt;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/bt;->g([B)V

    return-void
.end method

.method static synthetic b(Lnbisdk/bt;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnbisdk/bt;->Ae:Lcom/nbi/common/NBIContextListener;

    iget-object v0, p0, Lnbisdk/bt;->Ad:Lcom/navbuilder/nb/c;

    if-eqz v0, :cond_0

    sget-object v0, Lnbisdk/bt;->zS:Lcom/navbuilder/nb/e;

    iget-object v1, p0, Lnbisdk/bt;->Ad:Lcom/navbuilder/nb/c;

    invoke-virtual {v0, v1}, Lcom/navbuilder/nb/e;->c(Lcom/navbuilder/nb/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/bt;->Ad:Lcom/navbuilder/nb/c;

    :cond_0
    iget-object v0, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/bt$c;->j(Landroid/content/Context;)V

    iget-object v0, p0, Lnbisdk/bt;->Al:Lnbisdk/bt$a;

    invoke-virtual {v0}, Lnbisdk/bt$a;->gV()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnbisdk/bt;->setNetworkListener(Lcom/nbi/common/NBINetworkListener;)V

    iget-object v0, p0, Lnbisdk/bt;->Ak:Lnbisdk/bt$b;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->na()Lnbisdk/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnbisdk/y;->b(Lnbisdk/dl;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/bt;->Ab:Z

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/bt;->zU:Ljava/util/Hashtable;

    sget-object v0, Lnbisdk/bt;->zS:Lcom/navbuilder/nb/e;

    invoke-virtual {v0}, Lcom/navbuilder/nb/e;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/bt;->zS:Lcom/navbuilder/nb/e;

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/bt;->zT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static bn(Ljava/lang/String;)Lcom/nbi/common/internal/android/plugin/a;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/common/internal/android/plugin/a;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lnbisdk/bt;)Lcom/nbi/common/NBIContextListener;
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->Ae:Lcom/nbi/common/NBIContextListener;

    return-object v0
.end method

.method static synthetic d(Lnbisdk/bt;)Lcom/nbi/common/NBIException;
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->Af:Lcom/nbi/common/NBIException;

    return-object v0
.end method

.method static synthetic e(Lnbisdk/bt;)Lnbisdk/sr;
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->Ac:Lnbisdk/sr;

    return-object v0
.end method

.method static synthetic f(Lnbisdk/bt;)Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/bt;->Ab:Z

    return v0
.end method

.method static synthetic g(Lnbisdk/bt;)Lcom/nbi/common/NBINetworkListener;
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->Aj:Lcom/nbi/common/NBINetworkListener;

    return-object v0
.end method

.method private g([B)V
    .locals 2

    iget-object v0, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    const-string v1, "config.client.guid"

    invoke-interface {v0, v1, p1}, Lnbisdk/ev;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic h(Lnbisdk/bt;)I
    .locals 1

    iget v0, p0, Lnbisdk/bt;->Ai:I

    return v0
.end method

.method static synthetic i(Lnbisdk/bt;)V
    .locals 2

    invoke-static {}, Lnbisdk/cg;->cI()Lnbisdk/cg;

    move-result-object v0

    new-instance v1, Lnbisdk/bt$1;

    invoke-direct {v1, p0}, Lnbisdk/bt$1;-><init>(Lnbisdk/bt;)V

    invoke-virtual {v0, v1}, Lnbisdk/cg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic j(Lnbisdk/bt;)Lnbisdk/dz;
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->zW:Lnbisdk/dz;

    return-object v0
.end method

.method static synthetic k(Lnbisdk/bt;)Lnbisdk/bt$a;
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->Al:Lnbisdk/bt$a;

    return-object v0
.end method

.method public static nB()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnbisdk/bt;->zT:Ljava/lang/String;

    return-object v0
.end method

.method public static nC()Lcom/navbuilder/nb/e;
    .locals 1

    sget-object v0, Lnbisdk/bt;->zS:Lcom/navbuilder/nb/e;

    return-object v0
.end method

.method public static declared-synchronized nD()Ljava/util/Hashtable;
    .locals 2

    const-class v1, Lnbisdk/bt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnbisdk/bt;->zU:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnbisdk/bt;->zU:Ljava/util/Hashtable;

    :cond_0
    sget-object v0, Lnbisdk/bt;->zU:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static nI()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic nL()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lnbisdk/bt;->zV:Ljava/util/Timer;

    return-object v0
.end method

.method private static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lnbisdk/bt;->nI()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "9991119100"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/nbi/common/NBIContextListener;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bt;->Ae:Lcom/nbi/common/NBIContextListener;

    return-void
.end method

.method public final a(Lnbisdk/cq;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    invoke-virtual {v0, p1}, Lnbisdk/bt$c;->a(Lnbisdk/ki;)V

    return-void
.end method

.method public final a(Lnbisdk/cq;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    invoke-virtual {v0, p1, p2}, Lnbisdk/bt$c;->a(Lnbisdk/ki;Landroid/content/Context;)V

    return-void
.end method

.method public final aS()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    const-string v1, "config.locale"

    invoke-interface {v0, v1}, Lnbisdk/ev;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lnbisdk/ki;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lnbisdk/bt$c;->a(Lnbisdk/ki;Landroid/content/Context;)V

    return-void
.end method

.method public final bo(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnbisdk/bt;->Ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app2app?version=1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lnbisdk/bt;->Ag:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "context"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lnbisdk/bt;->zY:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final clearCache()V
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->zW:Lnbisdk/dz;

    invoke-interface {v0}, Lnbisdk/dz;->eO()Lnbisdk/nt;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/nt;->clear()V

    const/4 v0, 0x1

    invoke-static {v0}, Lnbisdk/pu;->clear(Z)V

    iget-object v0, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    invoke-virtual {v0}, Lnbisdk/bt$c;->lm()V

    return-void
.end method

.method public final destroy()V
    .locals 5

    :try_start_0
    const-class v1, Lnbisdk/bt;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lnbisdk/bt;->zV:Ljava/util/Timer;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lnbisdk/bt;->zV:Ljava/util/Timer;

    new-instance v2, Lnbisdk/bt$5;

    invoke-direct {v2, p0}, Lnbisdk/bt$5;-><init>(Lnbisdk/bt;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnbisdk/bt$c;->S(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lnbisdk/bt;->nK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnbisdk/da;->hc()Lnbisdk/da;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnbisdk/da;->a(Landroid/content/ComponentName;)Ljava/util/Vector;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final f(Lcom/navbuilder/nb/NBException;)V
    .locals 2

    new-instance v0, Lcom/nbi/common/NBIException;

    invoke-direct {v0, p1}, Lcom/nbi/common/NBIException;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnbisdk/bt;->Af:Lcom/nbi/common/NBIException;

    invoke-static {}, Lnbisdk/cg;->cI()Lnbisdk/cg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnbisdk/bt;->Am:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnbisdk/cg;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    const-string v1, "config.carrier"

    invoke-interface {v0, v1}, Lnbisdk/ev;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getClientGuid()[B
    .locals 2

    iget-object v0, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    const-string v1, "config.client.guid"

    invoke-interface {v0, v1}, Lnbisdk/ev;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    const-string v1, "config.locale"

    invoke-interface {v0, v1, p1}, Lnbisdk/ev;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final launchURL(Ljava/lang/String;ZLandroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lnbisdk/bt$3;

    invoke-direct {v2, p0}, Lnbisdk/bt$3;-><init>(Lnbisdk/bt;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lnbisdk/bt;->zY:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final n(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    invoke-virtual {v0, p1}, Lnbisdk/bt$c;->k(Landroid/content/Context;)V

    return-void
.end method

.method public final nE()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->zY:Landroid/content/Context;

    return-object v0
.end method

.method public final nF()Lnbisdk/ev;
    .locals 3

    new-instance v1, Lnbisdk/av;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lnbisdk/av;-><init>(I)V

    iget-object v0, p0, Lnbisdk/bt;->zX:Lnbisdk/ev;

    const-string v2, "config.user.identifier"

    invoke-interface {v0, v2}, Lnbisdk/ev;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lnbisdk/av;->j(Ljava/lang/String;)V

    return-object v1
.end method

.method public final nG()Lnbisdk/kd;
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->zZ:Lnbisdk/kd;

    return-object v0
.end method

.method public final nH()Z
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x20

    iget-object v0, p0, Lnbisdk/bt;->zY:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nim.VZNavigator.app2app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v0, "com.nim.VZNavigator.app2app"

    iput-object v0, p0, Lnbisdk/bt;->Ag:Ljava/lang/String;

    const-string v0, "vznavigator:"

    iput-object v0, p0, Lnbisdk/bt;->Ah:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lnbisdk/bt;->Ag:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nim.navbuilder.app2app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "com.nim.navbuilder.app2app"

    iput-object v0, p0, Lnbisdk/bt;->Ag:Ljava/lang/String;

    const-string v0, "atlasbooknavigator:"

    iput-object v0, p0, Lnbisdk/bt;->Ah:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lnbisdk/bt;->Ag:Ljava/lang/String;

    iput-object v4, p0, Lnbisdk/bt;->Ah:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final nJ()Lnbisdk/dz;
    .locals 1

    iget-object v0, p0, Lnbisdk/bt;->zW:Lnbisdk/dz;

    return-object v0
.end method

.method public final nK()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/bt;->zY:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.nbi.remote.ITileService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final onLowMemory()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnbisdk/bt;->Aa:Lnbisdk/bt$c;

    invoke-virtual {v0}, Lnbisdk/bt$c;->ll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final declared-synchronized setNetworkListener(Lcom/nbi/common/NBINetworkListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lnbisdk/bt;->Aj:Lcom/nbi/common/NBINetworkListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

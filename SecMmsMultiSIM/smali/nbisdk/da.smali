.class public final Lnbisdk/da;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/da$a;
    }
.end annotation


# static fields
.field private static lL:Lnbisdk/da;


# instance fields
.field private lM:Lcom/nbi/remote/ServiceStateListener;

.field private lN:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/da$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/da;->lL:Lnbisdk/da;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/da;->lM:Lcom/nbi/remote/ServiceStateListener;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/da;->lN:Ljava/util/Vector;

    return-void
.end method

.method static synthetic a(Lnbisdk/da;)Lcom/nbi/remote/ServiceStateListener;
    .locals 1

    iget-object v0, p0, Lnbisdk/da;->lM:Lcom/nbi/remote/ServiceStateListener;

    return-object v0
.end method

.method private static a(Lnbisdk/da$a;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnbisdk/da$a;->fj:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return v0
.end method

.method static synthetic a(Lnbisdk/da;Lnbisdk/da$a;)Z
    .locals 3

    iget-object v0, p1, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lnbisdk/da$a;->fj:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lnbisdk/da;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/da;->lN:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic b(Lnbisdk/da;Lnbisdk/da$a;)Z
    .locals 1

    invoke-static {p1}, Lnbisdk/da;->a(Lnbisdk/da$a;)Z

    move-result v0

    return v0
.end method

.method public static hc()Lnbisdk/da;
    .locals 1

    sget-object v0, Lnbisdk/da;->lL:Lnbisdk/da;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/da;

    invoke-direct {v0}, Lnbisdk/da;-><init>()V

    sput-object v0, Lnbisdk/da;->lL:Lnbisdk/da;

    :cond_0
    sget-object v0, Lnbisdk/da;->lL:Lnbisdk/da;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/da$a;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_0
    iget-object v0, p0, Lnbisdk/da;->lN:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/da;->lN:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/da$a;

    iget-object v2, v0, Lnbisdk/da$a;->fi:Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    iget-object v2, v0, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v2, Lnbisdk/da$a;

    invoke-direct {v2, p0, v0}, Lnbisdk/da$a;-><init>(Lnbisdk/da;Lnbisdk/da$a;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iput-boolean v3, v0, Lnbisdk/da$a;->fk:Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lnbisdk/da;->lN:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/da$a;

    iget-object v5, v0, Lnbisdk/da$a;->fj:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lnbisdk/da$a;->fi:Landroid/content/ServiceConnection;

    if-ne v5, p3, :cond_0

    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    new-instance v0, Lnbisdk/da$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lnbisdk/da$a;-><init>(Lnbisdk/da;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    invoke-static {v0}, Lnbisdk/da;->a(Lnbisdk/da$a;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    iget-object v2, p0, Lnbisdk/da;->lN:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v3

    move v3, v2

    goto :goto_0
.end method

.method public final setServiceListener(Lcom/nbi/remote/ServiceStateListener;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/da;->lM:Lcom/nbi/remote/ServiceStateListener;

    return-void
.end method

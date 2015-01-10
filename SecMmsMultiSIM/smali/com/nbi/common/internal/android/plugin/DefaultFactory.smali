.class public Lcom/nbi/common/internal/android/plugin/DefaultFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/internal/android/plugin/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig$5f8ced22(Landroid/content/Context;Ljava/lang/String;)Lnbisdk/ev;
    .locals 1

    new-instance v0, Lnbisdk/la;

    invoke-direct {v0, p1, p2}, Lnbisdk/la;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPAL(Landroid/content/Context;)Lnbisdk/dz;
    .locals 1

    new-instance v0, Lnbisdk/wr;

    invoke-direct {v0, p1}, Lnbisdk/wr;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

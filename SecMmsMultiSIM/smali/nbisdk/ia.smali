.class public final Lnbisdk/ia;
.super Ljava/lang/Object;


# static fields
.field private static mD:Lnbisdk/ia;


# instance fields
.field private eb:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnbisdk/ia;->eb:Landroid/os/Handler;

    return-void
.end method

.method public static hB()Lnbisdk/ia;
    .locals 1

    sget-object v0, Lnbisdk/ia;->mD:Lnbisdk/ia;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/ia;

    invoke-direct {v0}, Lnbisdk/ia;-><init>()V

    sput-object v0, Lnbisdk/ia;->mD:Lnbisdk/ia;

    :cond_0
    sget-object v0, Lnbisdk/ia;->mD:Lnbisdk/ia;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/ia;->eb:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

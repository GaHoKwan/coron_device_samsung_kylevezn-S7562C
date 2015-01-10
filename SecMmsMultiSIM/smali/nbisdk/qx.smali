.class public abstract Lnbisdk/qx;
.super Ljava/lang/Object;


# static fields
.field private static wC:Lnbisdk/qx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnbisdk/h;Lnbisdk/ze;Lnbisdk/mu;)V
    .locals 1

    sget-object v0, Lnbisdk/qx;->wC:Lnbisdk/qx;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/rr;

    invoke-direct {v0}, Lnbisdk/rr;-><init>()V

    sput-object v0, Lnbisdk/qx;->wC:Lnbisdk/qx;

    :cond_0
    sget-object v0, Lnbisdk/qx;->wC:Lnbisdk/qx;

    invoke-virtual {v0, p0, p1, p2}, Lnbisdk/qx;->b(Lnbisdk/h;Lnbisdk/ze;Lnbisdk/mu;)V

    return-void
.end method


# virtual methods
.method protected abstract b(Lnbisdk/h;Lnbisdk/ze;Lnbisdk/mu;)V
.end method

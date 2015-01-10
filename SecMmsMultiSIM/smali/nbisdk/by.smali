.class final Lnbisdk/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic dn:Lnbisdk/az;


# direct methods
.method constructor <init>(Lnbisdk/az;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/by;->dn:Lnbisdk/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnbisdk/by;->dn:Lnbisdk/az;

    iget-object v0, v0, Lnbisdk/az;->cn:Lnbisdk/jo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/by;->dn:Lnbisdk/az;

    iget-object v0, v0, Lnbisdk/az;->cn:Lnbisdk/jo;

    invoke-virtual {v0}, Lnbisdk/jo;->requestLocationFix()Z

    :cond_0
    return-void
.end method

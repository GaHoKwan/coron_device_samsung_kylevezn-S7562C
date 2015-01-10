.class final Lnbisdk/au$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/au$1;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jv:Lnbisdk/au$1;


# direct methods
.method constructor <init>(Lnbisdk/au$1;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/au$1$1;->jv:Lnbisdk/au$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/au$1$1;->jv:Lnbisdk/au$1;

    iget-object v0, v0, Lnbisdk/au$1;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->d(Lnbisdk/au;)Lnbisdk/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$1$1;->jv:Lnbisdk/au$1;

    iget-object v0, v0, Lnbisdk/au$1;->bL:Lnbisdk/au;

    invoke-virtual {v0, v1, v1}, Lnbisdk/au;->e(ZZ)V

    :cond_0
    return-void
.end method

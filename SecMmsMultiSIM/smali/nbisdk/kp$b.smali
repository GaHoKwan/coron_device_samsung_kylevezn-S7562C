.class final Lnbisdk/kp$b;
.super Lnbisdk/ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/kp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private qe:Lnbisdk/fb;


# direct methods
.method public constructor <init>(Lnbisdk/kp;Lnbisdk/fb;)V
    .locals 1

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kp$b;->qe:Lnbisdk/fb;

    iput-object p2, p0, Lnbisdk/kp$b;->qe:Lnbisdk/fb;

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 1

    iget-object v0, p0, Lnbisdk/kp$b;->qe:Lnbisdk/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/kp$b;->qe:Lnbisdk/fb;

    invoke-virtual {v0}, Lnbisdk/fb;->ao()Z

    :cond_0
    return-void
.end method

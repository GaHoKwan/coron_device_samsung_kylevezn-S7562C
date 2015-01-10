.class final Lnbisdk/zg;
.super Lnbisdk/wo;


# instance fields
.field public aG:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/yv;)V
    .locals 4

    iget-wide v0, p1, Lnbisdk/yv;->bp:J

    invoke-virtual {p0, v0, v1}, Lnbisdk/wo;->b(J)V

    iget-wide v0, p0, Lnbisdk/zg;->aG:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnbisdk/zg;->aG:J

    return-void
.end method

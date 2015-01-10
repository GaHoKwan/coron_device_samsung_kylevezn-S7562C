.class final Lnbisdk/au$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic bL:Lnbisdk/au;

.field private st:J

.field private su:J

.field private sv:Ljava/util/Timer;

.field private sw:I


# direct methods
.method constructor <init>(Lnbisdk/au;)V
    .locals 6

    iput-object p1, p0, Lnbisdk/au$c;->bL:Lnbisdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/au$c;->st:J

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/au$c;->sw:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnbisdk/au$c;->sv:Ljava/util/Timer;

    iget-object v0, p0, Lnbisdk/au$c;->sv:Ljava/util/Timer;

    new-instance v1, Lnbisdk/au$c$1;

    invoke-direct {v1, p0, p1}, Lnbisdk/au$c$1;-><init>(Lnbisdk/au$c;Lnbisdk/au;)V

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic a(Lnbisdk/au$c;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lnbisdk/au$c;->sw:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnbisdk/au$c;->st:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    :cond_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnbisdk/au$c;->su:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1
.end method

.method static synthetic b(Lnbisdk/au$c;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/au$c;->bL:Lnbisdk/au;

    invoke-static {v2}, Lnbisdk/au;->d(Lnbisdk/au;)Lnbisdk/ct;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lnbisdk/au$c;->sw:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    iget-wide v2, p0, Lnbisdk/au$c;->st:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lnbisdk/au$c;->su:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$c;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->h(Lnbisdk/au;)Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cc;->co()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnbisdk/au$c;->sw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnbisdk/au$c;->sw:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/au$c;->st:J

    iget-object v0, p0, Lnbisdk/au$c;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->d(Lnbisdk/au;)Lnbisdk/ct;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Lnbisdk/au$d;->e(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method final destroy()V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$c;->sv:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$c;->sv:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lnbisdk/au$c;->sv:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/au$c;->sv:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method final jU()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/au$c;->st:J

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/au$c;->sw:I

    return-void
.end method

.method final jV()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/au$c;->su:J

    return-void
.end method

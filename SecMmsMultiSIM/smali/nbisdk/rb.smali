.class public final Lnbisdk/rb;
.super Ljava/lang/Object;


# static fields
.field static wH:[Ljava/lang/String;

.field static wI:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "search-query-event"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "search-detail-event"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "map-event"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "place-message-event"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "call-event"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "add-favorites-event"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "route-request-event"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "route-reply-event"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "route-state-event"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gps-probes-event"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "impression-event"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "facebook-update-event"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "wifi-probes-event"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "feedback-event"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "app-error-event"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nav-invocation-event"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "coupon-analytics-action-event"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "weburl-event"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "arrival-event"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "asr-event"

    aput-object v2, v0, v1

    sput-object v0, Lnbisdk/rb;->wH:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    sput-object v0, Lnbisdk/rb;->wI:[Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static P()V
    .locals 2

    invoke-static {}, Lnbisdk/js$a;->mj()Lnbisdk/js;

    move-result-object v0

    new-instance v1, Lnbisdk/sj;

    invoke-direct {v1, v0}, Lnbisdk/sj;-><init>(Lnbisdk/js;)V

    invoke-static {v1}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    return-void
.end method

.method public static a(Lnbisdk/dg;)I
    .locals 1

    invoke-static {}, Lnbisdk/js$a;->mj()Lnbisdk/js;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/js;->a(Lnbisdk/dg;)I

    move-result v0

    return v0
.end method

.method public static a(IF)V
    .locals 1

    invoke-static {}, Lnbisdk/js$a;->mj()Lnbisdk/js;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnbisdk/js;->a(IF)V

    return-void
.end method

.method public static a(Ljava/lang/String;IF)V
    .locals 1

    invoke-static {}, Lnbisdk/js$a;->mj()Lnbisdk/js;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnbisdk/js;->a(Ljava/lang/String;IF)V

    return-void
.end method

.method public static a(Lnbisdk/cs;Lnbisdk/cs;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lnbisdk/js$a;->mj()Lnbisdk/js;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnbisdk/js;->a(Lnbisdk/cs;Lnbisdk/cs;Ljava/lang/String;)V

    return-void
.end method

.method static b()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lnbisdk/rb;->wI:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lnbisdk/rb;->wI:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lnbisdk/hd;)V
    .locals 1

    invoke-static {}, Lnbisdk/js$a;->mj()Lnbisdk/js;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/js;->b(Lnbisdk/hd;)V

    return-void
.end method

.method public static b(Lnbisdk/jv;)V
    .locals 1

    invoke-static {}, Lnbisdk/js$a;->mj()Lnbisdk/js;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/js;->b(Lnbisdk/jv;)V

    return-void
.end method

.method public static f(Lnbisdk/se;)V
    .locals 1

    invoke-static {}, Lnbisdk/js$a;->mj()Lnbisdk/js;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/js$a;->mj()Lnbisdk/js;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/js;->f(Lnbisdk/se;)V

    :cond_0
    return-void
.end method

.method static t(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lnbisdk/rb;->wH:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lnbisdk/rb;->wH:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lnbisdk/rb;->wI:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

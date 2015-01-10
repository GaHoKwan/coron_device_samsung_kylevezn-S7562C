.class public final Lnbisdk/jg;
.super Ljava/lang/Object;


# static fields
.field private static bp:J

.field private static cT:I

.field private static op:Lnbisdk/ss;

.field private static oq:Lnbisdk/rp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lnbisdk/jg;->bp:J

    const/4 v0, 0x0

    sput v0, Lnbisdk/jg;->cT:I

    new-instance v0, Lnbisdk/ss;

    invoke-direct {v0}, Lnbisdk/ss;-><init>()V

    sput-object v0, Lnbisdk/jg;->op:Lnbisdk/ss;

    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    sput-object v0, Lnbisdk/jg;->oq:Lnbisdk/rp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;JB)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1, p2, p3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 3

    const-wide v0, 0x20000000000L

    const/16 v2, 0x8

    invoke-static {p0, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    return-void
.end method

.method public static a(Ljava/lang/String;JB)V
    .locals 3

    const-wide/16 v1, 0x0

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    cmp-long v0, v1, v1

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;J)V
    .locals 3

    const-wide/high16 v0, 0x8

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;JB)V
    .locals 3

    const-wide/16 v1, 0x0

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    cmp-long v0, v1, v1

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public static ay(Ljava/lang/String;)V
    .locals 3

    const-wide/high16 v0, -0x8000

    const/16 v2, 0x8

    invoke-static {p0, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    return-void
.end method

.method public static f(Ljava/lang/Throwable;)V
    .locals 3

    const-wide/high16 v0, -0x8000

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    return-void
.end method

.method public static i(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(J)Lnbisdk/ir;
    .locals 1

    new-instance v0, Lnbisdk/ir;

    invoke-direct {v0, p0, p1}, Lnbisdk/ir;-><init>(J)V

    return-object v0
.end method

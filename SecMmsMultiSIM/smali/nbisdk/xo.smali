.class public final Lnbisdk/xo;
.super Ljava/lang/Object;


# static fields
.field public static eJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnbisdk/xo;->eJ:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 3

    sget-boolean v0, Lnbisdk/xo;->eJ:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x1000

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/Object;)V
    .locals 3

    sget-boolean v0, Lnbisdk/xo;->eJ:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x1000

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Object;JB)V

    :cond_0
    return-void
.end method

.method public static h(Ljava/lang/Object;)V
    .locals 3

    sget-boolean v0, Lnbisdk/xo;->eJ:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x400

    const/16 v2, 0x8

    invoke-static {p0, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Object;JB)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 3

    sget-boolean v0, Lnbisdk/xo;->eJ:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x400

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Object;JB)V

    :cond_0
    return-void
.end method

.class public final Lnbisdk/sx;
.super Ljava/lang/Object;


# static fields
.field private static jc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lnbisdk/sx;->jc:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Lnbisdk/ql;Ljava/lang/String;)[B
    .locals 2

    sget-object v0, Lnbisdk/sx;->jc:[B

    :try_start_0
    invoke-virtual {p0, p1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B
    :try_end_0
    .catch Lnbisdk/ro; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

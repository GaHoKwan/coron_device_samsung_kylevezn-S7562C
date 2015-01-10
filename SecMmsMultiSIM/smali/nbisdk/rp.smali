.class public final Lnbisdk/rp;
.super Ljava/lang/Object;


# static fields
.field private static wV:Lnbisdk/rp;


# instance fields
.field public wO:I

.field public wP:I

.field public wQ:I

.field public wR:I

.field public wS:I

.field public wT:I

.field public wU:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnbisdk/rp;

    invoke-direct {v0}, Lnbisdk/rp;-><init>()V

    sput-object v0, Lnbisdk/rp;->wV:Lnbisdk/rp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mk()Lnbisdk/rp;
    .locals 1

    sget-object v0, Lnbisdk/rp;->wV:Lnbisdk/rp;

    return-object v0
.end method

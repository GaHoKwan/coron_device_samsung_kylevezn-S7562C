.class public final Lnbisdk/pl;
.super Ljava/lang/Object;


# static fields
.field public static MAX_PRIORITY:I

.field public static MIN_PRIORITY:I

.field public static uT:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lnbisdk/pl;->MIN_PRIORITY:I

    const/4 v0, 0x7

    sput v0, Lnbisdk/pl;->MAX_PRIORITY:I

    const-wide/high16 v0, 0x4008

    sput-wide v0, Lnbisdk/pl;->uT:D

    return-void
.end method


# virtual methods
.method public final ln()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

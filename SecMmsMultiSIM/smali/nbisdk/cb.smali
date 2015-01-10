.class public final Lnbisdk/cb;
.super Ljava/lang/Object;


# instance fields
.field public do:[B

.field public dp:I

.field public dq:I

.field public dr:J

.field public ds:[B

.field public dt:I

.field public du:I

.field public dv:J

.field public dw:Ljava/lang/String;

.field dx:Lnbisdk/gm;

.field dy:Lnbisdk/gb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/gb;

    invoke-direct {v0}, Lnbisdk/gb;-><init>()V

    iput-object v0, p0, Lnbisdk/cb;->dy:Lnbisdk/gb;

    return-void
.end method

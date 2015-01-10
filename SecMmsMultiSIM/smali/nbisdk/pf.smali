.class public final Lnbisdk/pf;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private ax:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/pf;->N:Ljava/lang/String;

    return-void
.end method

.method public final aZ(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/pf;->ax:Ljava/lang/String;

    return-void
.end method

.method public final ba(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/pf;->L:Ljava/lang/String;

    return-void
.end method

.method public final getBrandName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/pf;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/pf;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/pf;->ax:Ljava/lang/String;

    return-object v0
.end method

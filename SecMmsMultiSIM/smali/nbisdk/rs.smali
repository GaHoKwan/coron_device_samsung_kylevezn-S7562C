.class public final Lnbisdk/rs;
.super Lnbisdk/km;

# interfaces
.implements Lnbisdk/kb;


# instance fields
.field aB:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/km;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/rs;->aB:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final aH(I)Lnbisdk/jb;
    .locals 1

    iget-object v0, p0, Lnbisdk/rs;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jb;

    return-object v0
.end method

.method public final getStoreCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/rs;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

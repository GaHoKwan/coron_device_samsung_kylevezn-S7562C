.class public final Lnbisdk/xv;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/lr;


# instance fields
.field Dt:Lnbisdk/jb;

.field aR:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aQ(I)Lnbisdk/xz;
    .locals 1

    iget-object v0, p0, Lnbisdk/xv;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/xz;

    return-object v0
.end method

.method public final getCouponCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/xv;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final jv()Lnbisdk/jb;
    .locals 1

    iget-object v0, p0, Lnbisdk/xv;->Dt:Lnbisdk/jb;

    return-object v0
.end method

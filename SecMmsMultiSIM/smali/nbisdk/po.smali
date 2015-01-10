.class public final Lnbisdk/po;
.super Lnbisdk/lv;


# instance fields
.field private uU:Lnbisdk/fp;

.field private uV:I


# direct methods
.method public constructor <init>(Lnbisdk/fp;I)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lnbisdk/lv;-><init>(I)V

    iput-object p1, p0, Lnbisdk/po;->uU:Lnbisdk/fp;

    iput p2, p0, Lnbisdk/po;->uV:I

    return-void
.end method


# virtual methods
.method public final lx()Lnbisdk/fp;
    .locals 1

    iget-object v0, p0, Lnbisdk/po;->uU:Lnbisdk/fp;

    return-object v0
.end method

.method public final ly()I
    .locals 1

    iget v0, p0, Lnbisdk/po;->uV:I

    return v0
.end method

.class final Lnbisdk/ac$a;
.super Lnbisdk/ns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic uA:Lnbisdk/ac;


# direct methods
.method constructor <init>(Lnbisdk/ac;Lnbisdk/wa;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ac$a;->uA:Lnbisdk/ac;

    invoke-direct {p0, p2}, Lnbisdk/ns;-><init>(Lnbisdk/wa;)V

    return-void
.end method


# virtual methods
.method protected final a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lnbisdk/ns;->a([BII)I

    move-result v0

    iget-object v1, p0, Lnbisdk/ac$a;->uA:Lnbisdk/ac;

    invoke-static {v1}, Lnbisdk/ac;->a(Lnbisdk/ac;)V

    return v0
.end method

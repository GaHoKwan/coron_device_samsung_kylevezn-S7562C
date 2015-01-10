.class final Lnbisdk/ub;
.super Ljava/lang/Object;


# instance fields
.field public ax:Ljava/lang/String;

.field public ay:I

.field public bx:I

.field public cJ:I


# direct methods
.method constructor <init>(Ljava/io/DataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ub;->ax:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnbisdk/ub;->cJ:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnbisdk/ub;->ay:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnbisdk/ub;->bx:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/ub;->ax:Ljava/lang/String;

    iput p2, p0, Lnbisdk/ub;->cJ:I

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/ub;->ay:I

    iput p4, p0, Lnbisdk/ub;->bx:I

    return-void
.end method

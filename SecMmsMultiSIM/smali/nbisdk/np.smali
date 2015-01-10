.class public final Lnbisdk/np;
.super Ljava/io/IOException;


# instance fields
.field private ub:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p3, p0, Lnbisdk/np;->ub:I

    return-void
.end method


# virtual methods
.method public final kW()I
    .locals 1

    iget v0, p0, Lnbisdk/np;->ub:I

    return v0
.end method

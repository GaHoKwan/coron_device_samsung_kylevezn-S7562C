.class public Lnbisdk/dm;
.super Ljava/lang/Object;


# instance fields
.field L:Ljava/lang/String;

.field fS:Lnbisdk/al;

.field fT:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/al;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/dm;->fS:Lnbisdk/al;

    iput-object p2, p0, Lnbisdk/dm;->fT:Ljava/io/InputStream;

    iput-object p3, p0, Lnbisdk/dm;->L:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final es()Lnbisdk/al;
    .locals 1

    iget-object v0, p0, Lnbisdk/dm;->fS:Lnbisdk/al;

    return-object v0
.end method

.method public final et()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lnbisdk/dm;->fT:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dm;->L:Ljava/lang/String;

    return-object v0
.end method

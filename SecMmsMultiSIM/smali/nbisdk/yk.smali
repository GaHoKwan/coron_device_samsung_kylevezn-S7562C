.class public final Lnbisdk/yk;
.super Ljava/lang/Object;


# instance fields
.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final ax:Ljava/lang/String;

.field private final ce:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/yk;->N:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/yk;->ax:Ljava/lang/String;

    iput-object p3, p0, Lnbisdk/yk;->L:Ljava/lang/String;

    iput-object p4, p0, Lnbisdk/yk;->M:Ljava/lang/String;

    iput-object p5, p0, Lnbisdk/yk;->ce:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/io/DataOutputStream;Lnbisdk/yk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lnbisdk/yk;->N:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/yk;->ax:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/yk;->L:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/yk;->M:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/yk;->ce:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final oT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/yk;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final oU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/yk;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final oV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/yk;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final oW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/yk;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final oX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/yk;->ce:Ljava/lang/String;

    return-object v0
.end method

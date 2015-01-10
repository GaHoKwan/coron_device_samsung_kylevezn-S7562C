.class public final Lnbisdk/ie;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private aG:J

.field private bE:I

.field private bx:I

.field private cD:J

.field private cf:Ljava/lang/String;

.field private cg:Ljava/lang/String;

.field private ch:Ljava/lang/String;

.field private ci:Ljava/lang/String;

.field private cj:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/ie;->bE:I

    return-void
.end method

.method static a(Ljava/io/DataOutputStream;Lnbisdk/ie;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p1, Lnbisdk/ie;->bx:I

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v0, p1, Lnbisdk/ie;->aG:J

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p1, Lnbisdk/ie;->L:Ljava/lang/String;

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/ie;->M:Ljava/lang/String;

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/ie;->cf:Ljava/lang/String;

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/ie;->cg:Ljava/lang/String;

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/ie;->ch:Ljava/lang/String;

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/ie;->ci:Ljava/lang/String;

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/ie;->cj:Ljava/lang/String;

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v0, p1, Lnbisdk/ie;->cD:J

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method static l(Ljava/io/DataInputStream;)Lnbisdk/ie;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnbisdk/ie;

    invoke-direct {v0}, Lnbisdk/ie;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/ie;->bx:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/ie;->aG:J

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ie;->L:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ie;->M:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ie;->cf:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ie;->cg:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ie;->ch:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ie;->ci:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ie;->cj:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/ie;->cD:J

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lnbisdk/ie;

    if-eqz v1, :cond_0

    check-cast p1, Lnbisdk/ie;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hQ()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lnbisdk/ie;->bx:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "gps-data"

    goto :goto_0

    :pswitch_1
    const-string v0, "gps-privacy"

    goto :goto_0

    :pswitch_2
    const-string v0, "gps-device"

    goto :goto_0

    :pswitch_3
    const-string v0, "network"

    goto :goto_0

    :pswitch_4
    const-string v0, "client"

    goto :goto_0

    :pswitch_5
    const-string v0, "file-system"

    goto :goto_0

    :pswitch_6
    const-string v0, "other"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final hR()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/ie;->aG:J

    return-wide v0
.end method

.method public final hS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ie;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final hT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ie;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final hU()Ljava/util/Vector;
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lnbisdk/ie;->bx:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lnbisdk/ie;->cf:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lnbisdk/vl;

    const-string v2, "mode"

    iget-object v3, p0, Lnbisdk/ie;->cf:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lnbisdk/ie;->cg:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lnbisdk/vl;

    const-string v2, "fix-type"

    iget-object v3, p0, Lnbisdk/ie;->cg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lnbisdk/ie;->ch:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lnbisdk/vl;

    const-string v2, "host"

    iget-object v3, p0, Lnbisdk/ie;->ch:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lnbisdk/ie;->ci:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lnbisdk/vl;

    const-string v2, "ip-address"

    iget-object v3, p0, Lnbisdk/ie;->ci:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lnbisdk/ie;->cj:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lnbisdk/vl;

    const-string v2, "filename"

    iget-object v3, p0, Lnbisdk/ie;->cj:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Lnbisdk/vl;

    const-string v2, "nav-session-id"

    iget-wide v3, p0, Lnbisdk/ie;->cD:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lnbisdk/ie;->bx:I

    add-int/lit8 v0, v0, 0x19

    iget-wide v2, p0, Lnbisdk/ie;->aG:J

    iget-wide v4, p0, Lnbisdk/ie;->cD:J

    add-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lnbisdk/ie;->L:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v2, v0

    iget-object v0, p0, Lnbisdk/ie;->M:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, p0, Lnbisdk/ie;->cg:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v2, v0

    iget-object v0, p0, Lnbisdk/ie;->cf:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    iget-object v0, p0, Lnbisdk/ie;->ch:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v2, v0

    iget-object v0, p0, Lnbisdk/ie;->ci:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    iget-object v2, p0, Lnbisdk/ie;->cj:Ljava/lang/String;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ie;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/ie;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnbisdk/ie;->cg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lnbisdk/ie;->cf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lnbisdk/ie;->ch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lnbisdk/ie;->ci:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lnbisdk/ie;->cj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6
.end method

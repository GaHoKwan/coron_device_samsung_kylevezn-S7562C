.class public final Lnbisdk/fa;
.super Ljava/lang/Object;


# instance fields
.field private V:I

.field private ay:I

.field private bE:I

.field private bj:I

.field private bp:J

.field private cB:I

.field private cC:I

.field private cJ:I

.field private cT:I

.field private cU:I

.field private cZ:I

.field private da:I

.field private dc:I

.field private iG:Ljava/util/Vector;

.field private iH:Ljava/util/Vector;

.field private ip:I

.field private iq:I

.field private ir:I

.field private is:I

.field private it:I

.field private iu:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lnbisdk/fa;->cZ:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/fa;->iG:Ljava/util/Vector;

    return-void
.end method

.method private static a(Ljava/io/DataInputStream;Lnbisdk/fa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnbisdk/fa;->aa(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/fa;->iG:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lnbisdk/fa;->iG:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e([B)Lnbisdk/fa;
    .locals 5

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lnbisdk/fa;

    invoke-direct {v0}, Lnbisdk/fa;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->cT:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->ay:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->cJ:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->cU:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->bj:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->V:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->cB:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->cC:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->da:I

    invoke-static {v3, v0}, Lnbisdk/fa;->a(Ljava/io/DataInputStream;Lnbisdk/fa;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->dc:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->it:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->is:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->ir:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/fa;->iu:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    :try_start_3
    invoke-static {v1}, Lnbisdk/jg;->f(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final Q(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->cT:I

    return-void
.end method

.method public final R(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->ay:I

    return-void
.end method

.method public final S(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->cJ:I

    return-void
.end method

.method public final T(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->cU:I

    return-void
.end method

.method public final U(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->bj:I

    return-void
.end method

.method public final V(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->V:I

    return-void
.end method

.method public final W(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->cB:I

    return-void
.end method

.method public final X(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->cC:I

    return-void
.end method

.method public final Y(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->bE:I

    return-void
.end method

.method public final Z(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->dc:I

    return-void
.end method

.method public final a(Lnbisdk/uh;)I
    .locals 1

    invoke-virtual {p1}, Lnbisdk/uh;->ng()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lnbisdk/uh;->nh()Lnbisdk/cs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/cs;->dd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnbisdk/fa;->cU:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lnbisdk/fa;->bj:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lnbisdk/fa;->V:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lnbisdk/fa;->cB:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lnbisdk/fa;->dc:I

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lnbisdk/fa;->cZ:I

    goto :goto_0

    :pswitch_6
    iget v0, p0, Lnbisdk/fa;->da:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final aa(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->ir:I

    return-void
.end method

.method public final aa(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/fa;->iG:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/fa;->iG:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final ab(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->is:I

    return-void
.end method

.method public final ac(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->it:I

    return-void
.end method

.method public final ad(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->iu:I

    return-void
.end method

.method public final ae(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->cZ:I

    return-void
.end method

.method public final af(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->da:I

    return-void
.end method

.method public final ag(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->ip:I

    return-void
.end method

.method public final ah(I)V
    .locals 0

    iput p1, p0, Lnbisdk/fa;->iq:I

    return-void
.end method

.method public final e(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/fa;->bp:J

    return-void
.end method

.method public final e(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/fa;->iH:Ljava/util/Vector;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lnbisdk/fa;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lnbisdk/fa;

    iget v1, p0, Lnbisdk/fa;->cT:I

    iget v2, p1, Lnbisdk/fa;->cT:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->ay:I

    iget v2, p1, Lnbisdk/fa;->ay:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->cJ:I

    iget v2, p1, Lnbisdk/fa;->cJ:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->cU:I

    iget v2, p1, Lnbisdk/fa;->cU:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->bj:I

    iget v2, p1, Lnbisdk/fa;->bj:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->V:I

    iget v2, p1, Lnbisdk/fa;->V:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->cB:I

    iget v2, p1, Lnbisdk/fa;->cB:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->cC:I

    iget v2, p1, Lnbisdk/fa;->cC:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->ir:I

    iget v2, p1, Lnbisdk/fa;->ir:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->it:I

    iget v2, p1, Lnbisdk/fa;->it:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->is:I

    iget v2, p1, Lnbisdk/fa;->is:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->dc:I

    iget v2, p1, Lnbisdk/fa;->dc:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->iu:I

    iget v2, p1, Lnbisdk/fa;->iu:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->bE:I

    iget v2, p1, Lnbisdk/fa;->bE:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnbisdk/fa;->da:I

    iget v2, p1, Lnbisdk/fa;->da:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnbisdk/fa;->iG:Ljava/util/Vector;

    iget-object v2, p1, Lnbisdk/fa;->iG:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fD()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->cT:I

    return v0
.end method

.method public final fE()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->ay:I

    return v0
.end method

.method public final fF()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->cJ:I

    return v0
.end method

.method public final fG()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->bj:I

    return v0
.end method

.method public final fH()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->V:I

    return v0
.end method

.method public final fI()[B
    .locals 4

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget v1, p0, Lnbisdk/fa;->cT:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->ay:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->cJ:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->cU:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->bj:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->V:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->cB:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->cC:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->da:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0, v3}, Lnbisdk/fa;->b(Ljava/io/DataOutputStream;)V

    iget v1, p0, Lnbisdk/fa;->dc:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->it:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->is:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->ir:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/fa;->iu:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lnbisdk/jg;->f(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_4
.end method

.method public final fJ()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/fa;->iH:Ljava/util/Vector;

    return-object v0
.end method

.method public final fK()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->bE:I

    return v0
.end method

.method public final fL()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->dc:I

    return v0
.end method

.method public final fM()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->ir:I

    return v0
.end method

.method public final fN()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->is:I

    return v0
.end method

.method public final fO()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->it:I

    return v0
.end method

.method public final fP()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->iu:I

    return v0
.end method

.method public final fQ()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->da:I

    return v0
.end method

.method public final fR()I
    .locals 1

    iget v0, p0, Lnbisdk/fa;->ip:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lnbisdk/fa;->cT:I

    add-int/lit8 v0, v0, 0x19

    iget v2, p0, Lnbisdk/fa;->ay:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->cJ:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->bE:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->cU:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->bj:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->V:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->cB:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->cC:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->cZ:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->da:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->ip:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->iq:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->dc:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->ir:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->is:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->it:I

    add-int/2addr v0, v2

    iget v2, p0, Lnbisdk/fa;->iu:I

    add-int/2addr v0, v2

    iget-wide v2, p0, Lnbisdk/fa;->bp:J

    long-to-int v2, v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lnbisdk/fa;->iG:Ljava/util/Vector;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Lnbisdk/fa;->iH:Ljava/util/Vector;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/fa;->iG:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnbisdk/fa;->iH:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Analytics:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->cT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->ay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->cJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->cU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->bj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->V:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->cB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->dc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->cZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->da:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/fa;->cC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lnbisdk/di;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private cT:I

.field private ce:Ljava/lang/String;

.field private cf:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lnbisdk/di;->cT:I

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-static {p2}, Lnbisdk/ju;->aE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/di;->L:Ljava/lang/String;

    if-nez p3, :cond_3

    const-string p3, ""

    :cond_3
    invoke-static {p3}, Lnbisdk/ju;->aE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/di;->M:Ljava/lang/String;

    invoke-static {p4}, Lnbisdk/ju;->aE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/io/DataInputStream;)Lnbisdk/di;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnbisdk/di;

    invoke-direct {v0}, Lnbisdk/di;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported data format version.  PhoneNumber only supports version 1."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/di;->cT:I

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/di;->L:Ljava/lang/String;

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/di;->M:Ljava/lang/String;

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/di;->cf:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final V(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/di;->cf:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lnbisdk/di;->cT:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/di;->L:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/di;->M:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/di;->cf:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public final ep()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/di;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final eq()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lnbisdk/di;->cT:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "primary"

    goto :goto_0

    :pswitch_1
    const-string v0, "secondary"

    goto :goto_0

    :pswitch_2
    const-string v0, "national"

    goto :goto_0

    :pswitch_3
    const-string v0, "fax"

    goto :goto_0

    :pswitch_4
    const-string v0, "mobile"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Lnbisdk/di;

    iget v1, p0, Lnbisdk/di;->cT:I

    iget v2, p1, Lnbisdk/di;->cT:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnbisdk/di;->L:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lnbisdk/di;->L:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lnbisdk/di;->L:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lnbisdk/di;->L:Ljava/lang/String;

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lnbisdk/di;->L:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lnbisdk/di;->L:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnbisdk/di;->L:Ljava/lang/String;

    iget-object v2, p1, Lnbisdk/di;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lnbisdk/di;->M:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_5
    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lnbisdk/di;->M:Ljava/lang/String;

    if-eqz v1, :cond_0

    :cond_6
    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lnbisdk/di;->M:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    iget-object v2, p1, Lnbisdk/di;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p1, Lnbisdk/di;->ce:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_8
    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lnbisdk/di;->ce:Ljava/lang/String;

    if-eqz v1, :cond_0

    :cond_9
    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p1, Lnbisdk/di;->ce:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    iget-object v2, p1, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final er()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/di;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/di;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lnbisdk/di;->cT:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lnbisdk/di;->cT:I

    add-int/lit16 v0, v0, 0x197

    iget-object v1, p0, Lnbisdk/di;->L:Ljava/lang/String;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lnbisdk/di;->L:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x25

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    goto :goto_2
.end method

.method public final set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Lnbisdk/di;->cT:I

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    invoke-static {p2}, Lnbisdk/ju;->aE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/di;->L:Ljava/lang/String;

    if-nez p3, :cond_5

    const-string p3, ""

    :cond_5
    invoke-static {p3}, Lnbisdk/ju;->aE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/di;->M:Ljava/lang/String;

    invoke-static {p4}, Lnbisdk/ju;->aE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lnbisdk/di;->cT:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x6

    const/16 v4, 0x2d

    const/4 v3, 0x3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnbisdk/di;->L:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/di;->L:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnbisdk/di;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_5

    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnbisdk/di;->M:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lnbisdk/di;->ce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

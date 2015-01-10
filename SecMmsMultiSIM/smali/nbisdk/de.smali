.class public Lnbisdk/de;
.super Ljava/lang/Object;


# instance fields
.field private fq:Lnbisdk/lc;

.field private fr:Ljava/util/Vector;

.field private fs:Ljava/util/Vector;

.field private ft:J

.field private fu:J

.field private fv:I

.field private fw:Ljava/util/Vector;

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lnbisdk/de;-><init>(Ljava/lang/String;Lnbisdk/lc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnbisdk/lc;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/de;->fw:Ljava/util/Vector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/de;->fu:J

    iput-object p1, p0, Lnbisdk/de;->name:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    return-void
.end method

.method public static d(Ljava/io/DataInputStream;)Lnbisdk/de;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lnbisdk/de;

    invoke-direct {v1}, Lnbisdk/de;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported data format version.  Place only supports version 1."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lnbisdk/lc;->q(Ljava/io/DataInputStream;)Lnbisdk/lc;

    move-result-object v0

    :cond_1
    iput-object v0, v1, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-static {p0}, Lnbisdk/gt;->i(Ljava/io/DataInputStream;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, v1, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-static {p0}, Lnbisdk/gt;->j(Ljava/io/DataInputStream;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, v1, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnbisdk/de;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lnbisdk/de;->ft:J

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lnbisdk/de;->fu:J

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v1, Lnbisdk/de;->id:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v1, Lnbisdk/de;->fv:I

    invoke-static {p0}, Lnbisdk/gt;->g(Ljava/io/DataInputStream;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, v1, Lnbisdk/de;->fw:Ljava/util/Vector;

    return-object v1
.end method


# virtual methods
.method public final C(I)Lnbisdk/di;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/di;

    return-object v0
.end method

.method public final D(I)Lnbisdk/qc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/qc;

    return-object v0
.end method

.method public final E(I)Lnbisdk/vl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/de;->fw:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    return-object v0
.end method

.method public final F(I)V
    .locals 0

    iput p1, p0, Lnbisdk/de;->fv:I

    return-void
.end method

.method public final R(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnbisdk/de;->fw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lnbisdk/de;->E(I)Lnbisdk/vl;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(ILnbisdk/di;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public final a(ILnbisdk/qc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lnbisdk/lc;->a(Ljava/io/DataOutputStream;)V

    :cond_0
    iget-object v4, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    if-eqz v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/di;

    invoke-virtual {v0, p1}, Lnbisdk/di;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    if-eqz v4, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/qc;

    invoke-virtual {v0, p1}, Lnbisdk/qc;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lnbisdk/de;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lnbisdk/de;->ft:J

    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v3, p0, Lnbisdk/de;->fu:J

    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget v0, p0, Lnbisdk/de;->id:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lnbisdk/de;->fv:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Lnbisdk/de;->fw:Ljava/util/Vector;

    if-eqz v3, :cond_6

    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_6
    if-ge v2, v1, :cond_7

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v0, p1}, Lnbisdk/vl;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    move v1, v2

    goto :goto_5

    :cond_7
    return-void
.end method

.method public final a(Lnbisdk/di;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lnbisdk/de;)V
    .locals 2

    iget-object v0, p1, Lnbisdk/de;->fq:Lnbisdk/lc;

    iput-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    iget-object v0, p1, Lnbisdk/de;->fs:Ljava/util/Vector;

    iput-object v0, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    iget-wide v0, p1, Lnbisdk/de;->fu:J

    iput-wide v0, p0, Lnbisdk/de;->fu:J

    iget v0, p1, Lnbisdk/de;->id:I

    iput v0, p0, Lnbisdk/de;->id:I

    iget v0, p1, Lnbisdk/de;->fv:I

    iput v0, p0, Lnbisdk/de;->fv:I

    iget-object v0, p1, Lnbisdk/de;->name:Ljava/lang/String;

    iput-object v0, p0, Lnbisdk/de;->name:Ljava/lang/String;

    iget-object v0, p1, Lnbisdk/de;->fr:Ljava/util/Vector;

    iput-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    iget-wide v0, p1, Lnbisdk/de;->ft:J

    iput-wide v0, p0, Lnbisdk/de;->ft:J

    iget-object v0, p1, Lnbisdk/de;->fw:Ljava/util/Vector;

    iput-object v0, p0, Lnbisdk/de;->fw:Ljava/util/Vector;

    return-void
.end method

.method public final b(Lnbisdk/vl;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->fw:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final ba()Lnbisdk/lc;
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    return-object v0
.end method

.method public final c(Lnbisdk/lc;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    return-void
.end method

.method public final c(Lnbisdk/qc;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearCategories()V
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public final clearPhoneNumbers()V
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/de;->fu:J

    return-void
.end method

.method public final d(Lnbisdk/lc;)V
    .locals 6

    const-wide/high16 v4, -0x8000

    const/16 v3, 0x8

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Place.updateLocation:"

    invoke-static {v0, v4, v5, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_0
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->jd()Lnbisdk/lc;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setAreaName(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setAddress(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setStreet(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCrossStreet(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCity(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getCounty()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getCounty()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCounty(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setState(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setPostal(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCountry(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setAirport(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/lc;->setLatitude(D)V

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/lc;->setLongitude(D)V

    iget-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setType(I)V

    :goto_0
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updated location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_b
    return-void

    :cond_c
    invoke-virtual {p1}, Lnbisdk/lc;->jd()Lnbisdk/lc;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    goto :goto_0
.end method

.method public final dP()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/de;->ft:J

    return-wide v0
.end method

.method public final dQ()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/de;->fu:J

    return-wide v0
.end method

.method public final dR()I
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->fw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final dS()I
    .locals 1

    iget v0, p0, Lnbisdk/de;->fv:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    instance-of v2, p1, Lnbisdk/de;

    if-eqz v2, :cond_b

    check-cast p1, Lnbisdk/de;

    iget-object v2, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v2}, Lnbisdk/lc;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lnbisdk/de;->fq:Lnbisdk/lc;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v2}, Lnbisdk/lc;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v3, p1, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v3, p1, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lnbisdk/de;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lnbisdk/de;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lnbisdk/de;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnbisdk/de;->name:Ljava/lang/String;

    iget-object v3, p1, Lnbisdk/de;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    if-nez v2, :cond_6

    iget-object v2, p1, Lnbisdk/de;->fq:Lnbisdk/lc;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    iget-object v3, p1, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v2, v3}, Lnbisdk/lc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_9

    iget-object v4, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getCategoriesCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lnbisdk/de;->id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumberCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/de;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/de;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xb9

    :goto_0
    iget-object v2, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    if-eqz v2, :cond_1

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v2}, Lnbisdk/lc;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_2

    mul-int/lit8 v2, v2, 0x25

    iget-object v4, p0, Lnbisdk/de;->fs:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    const/16 v0, 0xb9

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v0, v2, 0x25

    add-int/2addr v0, v3

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_3
    if-ge v0, v3, :cond_3

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lnbisdk/de;->fr:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return v1
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lnbisdk/de;->id:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/de;->name:Ljava/lang/String;

    return-void
.end method

.method public final setServerModTime(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/de;->ft:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnbisdk/de;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnbisdk/de;->fq:Lnbisdk/lc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lnbisdk/de;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lnbisdk/de;->fv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

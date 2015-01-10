.class final Lnbisdk/aa$a;
.super Lnbisdk/ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final V:I

.field private final cE:Lnbisdk/ai;

.field private final cF:Lnbisdk/ag;

.field private final cG:F


# direct methods
.method public constructor <init>(Lnbisdk/ag;Lnbisdk/ai;I)V
    .locals 1

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    iput-object p2, p0, Lnbisdk/aa$a;->cE:Lnbisdk/ai;

    iput-object p1, p0, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    invoke-virtual {p2}, Lnbisdk/ai;->aB()F

    move-result v0

    iput v0, p0, Lnbisdk/aa$a;->cG:F

    iput p3, p0, Lnbisdk/aa$a;->V:I

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 2

    iget v0, p0, Lnbisdk/aa$a;->V:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    iget-object v1, p0, Lnbisdk/aa$a;->cE:Lnbisdk/ai;

    invoke-virtual {v0, v1}, Lnbisdk/ag;->e(Lnbisdk/ai;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    iget v1, p0, Lnbisdk/aa$a;->cG:F

    invoke-virtual {v0, v1}, Lnbisdk/ag;->a(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lnbisdk/aa$a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lnbisdk/aa$a;

    iget-object v2, p0, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    if-nez v2, :cond_4

    iget-object v2, p1, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lnbisdk/aa$a;->cE:Lnbisdk/ai;

    if-nez v2, :cond_5

    iget-object v2, p1, Lnbisdk/aa$a;->cE:Lnbisdk/ai;

    if-nez v2, :cond_3

    :goto_2
    iget v2, p0, Lnbisdk/aa$a;->V:I

    iget v3, p1, Lnbisdk/aa$a;->V:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lnbisdk/aa$a;->cG:F

    iget v3, p1, Lnbisdk/aa$a;->cG:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    iget-object v3, p1, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lnbisdk/aa$a;->cE:Lnbisdk/ai;

    iget-object v3, p1, Lnbisdk/aa$a;->cE:Lnbisdk/ai;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x19

    iget-object v2, p0, Lnbisdk/aa$a;->cE:Lnbisdk/ai;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Lnbisdk/aa$a;->V:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnbisdk/aa$a;->cE:Lnbisdk/ai;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lnbisdk/aa$a;->cE:Lnbisdk/ai;

    invoke-virtual {v2}, Lnbisdk/ai;->aB()F

    move-result v2

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetTask;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/aa$a;->V:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/aa$a;->cF:Lnbisdk/ag;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

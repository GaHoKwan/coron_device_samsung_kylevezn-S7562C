.class public Lnbisdk/h;
.super Ljava/lang/Object;


# instance fields
.field private Q:Lnbisdk/de;

.field private R:Lnbisdk/de;

.field private S:Lnbisdk/br;

.field private T:Lnbisdk/it;

.field private U:Lnbisdk/hg;

.field private V:I

.field private W:Z

.field private X:[B

.field private Y:Ljava/lang/String;

.field private Z:Z

.field private aa:Z

.field private ab:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/de;Lnbisdk/de;Lnbisdk/br;Lnbisdk/it;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnbisdk/h;->V:I

    iput-boolean v1, p0, Lnbisdk/h;->W:Z

    iput-boolean v0, p0, Lnbisdk/h;->Z:Z

    iput-boolean v0, p0, Lnbisdk/h;->aa:Z

    iput-byte v0, p0, Lnbisdk/h;->ab:B

    iput-object p1, p0, Lnbisdk/h;->Q:Lnbisdk/de;

    iput-object p2, p0, Lnbisdk/h;->R:Lnbisdk/de;

    iput-object p3, p0, Lnbisdk/h;->S:Lnbisdk/br;

    if-nez p4, :cond_0

    new-instance p4, Lnbisdk/it;

    invoke-direct {p4}, Lnbisdk/it;-><init>()V

    :cond_0
    iput-object p4, p0, Lnbisdk/h;->T:Lnbisdk/it;

    iput-byte v1, p0, Lnbisdk/h;->ab:B

    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lnbisdk/h;->ab:B

    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/h;->V:I

    invoke-virtual {p0}, Lnbisdk/h;->r()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnbisdk/h;->a(B)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnbisdk/h;->a(B)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnbisdk/h;->a(B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/h;->Y:Ljava/lang/String;

    return-void
.end method

.method public a(Lnbisdk/hg;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/h;->U:Lnbisdk/hg;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/h;->W:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/h;->X:[B

    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/h;->Z:Z

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/h;->aa:Z

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/h;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public i()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/h;->ab:B

    return v0
.end method

.method public j()Lnbisdk/de;
    .locals 1

    iget-object v0, p0, Lnbisdk/h;->R:Lnbisdk/de;

    return-object v0
.end method

.method public k()Lnbisdk/de;
    .locals 1

    iget-object v0, p0, Lnbisdk/h;->Q:Lnbisdk/de;

    return-object v0
.end method

.method public l()Lnbisdk/br;
    .locals 1

    iget-object v0, p0, Lnbisdk/h;->S:Lnbisdk/br;

    return-object v0
.end method

.method public m()Lnbisdk/it;
    .locals 1

    iget-object v0, p0, Lnbisdk/h;->T:Lnbisdk/it;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lnbisdk/h;->V:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Lnbisdk/ic;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Lnbisdk/hg;
    .locals 1

    iget-object v0, p0, Lnbisdk/h;->U:Lnbisdk/hg;

    return-object v0
.end method

.method public q()Lnbisdk/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lnbisdk/h;->V:I

    return v0
.end method

.method public s()Lnbisdk/uz;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/h;->W:Z

    return v0
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/h;->X:[B

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/h;->Z:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/h;->aa:Z

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Lnbisdk/ew;
    .locals 5

    const-wide v1, -0x3f70c80000000000L

    invoke-virtual {p0}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p0}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v3

    invoke-virtual {v3}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v3

    invoke-virtual {v3}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lnbisdk/ew;-><init>(DD)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnbisdk/ew;

    invoke-direct {v0, v1, v2, v1, v2}, Lnbisdk/ew;-><init>(DD)V

    goto :goto_0
.end method

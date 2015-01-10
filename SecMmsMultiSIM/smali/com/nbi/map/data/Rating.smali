.class public Lcom/nbi/map/data/Rating;
.super Ljava/lang/Object;


# instance fields
.field private qN:I

.field private qO:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nbi/map/data/Rating;->qN:I

    iput-object p2, p0, Lcom/nbi/map/data/Rating;->qO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMPAARating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Rating;->qO:Ljava/lang/String;

    return-object v0
.end method

.method public getStar()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/Rating;->qN:I

    return v0
.end method

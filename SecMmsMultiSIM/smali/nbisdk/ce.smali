.class public final Lnbisdk/ce;
.super Lnbisdk/qa;


# instance fields
.field private N:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/qa;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/qa;-><init>()V

    iput-object p1, p0, Lnbisdk/ce;->N:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ce;->N:Ljava/lang/String;

    return-object v0
.end method

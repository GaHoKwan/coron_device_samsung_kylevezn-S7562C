.class public final Lnbisdk/vr;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ik;


# instance fields
.field N:Ljava/lang/String;

.field aW:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImageBinary()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/vr;->aW:[B

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vr;->N:Ljava/lang/String;

    return-object v0
.end method

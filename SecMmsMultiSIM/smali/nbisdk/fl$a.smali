.class public final Lnbisdk/fl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final DI:Ljava/lang/String;

.field public final DJ:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/fl$a;->DI:Ljava/lang/String;

    iput p2, p0, Lnbisdk/fl$a;->DJ:F

    return-void
.end method

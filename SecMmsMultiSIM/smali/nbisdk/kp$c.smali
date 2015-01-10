.class Lnbisdk/kp$c;
.super Lnbisdk/ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/kp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field protected aU:Lnbisdk/ds;


# direct methods
.method public constructor <init>(Lnbisdk/kp;Lnbisdk/ds;)V
    .locals 1

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kp$c;->aU:Lnbisdk/ds;

    iput-object p2, p0, Lnbisdk/kp$c;->aU:Lnbisdk/ds;

    return-void
.end method


# virtual methods
.method public P()V
    .locals 0

    return-void
.end method

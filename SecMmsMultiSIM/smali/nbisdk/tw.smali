.class final Lnbisdk/tw;
.super Ljava/util/Vector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    const-string v0, "US"

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v0, "GB"

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

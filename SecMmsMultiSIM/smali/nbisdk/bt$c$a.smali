.class final Lnbisdk/bt$c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/bt$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field nn:Landroid/content/Context;

.field vK:Lnbisdk/ki;


# direct methods
.method constructor <init>(Lnbisdk/bt$c;Lnbisdk/ki;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnbisdk/bt$c$a;->vK:Lnbisdk/ki;

    iput-object p3, p0, Lnbisdk/bt$c$a;->nn:Landroid/content/Context;

    return-void
.end method

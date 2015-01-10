.class final Lnbisdk/js$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final wJ:Lnbisdk/js;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnbisdk/js;

    invoke-direct {v0}, Lnbisdk/js;-><init>()V

    sput-object v0, Lnbisdk/js$a;->wJ:Lnbisdk/js;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic mj()Lnbisdk/js;
    .locals 1

    sget-object v0, Lnbisdk/js$a;->wJ:Lnbisdk/js;

    return-object v0
.end method

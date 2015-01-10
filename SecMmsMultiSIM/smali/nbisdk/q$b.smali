.class final Lnbisdk/q$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/q$b$a;,
        Lnbisdk/q$b$b;
    }
.end annotation


# static fields
.field private static Du:D

.field private static Dv:D

.field private static Dw:D


# instance fields
.field private final DA:D

.field private final DB:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lnbisdk/q$b$a;",
            "Lnbisdk/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private DC:I

.field private DD:I

.field private DE:I

.field private DF:I

.field private final Dx:Lcom/nbi/common/NBIContext;

.field private final Dy:Ljava/lang/Runnable;

.field private final Dz:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v4, 0x4000

    const-wide/high16 v0, 0x4059

    sput-wide v0, Lnbisdk/q$b;->Du:D

    const-wide v2, 0x409925604189374cL

    mul-double/2addr v0, v2

    sput-wide v0, Lnbisdk/q$b;->Dv:D

    sget-wide v0, Lnbisdk/q$b;->Dv:D

    mul-double/2addr v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lnbisdk/q$b;->Dw:D

    return-void
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    const-wide v4, 0x4066800000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/q$b$b;

    invoke-direct {v0, p0}, Lnbisdk/q$b$b;-><init>(Lnbisdk/q$b;)V

    iput-object v0, p0, Lnbisdk/q$b;->Dz:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/q$b;->DB:Ljava/util/Hashtable;

    iput v2, p0, Lnbisdk/q$b;->DC:I

    iput v1, p0, Lnbisdk/q$b;->DD:I

    iput v2, p0, Lnbisdk/q$b;->DE:I

    iput v1, p0, Lnbisdk/q$b;->DF:I

    iput-object p1, p0, Lnbisdk/q$b;->Dx:Lcom/nbi/common/NBIContext;

    iput-object p2, p0, Lnbisdk/q$b;->Dy:Ljava/lang/Runnable;

    sget-wide v0, Lnbisdk/q$b;->Dw:D

    const-wide v2, 0x40fb2071c71c71c7L

    div-double/2addr v0, v2

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    div-double v0, v4, v0

    iput-wide v0, p0, Lnbisdk/q$b;->DA:D

    return-void
.end method

.method private a(Lnbisdk/ew;)I
    .locals 4

    invoke-virtual {p1}, Lnbisdk/ew;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    add-double/2addr v0, v2

    iget-wide v2, p0, Lnbisdk/q$b;->DA:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lnbisdk/q$b;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lnbisdk/q$b;->Dy:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b(Lnbisdk/ew;)I
    .locals 4

    invoke-virtual {p1}, Lnbisdk/ew;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L

    add-double/2addr v0, v2

    iget-wide v2, p0, Lnbisdk/q$b;->DA:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a(Lnbisdk/ew;Lnbisdk/ew;)V
    .locals 17

    invoke-direct/range {p0 .. p1}, Lnbisdk/q$b;->a(Lnbisdk/ew;)I

    move-result v2

    invoke-direct/range {p0 .. p1}, Lnbisdk/q$b;->b(Lnbisdk/ew;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnbisdk/q$b;->a(Lnbisdk/ew;)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnbisdk/q$b;->b(Lnbisdk/ew;)I

    move-result v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/q$b;->DC:I

    if-lt v6, v5, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/q$b;->DD:I

    if-gt v2, v5, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/q$b;->DE:I

    if-lt v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/q$b;->DF:I

    if-gt v3, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iput v6, v0, Lnbisdk/q$b;->DC:I

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/q$b;->DD:I

    move-object/from16 v0, p0

    iput v4, v0, Lnbisdk/q$b;->DE:I

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/q$b;->DF:I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-wide v2, -0x3f99800000000000L

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/q$b;->DC:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lnbisdk/q$b;->DA:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/q$b;->DC:I

    move-wide v7, v2

    move v11, v4

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/q$b;->DD:I

    if-gt v11, v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lnbisdk/q$b;->DA:D

    add-double v9, v7, v2

    const-wide v2, -0x3fa9800000000000L

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/q$b;->DE:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v13, v0, Lnbisdk/q$b;->DA:D

    mul-double/2addr v4, v13

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/q$b;->DE:I

    move v6, v4

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lnbisdk/q$b;->DF:I

    if-gt v6, v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lnbisdk/q$b;->DA:D

    add-double/2addr v4, v2

    new-instance v13, Lnbisdk/q$b$a;

    invoke-direct {v13, v11, v6}, Lnbisdk/q$b$a;-><init>(II)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lnbisdk/q$b;->DB:Ljava/util/Hashtable;

    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    new-instance v14, Lnbisdk/ew;

    invoke-direct {v14, v2, v3, v7, v8}, Lnbisdk/ew;-><init>(DD)V

    new-instance v2, Lnbisdk/ew;

    invoke-direct {v2, v4, v5, v9, v10}, Lnbisdk/ew;-><init>(DD)V

    new-instance v3, Lnbisdk/q$a;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnbisdk/q$b;->Dx:Lcom/nbi/common/NBIContext;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnbisdk/q$b;->Dz:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v14, v2, v0}, Lnbisdk/q$a;-><init>(Lcom/nbi/common/NBIContext;Lnbisdk/ew;Lnbisdk/ew;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/q$b;->DB:Ljava/util/Hashtable;

    invoke-virtual {v2, v13, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v11, 0x1

    move-wide v7, v9

    move v11, v2

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/q$b;->DB:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v12}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnbisdk/q$b$a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnbisdk/q$b;->DB:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnbisdk/q$a;

    invoke-virtual {v2}, Lnbisdk/q$a;->cancel()V

    goto :goto_2
.end method

.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lnbisdk/q$b;->DB:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/q$a;

    invoke-virtual {v0}, Lnbisdk/q$a;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final oO()V
    .locals 2

    iget-object v0, p0, Lnbisdk/q$b;->DB:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/q$a;

    invoke-virtual {v0}, Lnbisdk/q$a;->load()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final oP()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnbisdk/fd;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lnbisdk/q$b;->DB:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/q$a;

    invoke-virtual {v0}, Lnbisdk/q$a;->oP()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

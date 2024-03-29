.class public final Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
.super Ljava/lang/Object;
.source "ListOfTypes.java"


# static fields
.field public static final EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;


# instance fields
.field private resolvedTypes:[Ljava/lang/reflect/Type;

.field private final types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 6
    .parameter "types"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    .line 35
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/reflect/Type;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 36
    .local v3, type:Ljava/lang/reflect/Type;
    iget-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v3           #type:Ljava/lang/reflect/Type;
    :cond_0
    return-void
.end method

.method private resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, unresolved:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/reflect/Type;

    .line 58
    .local v3, result:[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 61
    .local v4, type:Ljava/lang/reflect/Type;
    :try_start_0
    move-object v0, v4

    check-cast v0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v3, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/ClassCastException;
    aput-object v4, v3, v2

    goto :goto_1

    .line 66
    .end local v1           #e:Ljava/lang/ClassCastException;
    .end local v4           #type:Ljava/lang/reflect/Type;
    :cond_0
    return-object v3
.end method


# virtual methods
.method add(Ljava/lang/reflect/Type;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public getResolvedTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    .line 53
    .local v0, result:[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    .end local v0           #result:[Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .restart local v0       #result:[Ljava/lang/reflect/Type;
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .end local v0           #result:[Ljava/lang/reflect/Type;
    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method length()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 72
    if-lez v0, :cond_0

    .line 73
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

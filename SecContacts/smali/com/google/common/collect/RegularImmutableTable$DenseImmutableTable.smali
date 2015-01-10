.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "RegularImmutableTable.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DenseImmutableTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableTable",
        "<TR;TC;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient columnMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient rowMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final values:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field


# direct methods
.method private makeColumnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 341
    .local v1, columnMapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TC;Ljava/util/Map<TR;TV;>;>;"
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableBiMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 342
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    .line 343
    .local v3, rowMapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TR;TV;>;"
    const/4 v2, 0x0

    .local v2, r:I
    :goto_1
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableBiMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 344
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v5, v5, v2

    aget-object v4, v5, v0

    .line 345
    .local v4, value:Ljava/lang/Object;,"TV;"
    if-eqz v4, :cond_0

    .line 346
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 343
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 349
    .end local v4           #value:Ljava/lang/Object;,"TV;"
    :cond_1
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v2           #r:I
    .end local v3           #rowMapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TR;TV;>;"
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method

.method private makeRowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    .line 410
    .local v4, rowMapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TR;Ljava/util/Map<TC;TV;>;>;"
    const/4 v2, 0x0

    .local v2, r:I
    :goto_0
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 411
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v3, v6, v2

    .line 412
    .local v3, row:[Ljava/lang/Object;,"[TV;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 413
    .local v1, columnMapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TC;TV;>;"
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 414
    aget-object v5, v3, v0

    .line 415
    .local v5, value:Ljava/lang/Object;,"TV;"
    if-eqz v5, :cond_0

    .line 416
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    .end local v5           #value:Ljava/lang/Object;,"TV;"
    :cond_1
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v0           #c:I
    .end local v1           #columnMapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TC;TV;>;"
    .end local v3           #row:[Ljava/lang/Object;,"[TV;"
    :cond_2
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 273
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->cellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    .line 357
    .local v0, result:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TC;Ljava/util/Map<TR;TV;>;>;"
    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->makeColumnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    .line 360
    :cond_0
    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 273
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 365
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 379
    .local v1, rowIndex:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 380
    .local v0, columnIndex:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 427
    .local v0, result:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TR;Ljava/util/Map<TC;TV;>;>;"
    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->makeRowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 430
    :cond_0
    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 273
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

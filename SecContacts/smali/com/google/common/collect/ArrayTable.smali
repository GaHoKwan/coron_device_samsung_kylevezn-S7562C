.class public final Lcom/google/common/collect/ArrayTable;
.super Ljava/lang/Object;
.source "ArrayTable.java"

# interfaces
.implements Lcom/google/common/collect/Table;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ArrayTable$1;,
        Lcom/google/common/collect/ArrayTable$Values;,
        Lcom/google/common/collect/ArrayTable$RowMapEntrySet;,
        Lcom/google/common/collect/ArrayTable$RowMap;,
        Lcom/google/common/collect/ArrayTable$RowEntrySet;,
        Lcom/google/common/collect/ArrayTable$Row;,
        Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;,
        Lcom/google/common/collect/ArrayTable$ColumnMap;,
        Lcom/google/common/collect/ArrayTable$ColumnEntrySet;,
        Lcom/google/common/collect/ArrayTable$Column;,
        Lcom/google/common/collect/ArrayTable$CellSet;
    }
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
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table",
        "<TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final array:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field private transient cellSet:Lcom/google/common/collect/ArrayTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable",
            "<TR;TC;TV;>.CellSet;"
        }
    .end annotation
.end field

.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TC;>;"
        }
    .end annotation
.end field

.field private transient columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable",
            "<TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rowList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transient rowMap:Lcom/google/common/collect/ArrayTable$RowMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable",
            "<TR;TC;TV;>.RowMap;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/ArrayTable;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ArrayTable;->getIndexed(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getIndexed(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 2
    .parameter "rowIndex"
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->cellSet:Lcom/google/common/collect/ArrayTable$CellSet;

    .line 468
    .local v0, set:Lcom/google/common/collect/ArrayTable$CellSet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ArrayTable$CellSet;

    .end local v0           #set:Lcom/google/common/collect/ArrayTable$CellSet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$CellSet;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->cellSet:Lcom/google/common/collect/ArrayTable$CellSet;

    :cond_0
    return-object v0
.end method

.method public columnKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;

    .line 614
    .local v0, map:Lcom/google/common/collect/ArrayTable$ColumnMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ArrayTable$ColumnMap;

    .end local v0           #map:Lcom/google/common/collect/ArrayTable$ColumnMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$ColumnMap;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;

    :cond_0
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
    .line 297
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/common/collect/ArrayTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 306
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 315
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 9
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 320
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .local v0, arr$:[[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 321
    .local v7, row:[Ljava/lang/Object;,"[TV;"
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/Object;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v2, v1, v3

    .line 322
    .local v2, element:Ljava/lang/Object;,"TV;"
    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 323
    const/4 v8, 0x1

    .line 327
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #element:Ljava/lang/Object;,"TV;"
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #row:[Ljava/lang/Object;,"[TV;"
    :goto_2
    return v8

    .line 321
    .restart local v1       #arr$:[Ljava/lang/Object;
    .restart local v2       #element:Ljava/lang/Object;,"TV;"
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #row:[Ljava/lang/Object;,"[TV;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 320
    .end local v2           #element:Ljava/lang/Object;,"TV;"
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 327
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v6           #len$:I
    .end local v7           #row:[Ljava/lang/Object;,"[TV;"
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 432
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    instance-of v1, p1, Lcom/google/common/collect/Table;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 433
    check-cast v0, Lcom/google/common/collect/Table;

    .line 434
    .local v0, other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 436
    .end local v0           #other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    .line 332
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 333
    .local v1, rowIndex:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 334
    .local v0, columnIndex:Ljava/lang/Integer;
    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/ArrayTable;->getIndexed(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 440
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 347
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "rowKey"
    .parameter "columnKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public rowKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 752
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/ArrayTable$RowMap;

    .line 760
    .local v0, map:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ArrayTable$RowMap;

    .end local v0           #map:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$RowMap;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/ArrayTable$RowMap;

    :cond_0
    return-object v0
.end method

.method public set(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "rowIndex"
    .parameter "columnIndex"
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)TV;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v1, v1, p1

    aget-object v0, v1, p2

    .line 245
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v1, v1, p1

    aput-object p3, v1, p2

    .line 246
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 428
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    .local p0, this:Lcom/google/common/collect/ArrayTable;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

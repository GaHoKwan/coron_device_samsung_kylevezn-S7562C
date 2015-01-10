.class Lcom/google/common/collect/Tables$TransformedTable;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Tables$TransformedTable$CellSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table",
        "<TR;TC;TV2;>;"
    }
.end annotation


# instance fields
.field cellSet:Lcom/google/common/collect/Tables$TransformedTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Tables$TransformedTable",
            "<TR;TC;TV1;TV2;>.CellSet;"
        }
    .end annotation
.end field

.field columnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV2;>;>;"
        }
    .end annotation
.end field

.field final fromTable:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV1;>;"
        }
    .end annotation
.end field

.field final function:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;"
        }
    .end annotation
.end field

.field rowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV2;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method cellFunction()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV1;>;",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Tables$TransformedTable$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransformedTable$1;-><init>(Lcom/google/common/collect/Tables$TransformedTable;)V

    return-object v0
.end method

.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->cellSet:Lcom/google/common/collect/Tables$TransformedTable$CellSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransformedTable$CellSet;-><init>(Lcom/google/common/collect/Tables$TransformedTable;)V

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->cellSet:Lcom/google/common/collect/Tables$TransformedTable$CellSet;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->cellSet:Lcom/google/common/collect/Tables$TransformedTable$CellSet;

    goto :goto_0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->columnMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->createColumnMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->columnMap:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->columnMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
    .parameter "columnKey"

    .prologue
    .line 415
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createColumnMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Tables$TransformedTable$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransformedTable$3;-><init>(Lcom/google/common/collect/Tables$TransformedTable;)V

    .line 559
    .local v0, columnFunction:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<Ljava/util/Map<TR;TV1;>;Ljava/util/Map<TR;TV2;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method createRowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Tables$TransformedTable$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransformedTable$2;-><init>(Lcom/google/common/collect/Tables$TransformedTable;)V

    .line 543
    .local v0, rowFunction:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<Ljava/util/Map<TC;TV1;>;Ljava/util/Map<TC;TV2;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 569
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    if-ne p1, p0, :cond_0

    .line 570
    const/4 v1, 0x1

    .line 576
    :goto_0
    return v1

    .line 572
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/Table;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 573
    check-cast v0, Lcom/google/common/collect/Table;

    .line 574
    .local v0, other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 576
    .end local v0           #other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "rowKey"
    .parameter "columnKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Tables$TransformedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 580
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 438
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "rowKey"
    .parameter "columnKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Tables$TransformedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->rowMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->createRowMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->rowMap:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->rowMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 442
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

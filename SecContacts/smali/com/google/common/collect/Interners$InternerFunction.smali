.class Lcom/google/common/collect/Interners$InternerFunction;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternerFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field private final interner:Lcom/google/common/collect/Interner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Interner",
            "<TE;>;"
        }
    .end annotation
.end field


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/google/common/collect/Interners$InternerFunction;,"Lcom/google/common/collect/Interners$InternerFunction<TE;>;"
    .local p1, input:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Interner;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 132
    .local p0, this:Lcom/google/common/collect/Interners$InternerFunction;,"Lcom/google/common/collect/Interners$InternerFunction<TE;>;"
    instance-of v1, p1, Lcom/google/common/collect/Interners$InternerFunction;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 133
    check-cast v0, Lcom/google/common/collect/Interners$InternerFunction;

    .line 134
    .local v0, that:Lcom/google/common/collect/Interners$InternerFunction;,"Lcom/google/common/collect/Interners$InternerFunction<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    iget-object v2, v0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 137
    .end local v0           #that:Lcom/google/common/collect/Interners$InternerFunction;,"Lcom/google/common/collect/Interners$InternerFunction<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    .local p0, this:Lcom/google/common/collect/Interners$InternerFunction;,"Lcom/google/common/collect/Interners$InternerFunction<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

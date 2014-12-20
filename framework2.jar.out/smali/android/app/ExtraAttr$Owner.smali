.class public Landroid/app/ExtraAttr$Owner;
.super Ljava/lang/Object;
.source "SpellScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ExtraAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Owner"
.end annotation


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field private mLocalHash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2134
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    .line 2135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addExtraAttr(Landroid/app/ExtraAttr;)V
    .locals 3
    .parameter "attr"

    .prologue
    .line 2154
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getLabelId()I

    move-result v0

    if-nez v0, :cond_2

    .line 2159
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    :goto_1
    iget v0, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    goto :goto_0

    .line 2161
    :cond_2
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getLabelId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "otherObj"

    .prologue
    const/4 v5, 0x0

    .line 2195
    instance-of v6, p1, Landroid/app/ExtraAttr$Owner;

    if-nez v6, :cond_1

    .line 2220
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v2, p1

    .line 2199
    check-cast v2, Landroid/app/ExtraAttr$Owner;

    .line 2201
    .local v2, other:Landroid/app/ExtraAttr$Owner;
    iget v6, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    iget v7, v2, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v6

    iget-object v7, v2, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 2206
    iget-object v6, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2207
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2208
    .local v4, value:Ljava/lang/Object;
    iget-object v6, v2, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2210
    .local v3, otherValue:Ljava/lang/Object;
    if-eqz v4, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    if-nez v4, :cond_4

    if-nez v3, :cond_0

    .line 2215
    :cond_4
    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 2220
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #otherValue:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method getExtraAttrsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2169
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2170
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 2171
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    iget-object v4, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2177
    .local v3, valueObj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 2178
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2179
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2183
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #valueObj:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getExtraInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 2146
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExtraInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 2150
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExtraString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 2138
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 2142
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2189
    iget v0, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    return v0
.end method

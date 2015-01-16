.class public Lcom/sec/android/allshare/media/SearchCriteria;
.super Ljava/lang/Object;
.source "SearchCriteria.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/media/SearchCriteria$1;,
        Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    }
.end annotation


# instance fields
.field private mKeyword:Ljava/lang/String;

.field private mMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/allshare/media/SearchCriteria$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    #getter for: Lcom/sec/android/allshare/media/SearchCriteria$Builder;->mKeyword:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->access$000(Lcom/sec/android/allshare/media/SearchCriteria$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    .line 43
    #getter for: Lcom/sec/android/allshare/media/SearchCriteria$Builder;->mMediaTypes:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->access$100(Lcom/sec/android/allshare/media/SearchCriteria$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/media/SearchCriteria$Builder;Lcom/sec/android/allshare/media/SearchCriteria$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/media/SearchCriteria;-><init>(Lcom/sec/android/allshare/media/SearchCriteria$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .parameter "o"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    instance-of v9, p1, Lcom/sec/android/allshare/media/SearchCriteria;

    if-eqz v9, :cond_1

    move-object v4, p1

    .line 128
    check-cast v4, Lcom/sec/android/allshare/media/SearchCriteria;

    .line 129
    .local v4, sc:Lcom/sec/android/allshare/media/SearchCriteria;
    const/4 v3, 0x0

    .line 132
    .local v3, ret:Z
    iget-object v9, v4, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-nez v9, :cond_1

    :cond_0
    iget-object v9, v4, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 173
    .end local v3           #ret:Z
    .end local v4           #sc:Lcom/sec/android/allshare/media/SearchCriteria;
    :cond_1
    :goto_0
    return v7

    .line 135
    .restart local v3       #ret:Z
    .restart local v4       #sc:Lcom/sec/android/allshare/media/SearchCriteria;
    :cond_2
    iget-object v9, v4, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-nez v9, :cond_6

    .line 136
    const/4 v3, 0x1

    .line 142
    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    .line 144
    iget-object v9, v4, Lcom/sec/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    if-eqz v9, :cond_9

    .line 145
    iget-object v9, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    .local v1, itr1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/Item$MediaType;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/allshare/Item$MediaType;

    .line 148
    .local v5, type1:Lcom/sec/android/allshare/Item$MediaType;
    const/4 v0, 0x0

    .line 150
    .local v0, isSame:Z
    iget-object v9, v4, Lcom/sec/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 151
    .local v2, itr2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/Item$MediaType;>;"
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/allshare/Item$MediaType;

    .line 154
    .local v6, type2:Lcom/sec/android/allshare/Item$MediaType;
    if-ne v5, v6, :cond_5

    .line 155
    const/4 v0, 0x1

    goto :goto_2

    .line 137
    .end local v0           #isSame:Z
    .end local v1           #itr1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/Item$MediaType;>;"
    .end local v2           #itr2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/Item$MediaType;>;"
    .end local v5           #type1:Lcom/sec/android/allshare/Item$MediaType;
    .end local v6           #type2:Lcom/sec/android/allshare/Item$MediaType;
    :cond_6
    iget-object v9, v4, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    .line 138
    const/4 v3, 0x1

    goto :goto_1

    .line 159
    .restart local v0       #isSame:Z
    .restart local v1       #itr1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/Item$MediaType;>;"
    .restart local v2       #itr2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/Item$MediaType;>;"
    .restart local v5       #type1:Lcom/sec/android/allshare/Item$MediaType;
    :cond_7
    if-nez v0, :cond_4

    goto :goto_0

    .end local v0           #isSame:Z
    .end local v2           #itr2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/Item$MediaType;>;"
    .end local v5           #type1:Lcom/sec/android/allshare/Item$MediaType;
    :cond_8
    move v7, v8

    .line 164
    goto :goto_0

    .line 165
    .end local v1           #itr1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/Item$MediaType;>;"
    :cond_9
    iget-object v9, v4, Lcom/sec/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    move v7, v8

    .line 166
    goto :goto_0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public isMatchedItemType(Lcom/sec/android/allshare/Item$MediaType;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v3, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v2

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/sec/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/Item$MediaType;

    .line 66
    .local v1, temp:Lcom/sec/android/allshare/Item$MediaType;
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const/4 v2, 0x1

    goto :goto_0
.end method

.class public Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;
.super Ljava/lang/Object;
.source "ChineseHighlightHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aggregateMultiPinyins([Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "arrayA"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, arrayB:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p0

    .line 43
    .local v3, lengthAA:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 45
    .local v4, lengthBB:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v5, mArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v3, :cond_2

    .line 47
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, builder:Ljava/lang/StringBuilder;
    aget-object v6, p0, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const/16 v6, 0x7c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    if-lez v4, :cond_0

    .line 52
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v2           #j:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    :cond_2
    return-object v5
.end method

.method private static buildMultiPinyinArrayList([[Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .parameter "array"
    .parameter "arrayLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v1, mArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 71
    aget-object v2, p0, v0

    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->aggregateMultiPinyins([Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 70
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    :cond_0
    return-object v1
.end method

.method public static findPosToPinyin(Ljava/lang/CharSequence;[C[I)Z
    .locals 29
    .parameter "text"
    .parameter "prefix"
    .parameter "indexes"

    .prologue
    .line 228
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 229
    :cond_0
    const/4 v6, 0x0

    .line 398
    :cond_1
    :goto_0
    return v6

    .line 232
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v26

    const/16 v27, 0x32

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->isLatin([C)Z

    move-result v26

    if-nez v26, :cond_3

    .line 233
    const/4 v6, 0x0

    goto :goto_0

    .line 235
    :cond_3
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v24

    .line 236
    .local v24, textLength:I
    move-object/from16 v0, p1

    array-length v8, v0

    .line 238
    .local v8, prefixLength:I
    if-nez v8, :cond_4

    .line 239
    const/4 v6, 0x0

    goto :goto_0

    .line 242
    :cond_4
    const/4 v6, 0x0

    .line 243
    .local v6, cpResult:Z
    invoke-static {}, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;->getInstance()Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 244
    .local v23, targetToken:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v20, targetAddr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v22, targetStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v9, regArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 249
    .local v21, targetInitialAddr:[I
    const/4 v5, 0x0

    .local v5, count:I
    :goto_1
    if-ge v5, v8, :cond_6

    .line 250
    aget-char v26, p1, v5

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 251
    aget-char v26, p1, v5

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 254
    :cond_6
    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v24

    if-ge v5, v0, :cond_8

    .line 255
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 261
    :cond_8
    const/4 v11, 0x0

    .line 262
    .local v11, tAddr:I
    const/4 v14, 0x0

    .line 264
    .local v14, tCount:I
    const/4 v5, 0x0

    :goto_3
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v5, v0, :cond_9

    .line 265
    aput v11, v21, v5

    .line 266
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v11, v11, v26

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 268
    :cond_9
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v5, v0, :cond_1

    .line 269
    const/4 v6, 0x0

    .line 270
    aget v14, v21, v5

    .line 272
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_1b

    .line 273
    const/4 v6, 0x1

    .line 274
    const/16 v27, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v27

    .line 276
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 280
    const/4 v12, -0x1

    .line 281
    .local v12, tCheck1:I
    const/4 v13, -0x1

    .line 282
    .local v13, tCheck2:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v27, v14, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_a

    .line 283
    add-int/lit8 v26, v14, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 284
    if-lez v12, :cond_a

    .line 285
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v26, v26, v14

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    .line 286
    const/4 v12, 0x0

    .line 291
    :cond_a
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v27, v5, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_b

    .line 292
    add-int/lit8 v26, v5, 0x1

    aget v26, v21, v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 293
    if-lez v13, :cond_b

    .line 294
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v26, v26, v14

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 295
    const/4 v13, 0x0

    .line 300
    :cond_b
    if-lez v12, :cond_d

    .line 301
    const/4 v2, 0x1

    .local v2, chk1:I
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v2, v0, :cond_18

    .line 302
    add-int v26, v14, v2

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_c

    .line 303
    add-int v26, v14, v2

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v2

    .line 301
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 305
    :cond_c
    const/4 v6, 0x0

    goto :goto_6

    .line 308
    .end local v2           #chk1:I
    :cond_d
    if-lez v13, :cond_f

    .line 309
    const/4 v2, 0x1

    .restart local v2       #chk1:I
    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v2, v0, :cond_18

    .line 310
    add-int v26, v5, v2

    aget v26, v21, v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_e

    .line 311
    add-int v26, v5, v2

    aget v26, v21, v26

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v2

    .line 309
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 313
    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 316
    .end local v2           #chk1:I
    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1a

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_1a

    .line 317
    const-string v15, ""

    .line 318
    .local v15, tStr:Ljava/lang/String;
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v26, 0x0

    const-string v27, ""

    aput-object v27, v17, v26

    const/16 v26, 0x1

    const-string v27, ""

    aput-object v27, v17, v26

    .line 319
    .local v17, tStrD:[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v16, tStrArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 321
    .restart local v2       #chk1:I
    const/16 v18, 0x0

    .line 322
    .local v18, tStrLength:I
    const/4 v6, 0x1

    .line 323
    :goto_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    .line 324
    add-int v26, v14, v2

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getDuoYinziString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 325
    if-nez v2, :cond_11

    .line 326
    const/16 v26, 0x0

    aget-object v26, v17, v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    const/16 v26, 0x0

    aget-object v26, v17, v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 328
    const/16 v26, 0x1

    aget-object v26, v17, v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_10
    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_13

    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    :goto_a
    add-int v18, v18, v26

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 331
    :cond_11
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 332
    .local v19, tStrSize:I
    const/4 v3, 0x0

    .local v3, chk2:I
    :goto_b
    move/from16 v0, v19

    if-ge v3, v0, :cond_10

    .line 333
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 334
    .local v25, tmp1:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 335
    const/16 v26, 0x0

    aget-object v26, v17, v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    .line 336
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 340
    .end local v3           #chk2:I
    .end local v19           #tStrSize:I
    .end local v25           #tmp1:Ljava/lang/String;
    :cond_13
    const/16 v26, 0x1

    aget-object v26, v17, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    goto :goto_a

    .line 346
    :cond_14
    const/4 v4, 0x0

    .local v4, chk3:I
    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_17

    .line 347
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #tStr:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 348
    .restart local v15       #tStr:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->removeSpaces([C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_16

    .line 349
    const/4 v3, 0x0

    .restart local v3       #chk2:I
    :goto_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v3, v0, :cond_1

    .line 350
    if-ge v3, v2, :cond_15

    .line 351
    add-int v26, v14, v3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3

    .line 349
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 353
    :cond_15
    add-int v26, v14, v2

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    .line 394
    .end local v2           #chk1:I
    .end local v3           #chk2:I
    .end local v4           #chk3:I
    .end local v12           #tCheck1:I
    .end local v13           #tCheck2:I
    .end local v15           #tStr:Ljava/lang/String;
    .end local v16           #tStrArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #tStrD:[Ljava/lang/String;
    .end local v18           #tStrLength:I
    :catch_0
    move-exception v7

    .line 395
    .local v7, e:Ljava/lang/Exception;
    const-string v26, "ChineseHighlightHelper"

    const-string v27, "search highlight exception!"

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 346
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #chk1:I
    .restart local v4       #chk3:I
    .restart local v12       #tCheck1:I
    .restart local v13       #tCheck2:I
    .restart local v15       #tStr:Ljava/lang/String;
    .restart local v16       #tStrArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #tStrD:[Ljava/lang/String;
    .restart local v18       #tStrLength:I
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 359
    :cond_17
    const/4 v6, 0x0

    .line 363
    .end local v2           #chk1:I
    .end local v4           #chk3:I
    .end local v15           #tStr:Ljava/lang/String;
    .end local v16           #tStrArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #tStrD:[Ljava/lang/String;
    .end local v18           #tStrLength:I
    :cond_18
    :goto_f
    if-nez v6, :cond_1

    .line 268
    .end local v12           #tCheck1:I
    .end local v13           #tCheck2:I
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 361
    .restart local v12       #tCheck1:I
    .restart local v13       #tCheck2:I
    :cond_1a
    const/4 v6, 0x0

    goto :goto_f

    .line 368
    .end local v12           #tCheck1:I
    .end local v13           #tCheck2:I
    :cond_1b
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_19

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_19

    .line 369
    const-string v15, ""

    .line 370
    .restart local v15       #tStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 371
    .restart local v2       #chk1:I
    const/4 v6, 0x1

    .line 372
    :goto_10
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    .line 373
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .local v10, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    invoke-static {}, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;->getInstance()Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;

    move-result-object v27

    add-int v26, v5, v2

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;->getPinyin(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 377
    add-int/lit8 v2, v2, 0x1

    .line 378
    goto :goto_10

    .line 380
    .end local v10           #sb:Ljava/lang/StringBuffer;
    :cond_1c
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->removeSpaces([C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_1e

    .line 381
    const/4 v3, 0x0

    .restart local v3       #chk2:I
    :goto_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v3, v0, :cond_1

    .line 382
    if-ge v3, v2, :cond_1d

    .line 383
    add-int v26, v5, v3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3

    .line 381
    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 385
    :cond_1d
    add-int v26, v5, v2

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    .line 389
    .end local v3           #chk2:I
    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private static getArrayListWithLastSuffix(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-object p0
.end method

.method private static getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "target"
    .parameter "reg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, result:I
    invoke-static {p0}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getDuoYinziString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, cpStrDuo:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-static {v3}, Lcom/sec/android/app/contacts/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    aget-object v3, v1, v5

    invoke-static {v3}, Lcom/sec/android/app/contacts/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 209
    .local v0, cpStr:[Ljava/lang/String;
    aget-object v3, v0, v4

    invoke-static {p1}, Lcom/sec/android/app/contacts/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v5

    invoke-static {p1}, Lcom/sec/android/app/contacts/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/contacts/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/sec/android/app/contacts/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 211
    :cond_0
    const/4 v2, 0x1

    .line 213
    :cond_1
    return v2
.end method

.method private static getDuoYinziString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "inString"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 172
    new-array v3, v11, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v3, v9

    const-string v7, ""

    aput-object v7, v3, v10

    .line 173
    .local v3, mOut:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 175
    aput-object p0, v3, v9

    .line 176
    aput-object p0, v3, v10

    .line 202
    :cond_0
    :goto_0
    return-object v3

    .line 180
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getMultiPinyinsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 181
    .local v4, multiPinyin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 183
    .local v6, pinyinCount:I
    if-eqz v4, :cond_4

    if-le v6, v10, :cond_4

    .line 184
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v11, :cond_0

    .line 185
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, array:[Ljava/lang/String;
    array-length v5, v0

    .line 188
    .local v5, multiPinyinCount:I
    add-int/lit8 v2, v5, -0x1

    .local v2, j:I
    :goto_2
    if-ltz v2, :cond_3

    .line 189
    const-string v7, ""

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 192
    :cond_2
    aget-object v7, v0, v2

    aput-object v7, v3, v1

    goto :goto_3

    .line 184
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v5           #multiPinyinCount:I
    :cond_4
    invoke-static {}, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;->getInstance()Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;

    move-result-object v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;->getPinyin(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    .line 199
    invoke-static {}, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;->getInstance()Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;

    move-result-object v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;->getPinyin(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    goto :goto_0
.end method

.method private static getMultiPinYinWithPrefixWithoutTokenSource([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "array"
    .parameter "prefix"

    .prologue
    .line 83
    array-length v0, p0

    .line 84
    .local v0, arraySize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-object p0
.end method

.method public static getMultiPinyinsForName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    const/16 v12, 0x7c

    .line 110
    const/4 v0, 0x3

    .line 112
    .local v0, MAX_MUTI_PINYIN_COUNT:I
    invoke-static {}, Lcom/sec/android/app/contacts/hanzi/HanziToMultiPinyin;->getInstance()Lcom/sec/android/app/contacts/hanzi/HanziToMultiPinyin;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/sec/android/app/contacts/hanzi/HanziToMultiPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 113
    .local v9, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;>;"
    new-array v2, v14, [[Ljava/lang/String;

    .line 115
    .local v2, arrayB:[[Ljava/lang/String;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v6, sb:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v7, sb2:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 120
    .local v4, count:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;

    .line 121
    .local v8, token:Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;
    const/4 v10, 0x2

    iget v11, v8, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->type:I

    if-ne v10, v11, :cond_3

    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 123
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    iget-object v10, v8, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, arrayA:[Ljava/lang/String;
    array-length v10, v1

    const/4 v11, 0x1

    if-gt v10, v11, :cond_1

    .line 129
    iget-object v10, v8, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v10, v8, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_1
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v10, v8, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    :cond_1
    if-ge v4, v14, :cond_2

    .line 134
    aget-object v10, v1, v13

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getMultiPinYinWithPrefixWithoutTokenSource([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #sb2:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .restart local v7       #sb2:Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    :cond_2
    aget-object v10, v1, v13

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    aget-object v10, v1, v13

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
    .end local v1           #arrayA:[Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 150
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    :cond_4
    iget-object v10, v8, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    .end local v8           #token:Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;
    :cond_5
    array-length v10, v2

    if-lez v10, :cond_6

    .line 157
    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->buildMultiPinyinArrayList([[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 158
    .local v3, arrayC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->getArrayListWithLastSuffix(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 167
    .end local v4           #count:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #sb2:Ljava/lang/StringBuilder;
    :goto_2
    return-object v3

    .line 161
    .end local v3           #arrayC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #count:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v7       #sb2:Ljava/lang/StringBuilder;
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .restart local v3       #arrayC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 166
    .end local v3           #arrayC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #count:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #sb2:Ljava/lang/StringBuilder;
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .restart local v3       #arrayC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private static isLatin([C)Z
    .locals 5
    .parameter "prefix"

    .prologue
    .line 220
    move-object v0, p0

    .local v0, arr$:[C
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, v0, v1

    .line 221
    .local v3, prefixAt:C
    const/16 v4, 0x100

    if-lt v3, v4, :cond_0

    .line 222
    const/4 v4, 0x0

    .line 224
    .end local v3           #prefixAt:C
    :goto_1
    return v4

    .line 220
    .restart local v3       #prefixAt:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v3           #prefixAt:C
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static removeSpaces([C)Ljava/lang/String;
    .locals 6
    .parameter "letters"

    .prologue
    .line 405
    const/4 v2, 0x0

    .line 406
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/lang/String;-><init>([C)V

    .line 407
    .local v4, lettersToReturn:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 408
    aget-char v0, p0, v1

    .line 409
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isSpace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 410
    add-int/lit8 v3, v2, 0x1

    .end local v2           #length:I
    .local v3, length:I
    aput-char v0, p0, v2

    move v2, v3

    .line 407
    .end local v3           #length:I
    .restart local v2       #length:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v0           #c:C
    :cond_1
    array-length v5, p0

    if-eq v2, v5, :cond_2

    .line 415
    new-instance v4, Ljava/lang/String;

    .end local v4           #lettersToReturn:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 418
    :cond_2
    return-object v4
.end method

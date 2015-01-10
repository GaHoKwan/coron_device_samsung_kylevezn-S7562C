.class public Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;
.super Ljava/lang/Object;
.source "ColorStringGetter.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mColor:I

.field private mList_CurrentLength:Ljava/util/ArrayList;

.field private mList_CurrentPos:Ljava/util/ArrayList;

.field protected mList_PinYinFull:Ljava/util/ArrayList;

.field protected mList_PinYinSimple:Ljava/util/ArrayList;

.field private mWeight:I

.field private mWeight_end:I

.field private mWeight_start:I

.field private m_colorMode:I

.field private m_colorMode1_Positon:Ljava/util/ArrayList;

.field private m_colorMode2_StartEnd:Ljava/util/ArrayList;

.field private m_strFindCmd:[Ljava/lang/String;

.field private m_strSortKey:Ljava/lang/String;

.field private m_strTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "findCmd"
    .parameter "strTarget"
    .parameter "strSortKey"

    .prologue
    const/16 v2, 0x80

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentLength:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinSimple:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strSortKey:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode1_Positon:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    .line 53
    const v0, 0xffff

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    .line 55
    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight_start:I

    .line 57
    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight_end:I

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strSortKey:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private computeChineseSortKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "displayName"
    .parameter "sortKey"

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentLength:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinSimple:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 410
    const/4 v3, 0x0

    .line 411
    .local v3, currentSubStr:Ljava/lang/String;
    move-object/from16 v16, p1

    .line 412
    .local v16, tmpDislpayName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 413
    .local v13, nTmpPos:I
    const/4 v11, 0x0

    .line 415
    .local v11, nPinYinCount:I
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_8

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v6, keyBuilder:Ljava/lang/StringBuilder;
    const-string v17, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 418
    .local v14, sortKeyDatas:[Ljava/lang/String;
    array-length v7, v14

    .line 420
    .local v7, keyLen:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 421
    .local v9, n:I
    const/4 v5, 0x0

    .line 422
    .local v5, k:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_0

    .line 423
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 424
    .local v2, character:C
    const/16 v17, 0x3400

    move/from16 v0, v17

    if-lt v2, v0, :cond_5

    const v17, 0x9fa5

    move/from16 v0, v17

    if-gt v2, v0, :cond_5

    .line 425
    if-lt v5, v7, :cond_1

    .line 494
    .end local v2           #character:C
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 498
    .end local v4           #i:I
    .end local v5           #k:I
    .end local v6           #keyBuilder:Ljava/lang/StringBuilder;
    .end local v7           #keyLen:I
    .end local v9           #n:I
    .end local v14           #sortKeyDatas:[Ljava/lang/String;
    :goto_1
    return-object v17

    .line 428
    .restart local v2       #character:C
    .restart local v4       #i:I
    .restart local v5       #k:I
    .restart local v6       #keyBuilder:Ljava/lang/StringBuilder;
    .restart local v7       #keyLen:I
    .restart local v9       #n:I
    .restart local v14       #sortKeyDatas:[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .line 430
    .local v15, sources:[C
    aget-object v17, v14, v5

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v17, ""

    aget-object v18, v14, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 433
    aget-char v17, v15, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 434
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 435
    .local v12, nPosInSubString:I
    add-int v10, v13, v12

    .line 437
    .local v10, nCurrentPos:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 438
    const-string v17, "ColorStringGetter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "computeChineseSortKey displayName :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v17, "ColorStringGetter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "computeChineseSortKey nPosInSubString :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " currentSubStr:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v12

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 442
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v10, v17

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentLength:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v18, v14, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinSimple:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v18, v14, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v11, v11, 0x1

    .line 451
    .end local v10           #nCurrentPos:I
    .end local v12           #nPosInSubString:I
    :cond_3
    add-int/lit8 v5, v5, 0x2

    .line 422
    .end local v15           #sources:[C
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 452
    :cond_5
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v2, v0, :cond_4

    .line 455
    if-ge v5, v7, :cond_0

    .line 458
    aget-object v17, v14, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v8

    .line 459
    .local v8, len:I
    add-int/lit8 v17, v8, -0x1

    add-int v4, v4, v17

    .line 461
    aget-object v17, v14, v5

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    const-string v17, ""

    aget-object v18, v14, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 465
    aget-object v17, v14, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 467
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 468
    .restart local v12       #nPosInSubString:I
    add-int v10, v13, v12

    .line 470
    .restart local v10       #nCurrentPos:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 471
    const-string v17, "ColorStringGetter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "computeChineseSortKey displayName :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v17, "ColorStringGetter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "computeChineseSortKey nPosInSubString :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " currentSubStr:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v12

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 478
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v10, v17

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentLength:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v18, v14, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinSimple:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v18, v14, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v11, v11, 0x1

    .line 486
    add-int/lit8 v5, v5, 0x1

    .line 487
    goto/16 :goto_2

    .line 489
    .end local v10           #nCurrentPos:I
    .end local v12           #nPosInSubString:I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 498
    .end local v2           #character:C
    .end local v4           #i:I
    .end local v5           #k:I
    .end local v6           #keyBuilder:Ljava/lang/StringBuilder;
    .end local v7           #keyLen:I
    .end local v8           #len:I
    .end local v9           #n:I
    .end local v14           #sortKeyDatas:[Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method private getMySubString(Ljava/lang/String;IILjava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter "strTarget"
    .parameter "nIndexStart"
    .parameter "nIndexEnd"
    .parameter "listPinYinFull"

    .prologue
    const/4 v3, 0x0

    .line 507
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-object v3

    .line 510
    :cond_1
    move-object v1, p4

    .line 512
    .local v1, list_PinYinFull:Ljava/util/ArrayList;
    if-nez p3, :cond_2

    .line 513
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 515
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v2, subStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt p3, v4, :cond_0

    .line 521
    move v0, p2

    .local v0, i:I
    :goto_1
    if-lt v0, p3, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 522
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 525
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getColorResult()Ljava/lang/String;
    .locals 33

    .prologue
    .line 87
    const/16 v22, 0x0

    .line 89
    .local v22, strRet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_2

    .line 90
    :cond_0
    const/16 v22, 0x0

    .line 318
    .end local v22           #strRet:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v22

    .line 92
    .restart local v22       #strRet:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    const-string v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    if-nez v31, :cond_4

    .line 93
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 95
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strSortKey:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->computeChineseSortKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 103
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v18, pinYinSimpleBuilder:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinSimple:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v6, v0, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinSimple:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 112
    .local v21, strPinYinSimple:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, nFndCmdCnt:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v31, v31, v11

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, currentFindCmd:Ljava/lang/String;
    const-string v31, ""

    move-object/from16 v0, v31

    if-ne v5, v0, :cond_7

    .line 112
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 118
    :cond_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 121
    .local v15, nStartSimple:I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v23, tmpPos:Ljava/util/ArrayList;
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v15, v0, :cond_6

    .line 123
    const v25, 0xffff

    .line 124
    .local v25, tmpWeight:I
    const/16 v30, 0x80

    .line 125
    .local v30, tmpWeight_start:I
    const/16 v29, 0x80

    .line 127
    .local v29, tmpWeight_end:I
    move/from16 v30, v15

    .line 129
    move v7, v15

    .line 130
    .local v7, nCount:I
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v31

    add-int v31, v31, v15

    move/from16 v0, v31

    if-ge v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v7, v0, :cond_8

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 133
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-nez v31, :cond_9

    .line 134
    const-string v31, "ColorStringGetter"

    const-string v32, "getColorResult(),tmpPos.size()==0, continue"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 138
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v32

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sub-int v29, v32, v31

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentLength:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    add-int/lit8 v32, v7, -0x1

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sub-int v29, v29, v31

    .line 142
    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x80

    move/from16 v31, v0

    add-int v25, v31, v29

    .line 144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    move/from16 v31, v0

    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    .line 145
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    .line 146
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight_start:I

    .line 147
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight_end:I

    .line 150
    const/16 v31, 0x2

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode:I

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode1_Positon:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 153
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode1_Positon:Ljava/util/ArrayList;

    goto/16 :goto_3

    .line 163
    .end local v5           #currentFindCmd:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #nCount:I
    .end local v11           #nFndCmdCnt:I
    .end local v15           #nStartSimple:I
    .end local v18           #pinYinSimpleBuilder:Ljava/lang/StringBuilder;
    .end local v21           #strPinYinSimple:Ljava/lang/String;
    .end local v23           #tmpPos:Ljava/util/ArrayList;
    .end local v25           #tmpWeight:I
    .end local v29           #tmpWeight_end:I
    .end local v30           #tmpWeight_start:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    move/from16 v31, v0

    if-eqz v31, :cond_14

    .line 168
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v17, pinYinFullBuilder:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v6, v0, :cond_b

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 174
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 176
    .local v20, strPinYinFull:Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11       #nFndCmdCnt:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    move/from16 v31, v0

    if-eqz v31, :cond_14

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v31, v31, v11

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 178
    .restart local v5       #currentFindCmd:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v31

    if-nez v31, :cond_d

    .line 176
    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 181
    :cond_d
    const/4 v13, 0x0

    .line 182
    .local v13, nFullMatcher_start:I
    const/4 v12, 0x0

    .line 184
    .local v12, nFullMatcher_end:I
    const/16 v19, 0x0

    .local v19, pyPos:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 185
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->getMySubString(Ljava/lang/String;IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v24

    .line 187
    .local v24, tmpTargetString:Ljava/lang/String;
    if-eqz v24, :cond_c

    .line 189
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 192
    .local v14, nStartFull:I
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v14, v0, :cond_c

    .line 197
    if-nez v14, :cond_13

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 202
    move/from16 v10, v19

    .local v10, nEndCount:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v10, v0, :cond_f

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_PinYinFull:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v16

    .line 206
    .local v16, nTmpLength:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v16

    if-le v0, v1, :cond_e

    .line 207
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 202
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 208
    :cond_e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v16

    if-ne v0, v1, :cond_10

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentLength:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    add-int v12, v12, v31

    .line 230
    .end local v16           #nTmpLength:I
    :cond_f
    :goto_a
    move/from16 v28, v13

    .line 231
    .local v28, tmpWeightFull_start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    sub-int v27, v31, v12

    .line 232
    .local v27, tmpWeightFull_end:I
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x80

    move/from16 v31, v0

    add-int v26, v31, v27

    .line 233
    .local v26, tmpWeightFull:I
    if-ge v12, v13, :cond_12

    .line 234
    const-string v31, "ColorStringGetter"

    const-string v32, "nFullMatcher_end<nFullMatcher_start"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 218
    .end local v26           #tmpWeightFull:I
    .end local v27           #tmpWeightFull_end:I
    .end local v28           #tmpWeightFull_start:I
    .restart local v16       #nTmpLength:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentLength:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 222
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 224
    :cond_11
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v31

    add-int v12, v12, v31

    .line 226
    goto :goto_a

    .line 235
    .end local v16           #nTmpLength:I
    .restart local v26       #tmpWeightFull:I
    .restart local v27       #tmpWeightFull_end:I
    .restart local v28       #tmpWeightFull_start:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    move/from16 v31, v0

    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 236
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    .line 237
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight_start:I

    .line 238
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight_end:I

    .line 239
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode:I

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode1_Positon:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 184
    .end local v10           #nEndCount:I
    .end local v26           #tmpWeightFull:I
    .end local v27           #tmpWeightFull_end:I
    .end local v28           #tmpWeightFull_start:I
    :cond_13
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 258
    .end local v5           #currentFindCmd:Ljava/lang/String;
    .end local v6           #i:I
    .end local v11           #nFndCmdCnt:I
    .end local v12           #nFullMatcher_end:I
    .end local v13           #nFullMatcher_start:I
    .end local v14           #nStartFull:I
    .end local v17           #pinYinFullBuilder:Ljava/lang/StringBuilder;
    .end local v19           #pyPos:I
    .end local v20           #strPinYinFull:Ljava/lang/String;
    .end local v24           #tmpTargetString:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 264
    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-eqz v31, :cond_1

    .line 266
    const/4 v11, 0x0

    .restart local v11       #nFndCmdCnt:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v31, v31, v11

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 268
    .restart local v5       #currentFindCmd:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v31

    if-nez v31, :cond_16

    .line 266
    :cond_15
    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 272
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 273
    .restart local v15       #nStartSimple:I
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v15, v0, :cond_15

    .line 276
    const v25, 0xfffe

    .line 277
    .restart local v25       #tmpWeight:I
    const/16 v30, 0x80

    .line 278
    .restart local v30       #tmpWeight_start:I
    const/16 v29, 0x80

    .line 281
    .restart local v29       #tmpWeight_end:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v6, v0, :cond_15

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentPos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 284
    .local v9, nCurrentCharacterPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mList_CurrentLength:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 287
    .local v8, nCurrentCharacterLength:I
    add-int v31, v9, v8

    move/from16 v0, v31

    if-gt v15, v0, :cond_17

    .line 289
    move/from16 v30, v6

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    sub-int v31, v31, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strFindCmd:[Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    add-int v29, v31, v32

    .line 292
    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x80

    move/from16 v31, v0

    add-int v25, v31, v29

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    move/from16 v31, v0

    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_15

    .line 295
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    .line 296
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight_start:I

    .line 297
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight_end:I

    .line 298
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode:I

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode1_Positon:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v32

    add-int v32, v32, v15

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 281
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mWeight:I

    return v0
.end method

.method public setColorForTextView(Landroid/content/res/Resources;Landroid/widget/TextView;)Z
    .locals 11
    .parameter "res"
    .parameter "textView"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 328
    const/4 v6, 0x0

    .line 329
    .local v6, bRet:Z
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 330
    :cond_0
    const-string v0, "ColorStringGetter"

    const-string v1, "setColorForTextView(), textView==null||res==null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return v2

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 334
    const-string v0, "ColorStringGetter"

    const-string v1, "setColorForTextView(), m_strTarget==null, show empty name instead"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v0, " "

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 340
    :cond_2
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode:I

    packed-switch v0, :pswitch_data_0

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    move v2, v6

    .line 395
    goto :goto_0

    .line 342
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 344
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Landroid/text/Spannable;

    .line 347
    .local v10, sText:Landroid/text/Spannable;
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 348
    .local v4, colors:Landroid/content/res/ColorStateList;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 349
    .local v9, nStart:I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode2_StartEnd:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 350
    .local v7, nEnd:I
    if-gez v9, :cond_4

    .line 352
    const/4 v9, 0x0

    .line 353
    :cond_4
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-interface {v10, v0, v9, v7, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 355
    const/4 v6, 0x1

    .line 357
    goto :goto_1

    .line 358
    .end local v4           #colors:Landroid/content/res/ColorStateList;
    .end local v7           #nEnd:I
    .end local v9           #nStart:I
    .end local v10           #sText:Landroid/text/Spannable;
    :cond_5
    const-string v0, "ColorStringGetter"

    const-string v1, "m_colorMode2_StartEnd.size()!=2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 366
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode1_Positon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 367
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Landroid/text/Spannable;

    .line 370
    .restart local v10       #sText:Landroid/text/Spannable;
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 371
    .restart local v4       #colors:Landroid/content/res/ColorStateList;
    const/4 v8, 0x0

    .local v8, nPos:I
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode1_Positon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_colorMode1_Positon:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 373
    .restart local v9       #nStart:I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_6

    .line 374
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    add-int/lit8 v3, v9, 0x1

    invoke-interface {v10, v0, v9, v3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 376
    const/4 v6, 0x1

    .line 371
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 378
    :cond_6
    const-string v0, "ColorStringGetter"

    const-string v3, "setColorForTextView(), nStart>=m_strTarget.length()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 383
    .end local v4           #colors:Landroid/content/res/ColorStateList;
    .end local v8           #nPos:I
    .end local v9           #nStart:I
    .end local v10           #sText:Landroid/text/Spannable;
    :cond_7
    const-string v0, "ColorStringGetter"

    const-string v1, "m_colorMode1_Positon.size()==0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->m_strTarget:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHightLightColor(I)I
    .locals 1
    .parameter "nColor"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mColor:I

    .line 70
    .local v0, nRet:I
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->mColor:I

    .line 71
    return v0
.end method

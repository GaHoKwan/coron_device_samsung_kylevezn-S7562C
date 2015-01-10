.class public Lcom/android/mms/ui/RecipientsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RecipientsAdapter.java"


# static fields
.field private static final CONTACT_ID_INDEX:I = 0x1

.field private static final CONTACT_LIST_FILTER_URI:Landroid/net/Uri; = null

.field private static final EMAIL_FILTER_URI:Landroid/net/Uri; = null

.field private static final LABEL_INDEX:I = 0x4

.field private static final MIME_TYPE_INDEX:I = 0x6

.field private static final NAME_INDEX:I = 0x5

.field private static final NUMBER_INDEX:I = 0x3

.field private static final PROJECTION_PHONE:[Ljava/lang/String; = null

.field private static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC,mimetype DESC,sort_key,data2"

.field private static final TAG:Ljava/lang/String; = "Mms/RecipientsAdapter"

.field private static final TYPE_INDEX:I = 0x2


# instance fields
.field private final DEBUG_LOG:Z

.field private final PINYIN_SEARCH_HIGHLIGHT_MODE_FULL:Z

.field private final PINYIN_SEARCH_HIGHLIGHT_MODE_INITIAL:Z

.field keyBuilderFullString:Ljava/lang/StringBuilder;

.field keyBuilderInitialString:Ljava/lang/StringBuilder;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mHighlightedPrefix:[C

.field private mPatternString:Ljava/lang/String;

.field private mPatternStringKor:Ljava/lang/String;

.field private mPatternStringRaw:Ljava/lang/String;

.field public tokenTypePinyinIncluded:Z

.field tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 108
    const-string v0, "content://com.android.contacts/data/phone_emails/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->EMAIL_FILTER_URI:Landroid/net/Uri;

    .line 111
    const-string v0, "content://com.android.contacts/contacts_list/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->CONTACT_LIST_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 119
    const v0, 0x7f030069

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 96
    iput-boolean v3, p0, Lcom/android/mms/ui/RecipientsAdapter;->tokenTypePinyinIncluded:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->DEBUG_LOG:Z

    .line 394
    iput-boolean v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->PINYIN_SEARCH_HIGHLIGHT_MODE_INITIAL:Z

    .line 399
    iput-boolean v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->PINYIN_SEARCH_HIGHLIGHT_MODE_FULL:Z

    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 123
    return-void
.end method

.method private convertToInitialString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 16
    .parameter "pPatternStringRaw"
    .parameter "pMatchNameText"

    .prologue
    .line 525
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString << function : START >> :pPatternStringRaw="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",pMatchNameText="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v11, ""

    .line 528
    .local v11, pPatternStringInitial:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v9, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 530
    .local v8, lenRaw:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 532
    .local v7, lenMatch:I
    const/4 v5, 0x0

    .line 533
    .local v5, i:I
    const/4 v6, 0x0

    .line 535
    .local v6, j:I
    const/4 v4, 0x0

    .line 538
    .local v4, firstCharIndexOfMatchedString:I
    const/4 v2, 0x0

    .line 539
    .local v2, findindex:I
    const/4 v3, 0x0

    .line 541
    .local v3, findindexPivit:I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 542
    .local v1, ch:C
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 543
    if-gez v4, :cond_0

    .line 544
    const/4 v4, 0x0

    .line 545
    :cond_0
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString, firstCharIndexOfMatchedString="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_4

    .line 550
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 553
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString << loop : START >> : [[ch="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]] : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":tokens.size()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 556
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/util/HanziToPinyin$Token;

    .line 558
    .local v12, token:Lcom/android/mms/util/HanziToPinyin$Token;
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "token.type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Lcom/android/mms/util/HanziToPinyin$Token;->type:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget v13, v12, Lcom/android/mms/util/HanziToPinyin$Token;->type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    .line 560
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "findindex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 563
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString:findindex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v13, -0x1

    if-le v2, v13, :cond_3

    .line 565
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString:: FIND_SUCCESS O : findindex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    add-int/lit8 v2, v2, 0x1

    .line 568
    move v3, v2

    .line 574
    :cond_1
    :goto_1
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString:findindex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .end local v12           #token:Lcom/android/mms/util/HanziToPinyin$Token;
    :cond_2
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString << loop : END >> :ch="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":tokens.size()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 570
    .restart local v12       #token:Lcom/android/mms/util/HanziToPinyin$Token;
    :cond_3
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString:: FIND_FAILED X : findindex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    move v2, v3

    goto :goto_1

    .line 581
    .end local v12           #token:Lcom/android/mms/util/HanziToPinyin$Token;
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 582
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString:pPatternStringInitial="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 584
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 585
    .local v10, p:Ljava/util/regex/Pattern;
    const-string v13, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertToInitialString:return p="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-object v10
.end method

.method private findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z
    .locals 5
    .parameter "p"
    .parameter "text"
    .parameter "indices"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 592
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 593
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aput v4, p3, v3

    .line 596
    aget v3, p3, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 600
    aget v3, p3, v2

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    aget v3, p3, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget v3, p3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x900

    if-lt v3, v4, :cond_0

    aget v3, p3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xbff

    if-ge v3, v4, :cond_0

    .line 602
    aget v3, p3, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/RecipientsAdapter;->isDependentVowel(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    aget v3, p3, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p3, v2

    .line 607
    .end local v1           #temp:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private findSearchKeywordPositionPinyinFullString(Ljava/lang/String;[I)Z
    .locals 12
    .parameter "pPatternStringRaw"
    .parameter "indices"

    .prologue
    .line 468
    const-string v9, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullString() << function : START >> pPatternStringRaw="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 470
    .local v8, tokenSize:I
    const/4 v2, 0x0

    .line 471
    .local v2, i:I
    const/4 v6, 0x0

    .line 473
    .local v6, retValue:Z
    const/4 v4, 0x0

    .line 474
    .local v4, lastIndexFound:Z
    const/4 v1, 0x0

    .line 475
    .local v1, firstIndexFound:Z
    const/4 v3, 0x0

    .line 476
    .local v3, lastIndex:I
    const/4 v0, 0x0

    .line 478
    .local v0, firstIndex:I
    const-string v5, ""

    .line 480
    .local v5, pinyinStringConcat:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_0
    if-nez v4, :cond_1

    if-ge v2, v8, :cond_1

    .line 482
    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/util/HanziToPinyin$Token;

    .line 483
    .local v7, token:Lcom/android/mms/util/HanziToPinyin$Token;
    iget-object v9, v7, Lcom/android/mms/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 484
    const-string v9, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullString(), [find last index] pinyinStringConcat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_0

    .line 487
    const/4 v4, 0x1

    .line 488
    move v3, v2

    .line 489
    const-string v9, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v7           #token:Lcom/android/mms/util/HanziToPinyin$Token;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_3

    if-ge v2, v8, :cond_3

    .line 496
    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/util/HanziToPinyin$Token;

    .line 497
    .restart local v7       #token:Lcom/android/mms/util/HanziToPinyin$Token;
    iget-object v9, v7, Lcom/android/mms/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 498
    const-string v9, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullString(), [find first index] pinyinStringConcat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_2

    .line 501
    const/4 v1, 0x1

    .line 502
    move v0, v2

    .line 503
    const-string v9, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "firstIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 506
    .end local v7           #token:Lcom/android/mms/util/HanziToPinyin$Token;
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-gt v0, v3, :cond_4

    .line 507
    const/4 v9, 0x0

    aput v0, p2, v9

    .line 508
    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x1

    aput v10, p2, v9

    .line 509
    const/4 v6, 0x1

    .line 513
    :goto_2
    const-string v9, "Mms/RecipientsAdapter/kkahn/search"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSearchKeywordPositionPinyinFullString, retValue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return v6

    .line 511
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private getChosungID(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "code"

    .prologue
    const/4 v4, 0x0

    .line 937
    const/4 v7, 0x0

    .line 943
    .local v7, contacts_cursor:Landroid/database/Cursor;
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->CONTACT_LIST_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 945
    .local v1, contacts_uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 946
    .local v6, contactIdBuilder:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 948
    .local v9, searchResultCount:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 954
    .local v2, contacts_projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 961
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 963
    add-int/lit8 v9, v9, 0x1

    .line 964
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-interface {v7}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 971
    :catch_0
    move-exception v8

    .line 972
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MMS/RecipientsAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    if-eqz v7, :cond_1

    .line 976
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 977
    const/4 v7, 0x0

    .line 981
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 975
    :cond_2
    if-eqz v7, :cond_1

    .line 976
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 977
    const/4 v7, 0x0

    goto :goto_1

    .line 975
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 976
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 977
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method private getCursorForCallLogContacts(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "keyword"

    .prologue
    const/4 v4, 0x0

    .line 1036
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 1038
    .local v9, len:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_2

    .line 1039
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1041
    .local v6, c:C
    const/16 v0, 0x30

    if-lt v6, v0, :cond_1

    const/16 v0, 0x39

    if-gt v6, v0, :cond_1

    .line 1038
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    const/16 v0, 0x2b

    if-eq v6, v0, :cond_0

    const/16 v0, 0x23

    if-eq v6, v0, :cond_0

    const/16 v0, 0x2a

    if-eq v6, v0, :cond_0

    .line 1074
    .end local v6           #c:C
    :goto_1
    return-object v4

    .line 1051
    :cond_2
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id AS _id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_id AS contact_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "numbertype AS data2"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "number AS data1"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "numbertype AS data3"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "number AS display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "type AS mimetype"

    aput-object v3, v2, v0

    .line 1061
    .local v2, PROJECTION_LOGS:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1063
    .local v7, cursor:Landroid/database/Cursor;
    const-string v11, "content://logs/call/search_log"

    .line 1064
    .local v11, uriProviderText:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1066
    .local v1, uri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1067
    .local v10, selection:Ljava/lang/StringBuilder;
    const-string v0, "name IS Null AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "number <> \'-1\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 1074
    goto :goto_1
.end method

.method private isDependentSigns(C)Z
    .locals 10
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 762
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, byteInHex:Ljava/lang/String;
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "900"

    aput-object v8, v0, v7

    const-string v8, "901"

    aput-object v8, v0, v6

    const/4 v8, 0x2

    const-string v9, "902"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "903"

    aput-object v9, v0, v8

    .line 766
    .local v0, Signs:[Ljava/lang/String;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 767
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 771
    .end local v5           #str:Ljava/lang/String;
    :goto_1
    return v6

    .line 766
    .restart local v5       #str:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5           #str:Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 771
    goto :goto_1
.end method

.method private isDependentVowel(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 610
    sparse-switch p1, :sswitch_data_0

    .line 756
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 754
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 610
    nop

    :sswitch_data_0
    .sparse-switch
        0x93a -> :sswitch_0
        0x93b -> :sswitch_0
        0x93e -> :sswitch_0
        0x93f -> :sswitch_0
        0x940 -> :sswitch_0
        0x941 -> :sswitch_0
        0x942 -> :sswitch_0
        0x943 -> :sswitch_0
        0x944 -> :sswitch_0
        0x945 -> :sswitch_0
        0x946 -> :sswitch_0
        0x947 -> :sswitch_0
        0x948 -> :sswitch_0
        0x949 -> :sswitch_0
        0x94a -> :sswitch_0
        0x94b -> :sswitch_0
        0x94c -> :sswitch_0
        0x94d -> :sswitch_0
        0x94e -> :sswitch_0
        0x94f -> :sswitch_0
        0x9be -> :sswitch_0
        0x9bf -> :sswitch_0
        0x9c0 -> :sswitch_0
        0x9c1 -> :sswitch_0
        0x9c2 -> :sswitch_0
        0x9c3 -> :sswitch_0
        0x9c4 -> :sswitch_0
        0x9c5 -> :sswitch_0
        0x9c6 -> :sswitch_0
        0x9c7 -> :sswitch_0
        0x9c8 -> :sswitch_0
        0x9cb -> :sswitch_0
        0x9cc -> :sswitch_0
        0xa3e -> :sswitch_0
        0xa3f -> :sswitch_0
        0xa40 -> :sswitch_0
        0xa41 -> :sswitch_0
        0xa42 -> :sswitch_0
        0xa43 -> :sswitch_0
        0xa44 -> :sswitch_0
        0xa45 -> :sswitch_0
        0xa46 -> :sswitch_0
        0xa47 -> :sswitch_0
        0xa48 -> :sswitch_0
        0xa49 -> :sswitch_0
        0xa4a -> :sswitch_0
        0xa4b -> :sswitch_0
        0xa4c -> :sswitch_0
        0xabe -> :sswitch_0
        0xabf -> :sswitch_0
        0xac0 -> :sswitch_0
        0xac1 -> :sswitch_0
        0xac2 -> :sswitch_0
        0xac3 -> :sswitch_0
        0xac4 -> :sswitch_0
        0xac5 -> :sswitch_0
        0xac6 -> :sswitch_0
        0xac7 -> :sswitch_0
        0xac8 -> :sswitch_0
        0xac9 -> :sswitch_0
        0xaca -> :sswitch_0
        0xacb -> :sswitch_0
        0xacc -> :sswitch_0
        0xb3e -> :sswitch_0
        0xb3f -> :sswitch_0
        0xb40 -> :sswitch_0
        0xb41 -> :sswitch_0
        0xb42 -> :sswitch_0
        0xb43 -> :sswitch_0
        0xb44 -> :sswitch_0
        0xb45 -> :sswitch_0
        0xb46 -> :sswitch_0
        0xb47 -> :sswitch_0
        0xb48 -> :sswitch_0
        0xb4b -> :sswitch_0
        0xb4c -> :sswitch_0
        0xbbe -> :sswitch_0
        0xbbf -> :sswitch_0
        0xbc0 -> :sswitch_0
        0xbc1 -> :sswitch_0
        0xbc2 -> :sswitch_0
        0xbc3 -> :sswitch_0
        0xbc4 -> :sswitch_0
        0xbc5 -> :sswitch_0
        0xbc6 -> :sswitch_0
        0xbc7 -> :sswitch_0
        0xbc8 -> :sswitch_0
        0xbca -> :sswitch_0
        0xbcb -> :sswitch_0
        0xbcc -> :sswitch_0
        0xc3e -> :sswitch_0
        0xc3f -> :sswitch_0
        0xc40 -> :sswitch_0
        0xc41 -> :sswitch_0
        0xc42 -> :sswitch_0
        0xc43 -> :sswitch_0
        0xc44 -> :sswitch_0
        0xc45 -> :sswitch_0
        0xc46 -> :sswitch_0
        0xc47 -> :sswitch_0
        0xc48 -> :sswitch_0
        0xc49 -> :sswitch_0
        0xc4a -> :sswitch_0
        0xc4b -> :sswitch_0
        0xc4c -> :sswitch_0
        0xcbe -> :sswitch_0
        0xcbf -> :sswitch_0
        0xcc0 -> :sswitch_0
        0xcc1 -> :sswitch_0
        0xcc2 -> :sswitch_0
        0xcc3 -> :sswitch_0
        0xcc4 -> :sswitch_0
        0xcc5 -> :sswitch_0
        0xcc6 -> :sswitch_0
        0xcc7 -> :sswitch_0
        0xcc8 -> :sswitch_0
        0xcc9 -> :sswitch_0
        0xcca -> :sswitch_0
        0xccb -> :sswitch_0
        0xccc -> :sswitch_0
        0xce2 -> :sswitch_0
        0xce3 -> :sswitch_0
        0xd3e -> :sswitch_0
        0xd40 -> :sswitch_0
        0xd41 -> :sswitch_0
        0xd42 -> :sswitch_0
        0xd43 -> :sswitch_0
        0xd44 -> :sswitch_0
        0xd45 -> :sswitch_0
        0xd46 -> :sswitch_0
        0xd47 -> :sswitch_0
        0xd48 -> :sswitch_0
        0xd62 -> :sswitch_0
        0xd63 -> :sswitch_0
        0xdef -> :sswitch_0
    .end sparse-switch
.end method

.method private queryContactsData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "contactWhereArgs"

    .prologue
    const/4 v9, 0x0

    .line 986
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "contact_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v5, "display_name ASC"

    .line 1008
    .local v5, orderByCause:Ljava/lang/String;
    const-string v0, "Mms/RecipientsAdapter"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const/4 v6, 0x0

    .line 1012
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1015
    .local v1, content_uri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1026
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v6, v9

    .line 1031
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    return-object v6

    .line 1022
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1023
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Mms/RecipientsAdapter"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private usefulAsDigits(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cons"

    .prologue
    .line 910
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 912
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 913
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 915
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 912
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    .line 922
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 925
    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_0

    .line 929
    :cond_3
    const/4 v3, 0x0

    .line 932
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 24
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 190
    const v20, 0x7f0e0020

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 191
    .local v10, name:Landroid/widget/TextView;
    const v20, 0x7f0e01b8

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 192
    .local v6, label:Landroid/widget/TextView;
    const v20, 0x7f0e01b9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 193
    .local v12, number:Landroid/widget/TextView;
    const/4 v15, 0x0

    .line 194
    .local v15, prefixForIndian:[C
    const/16 v20, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 197
    .local v19, type:I
    const/4 v7, 0x0

    .line 198
    .local v7, labelText:Ljava/lang/CharSequence;
    const/16 v20, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, mimeType:Ljava/lang/String;
    const-string v20, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 201
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/16 v22, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    :goto_0
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    const/16 v21, 0xa0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 213
    :cond_0
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :goto_1
    const/16 v20, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 226
    .local v11, nameText:Ljava/lang/String;
    const/16 v20, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, numberText:Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/RecipientsAdapter;->mHighlightedPrefix:[C

    .line 229
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mHighlightedPrefix:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v15

    .line 232
    const/4 v14, 0x0

    .line 233
    .local v14, p:Ljava/util/regex/Pattern;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v5, v0, [I

    .line 234
    .local v5, indices:[I
    const/4 v8, 0x0

    .line 236
    .local v8, matchNameText:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/HangulUtils;->isIncludingKorean(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 239
    invoke-static {v11}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 307
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v5}, Lcom/android/mms/ui/RecipientsAdapter;->findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 308
    if-eqz v15, :cond_1

    .line 309
    const/16 v20, 0x1

    const/16 v21, 0x0

    aget v21, v5, v21

    array-length v0, v15

    move/from16 v22, v0

    add-int v21, v21, v22

    aput v21, v5, v20

    .line 310
    :cond_1
    new-instance v16, Landroid/text/SpannableString;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 316
    .local v16, span:Landroid/text/Spannable;
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xdc693b

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    aget v21, v5, v21

    const/16 v22, 0x1

    aget v22, v5, v22

    const/16 v23, 0x21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 317
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .end local v16           #span:Landroid/text/Spannable;
    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1, v5}, Lcom/android/mms/ui/RecipientsAdapter;->findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 340
    new-instance v16, Landroid/text/SpannableString;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 346
    .restart local v16       #span:Landroid/text/Spannable;
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xdc693b

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    aget v21, v5, v21

    const/16 v22, 0x1

    aget v22, v5, v22

    const/16 v23, 0x21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 347
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .end local v16           #span:Landroid/text/Spannable;
    :goto_4
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 355
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 356
    .local v17, spanNameText:Landroid/text/Spannable;
    new-instance v18, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 358
    .local v18, spanNumberText:Landroid/text/Spannable;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisplayRecipientVzwLayout()Z

    move-result v20

    if-nez v20, :cond_2

    .line 359
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xdc693b

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 362
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v20

    if-nez v20, :cond_14

    .line 363
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisplayRecipientVzwLayout()Z

    move-result v20

    if-nez v20, :cond_13

    .line 364
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0x484849

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 372
    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    .end local v17           #spanNameText:Landroid/text/Spannable;
    .end local v18           #spanNumberText:Landroid/text/Spannable;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisplayRecipientVzwLayout()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 379
    const/16 v20, 0x1

    const/high16 v21, 0x4190

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f08001a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    const/16 v20, 0x2

    const/high16 v21, 0x4180

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 384
    :cond_4
    const-string v20, "Mms/RecipientsAdapter"

    const-string v21, "bind complete()"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void

    .line 203
    .end local v5           #indices:[I
    .end local v8           #matchNameText:Ljava/lang/String;
    .end local v11           #nameText:Ljava/lang/String;
    .end local v13           #numberText:Ljava/lang/String;
    .end local v14           #p:Ljava/util/regex/Pattern;
    :cond_5
    const-string v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 204
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/16 v22, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 207
    :cond_6
    const-string v7, ""

    goto/16 :goto_0

    .line 215
    :cond_7
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisplayRecipientVzwLayout()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 217
    const/16 v20, 0x2

    const/high16 v21, 0x4180

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 221
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f08001a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 242
    .restart local v5       #indices:[I
    .restart local v8       #matchNameText:Ljava/lang/String;
    .restart local v11       #nameText:Ljava/lang/String;
    .restart local v13       #numberText:Ljava/lang/String;
    .restart local v14       #p:Ljava/util/regex/Pattern;
    :cond_9
    const-string v20, "Mms/RecipientsAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MmsConfig.getEnablePinyinSearch()="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsAdapter;->computeChineseKey(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokenTypePinyinIncluded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 249
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 256
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 257
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/RecipientsAdapter;->computeChineseKey(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderInitialString:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 265
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 266
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 271
    :cond_c
    const-string v20, "Mms/RecipientsAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MmsConfig.getEnablePinyinSearch()="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsAdapter;->computeChineseKey(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokenTypePinyinIncluded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 277
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/RecipientsAdapter;->tokenTypePinyinIncluded:Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 279
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 286
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 287
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/RecipientsAdapter;->computeChineseKey(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderInitialString:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 295
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 296
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 323
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokenTypePinyinIncluded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringRaw:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Lcom/android/mms/ui/RecipientsAdapter;->findSearchKeywordPositionPinyinFullString(Ljava/lang/String;[I)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 327
    new-instance v16, Landroid/text/SpannableString;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 328
    .restart local v16       #span:Landroid/text/Spannable;
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xdc693b

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    aget v21, v5, v21

    const/16 v22, 0x1

    aget v22, v5, v22

    const/16 v23, 0x21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 329
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 331
    .end local v16           #span:Landroid/text/Spannable;
    :cond_10
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 335
    :cond_11
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 349
    :cond_12
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 366
    .restart local v17       #spanNameText:Landroid/text/Spannable;
    .restart local v18       #spanNumberText:Landroid/text/Spannable;
    :cond_13
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xdc693b

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 369
    :cond_14
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xafafb0

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1078
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1079
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1080
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1082
    :cond_0
    return-void
.end method

.method public computeChineseKey(Ljava/lang/String;)V
    .locals 16
    .parameter "displayName"

    .prologue
    .line 404
    const-string v13, "mk_debug2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computeChineseKey : displayName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/android/mms/util/HanziToPinyin;->getInstance()Lcom/android/mms/util/HanziToPinyin;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/mms/util/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    .line 409
    const/4 v1, 0x0

    .line 410
    .local v1, currentSubStr:Ljava/lang/String;
    move-object/from16 v11, p1

    .line 411
    .local v11, tmpDislpayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 412
    .local v8, nTmpPos:I
    const/4 v7, 0x0

    .line 413
    .local v7, nPinYinCount:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokenTypePinyinIncluded:Z

    .line 415
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderInitialString:Ljava/lang/StringBuilder;

    .line 416
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderFullString:Ljava/lang/StringBuilder;

    .line 418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 425
    .local v6, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_5

    .line 426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/util/HanziToPinyin$Token;

    .line 427
    .local v12, token:Lcom/android/mms/util/HanziToPinyin$Token;
    const-string v13, "mk_debug2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "token.type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Lcom/android/mms/util/HanziToPinyin$Token;->type:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget v13, v12, Lcom/android/mms/util/HanziToPinyin$Token;->type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 430
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->tokenTypePinyinIncluded:Z

    .line 431
    iget-object v13, v12, Lcom/android/mms/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 432
    .local v9, sources:[C
    iget-object v13, v12, Lcom/android/mms/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 433
    .local v10, targets:[Ljava/lang/String;
    array-length v13, v9

    array-length v14, v10

    if-ge v13, v14, :cond_0

    array-length v5, v9

    .line 436
    .local v5, m:I
    :goto_1
    const-string v13, "mk_debug2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "m="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v4, 0x0

    .local v4, kk:I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 438
    const-string v13, "mk_debug2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sources["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-char v15, v9, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",targets["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v10, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 433
    .end local v4           #kk:I
    .end local v5           #m:I
    :cond_0
    array-length v5, v10

    goto :goto_1

    .line 442
    .restart local v4       #kk:I
    .restart local v5       #m:I
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-ge v3, v5, :cond_2

    .line 443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderInitialString:Ljava/lang/StringBuilder;

    aget-object v14, v10, v3

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 445
    :cond_2
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_4

    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderFullString:Ljava/lang/StringBuilder;

    aget-object v14, v10, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 450
    .end local v3           #j:I
    .end local v4           #kk:I
    .end local v5           #m:I
    .end local v9           #sources:[C
    .end local v10           #targets:[Ljava/lang/String;
    :cond_3
    iget-object v13, v12, Lcom/android/mms/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 451
    .restart local v10       #targets:[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_5
    array-length v13, v10

    if-ge v3, v13, :cond_4

    .line 452
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderInitialString:Ljava/lang/StringBuilder;

    aget-object v14, v10, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderFullString:Ljava/lang/StringBuilder;

    aget-object v14, v10, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 425
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 458
    .end local v3           #j:I
    .end local v10           #targets:[Ljava/lang/String;
    .end local v12           #token:Lcom/android/mms/util/HanziToPinyin$Token;
    :cond_5
    const-string v13, "mk_debug2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computeChineseKey : keyBuilderInitialString="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderInitialString:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v13, "mk_debug2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computeChineseKey : keyBuilderFullString="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/RecipientsAdapter;->keyBuilderFullString:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .end local v2           #i:I
    .end local v6           #n:I
    :cond_6
    return-void
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v10, 0x3

    const/16 v13, 0x21

    const/4 v12, 0x0

    .line 128
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, name:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 130
    .local v8, type:I
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, label:Ljava/lang/String;
    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 138
    .local v0, displayLabel:Ljava/lang/CharSequence;
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 139
    const-string v5, ""

    .line 144
    .local v5, number:Ljava/lang/String;
    :goto_0
    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 145
    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 185
    .end local v5           #number:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 141
    :cond_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #number:Ljava/lang/String;
    goto :goto_0

    .line 146
    :cond_1
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 147
    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 149
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 156
    :cond_3
    if-nez v4, :cond_4

    .line 157
    const-string v4, ""

    .line 169
    :goto_3
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    .local v6, out:Landroid/text/SpannableString;
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 172
    .local v2, len:I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 173
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 178
    :goto_4
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, person_id:Ljava/lang/String;
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "person_id"

    invoke-direct {v9, v10, v7}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 181
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "label"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 183
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "number"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    .line 185
    goto :goto_2

    .line 165
    .end local v2           #len:I
    .end local v6           #out:Landroid/text/SpannableString;
    .end local v7           #person_id:Ljava/lang/String;
    :cond_4
    const-string v9, ", "

    const-string v10, " "

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    const-string v11, " "

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 175
    .restart local v2       #len:I
    .restart local v6       #out:Landroid/text/SpannableString;
    :cond_5
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 15
    .parameter "constraint"

    .prologue
    .line 780
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 781
    :cond_0
    const-string v0, "Mms/RecipientsAdapter"

    const-string v2, "runQuery:exit by no constraints"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v12, 0x0

    .line 900
    :cond_1
    :goto_0
    return-object v12

    .line 786
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 787
    .local v11, patternString:Ljava/lang/String;
    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    .line 798
    iput-object v11, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringKor:Ljava/lang/String;

    .line 799
    iput-object v11, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternStringRaw:Ljava/lang/String;

    .line 803
    const-string v8, ""

    .line 804
    .local v8, displayPhone:Ljava/lang/String;
    const/4 v7, 0x0

    .line 805
    .local v7, displayCons:Ljava/lang/String;
    const/4 v6, 0x0

    .line 806
    .local v6, cons:Ljava/lang/String;
    const-string v10, ""

    .line 808
    .local v10, mimeType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 811
    const/16 v0, 0x1f4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 812
    const/4 v0, 0x0

    const/16 v2, 0x1f4

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 817
    :goto_1
    invoke-direct {p0, v7}, Lcom/android/mms/ui/RecipientsAdapter;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 818
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 819
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 820
    const-string v8, ""

    .line 827
    :cond_3
    :goto_2
    const/4 v12, 0x0

    .line 828
    .local v12, phoneCursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 833
    .local v9, logsCursor:Landroid/database/Cursor;
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->EMAIL_FILTER_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 834
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "times_contacted DESC,mimetype DESC,sort_key,data2"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 843
    if-eqz v12, :cond_4

    .line 844
    const-string v0, "Mms/RecipientsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runQuery,results="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",const len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLogsToRecipientSearchList()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 849
    invoke-direct {p0, v6}, Lcom/android/mms/ui/RecipientsAdapter;->getCursorForCallLogContacts(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 851
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 852
    const/4 v0, 0x7

    new-array v13, v0, [Ljava/lang/Object;

    .line 853
    .local v13, result:[Ljava/lang/Object;
    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v13, v0

    .line 854
    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v13, v0

    .line 855
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v13, v0

    .line 856
    const/4 v0, 0x3

    aput-object v8, v13, v0

    .line 863
    const/4 v0, 0x4

    const-string v2, "\u00a0"

    aput-object v2, v13, v0

    .line 864
    const/4 v0, 0x5

    aput-object v7, v13, v0

    .line 865
    const/4 v0, 0x6

    aput-object v10, v13, v0

    .line 867
    new-instance v14, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v14, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 868
    .local v14, translated:Landroid/database/MatrixCursor;
    invoke-virtual {v14, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 870
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLogsToRecipientSearchList()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 871
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v12, v0

    goto/16 :goto_0

    .line 814
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #logsCursor:Landroid/database/Cursor;
    .end local v12           #phoneCursor:Landroid/database/Cursor;
    .end local v13           #result:[Ljava/lang/Object;
    .end local v14           #translated:Landroid/database/MatrixCursor;
    :cond_6
    move-object v7, v6

    goto/16 :goto_1

    .line 822
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 875
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #logsCursor:Landroid/database/Cursor;
    .restart local v12       #phoneCursor:Landroid/database/Cursor;
    .restart local v13       #result:[Ljava/lang/Object;
    .restart local v14       #translated:Landroid/database/MatrixCursor;
    :cond_8
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v12, v0

    goto/16 :goto_0

    .line 880
    .end local v13           #result:[Ljava/lang/Object;
    .end local v14           #translated:Landroid/database/MatrixCursor;
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLogsToRecipientSearchList()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 881
    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 882
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 883
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 884
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 887
    :cond_a
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v12, v0

    goto/16 :goto_0

    .line 894
    :cond_b
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 895
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 896
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

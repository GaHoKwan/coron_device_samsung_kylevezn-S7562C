.class public Lcom/android/contacts/format/PrefixHighlighter;
.super Ljava/lang/Object;
.source "PrefixHighlighter.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mPrefixHighlightColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "prefixHighlightColor"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    .line 38
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 10
    .parameter "text"
    .parameter "prefix"

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 58
    invoke-static {p1, p2}, Lcom/android/contacts/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v2

    .line 59
    .local v2, index:I
    if-ne v2, v8, :cond_6

    .line 60
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnablePinyinHighlight()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 61
    array-length v7, p2

    new-array v3, v7, [I

    .line 62
    .local v3, indexInitial:[I
    invoke-static {p1, p2, v3}, Lcom/sec/android/app/contacts/hanzi/ChineseHighlightHelper;->findPosToPinyin(Ljava/lang/CharSequence;[C[I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    iget-object v7, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v7, :cond_0

    .line 64
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v7, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 67
    :cond_0
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    .local v4, result:Landroid/text/SpannableString;
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_4

    .line 69
    if-eqz v0, :cond_1

    aget v7, v3, v0

    if-eqz v7, :cond_2

    .line 71
    :cond_1
    aget v5, v3, v9

    .line 72
    .local v5, start:I
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    aget v7, v3, v7

    add-int/lit8 v1, v7, 0x1

    .line 73
    .local v1, end:I
    if-lt v1, v5, :cond_2

    .line 74
    iget-object v7, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4, v7, v5, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 68
    .end local v1           #end:I
    .end local v5           #start:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v4           #result:Landroid/text/SpannableString;
    :cond_3
    move-object v4, p1

    .line 97
    .end local v3           #indexInitial:[I
    :cond_4
    :goto_1
    return-object v4

    .line 83
    :cond_5
    new-instance v6, Landroid/database/CharArrayBuffer;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 84
    .local v6, textBuffer:Landroid/database/CharArrayBuffer;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/contacts/format/FormatUtils;->copyToCharArrayBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    .line 85
    invoke-static {v6, p2}, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->indexOfWord(Landroid/database/CharArrayBuffer;[C)I

    move-result v2

    .line 88
    .end local v6           #textBuffer:Landroid/database/CharArrayBuffer;
    :cond_6
    if-eq v2, v8, :cond_8

    .line 89
    iget-object v7, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v7, :cond_7

    .line 90
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v7, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 93
    :cond_7
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    .restart local v4       #result:Landroid/text/SpannableString;
    iget-object v7, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    array-length v8, p2

    add-int/2addr v8, v2

    invoke-virtual {v4, v7, v2, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .end local v4           #result:Landroid/text/SpannableString;
    :cond_8
    move-object v4, p1

    .line 97
    goto :goto_1
.end method

.method public setText(Landroid/widget/TextView;Ljava/lang/String;[C)V
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "prefix"

    .prologue
    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

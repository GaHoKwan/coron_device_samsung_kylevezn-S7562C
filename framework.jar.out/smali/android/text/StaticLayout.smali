.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZERO_WIDTH_SPACE:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 151
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1103
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1133
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 153
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 154
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 155
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 157
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 70
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 92
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 82
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "maxLines"

    .prologue
    .line 106
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1103
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1133
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 121
    if-eqz p11, :cond_2

    .line 122
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 124
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 125
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 126
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 127
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 129
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 135
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 136
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 138
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 140
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 142
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 146
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 148
    return-void

    .line 106
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 131
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 132
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 50
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 61
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 63
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 21
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 859
    cmpg-float v18, p8, p5

    if-gtz v18, :cond_0

    if-nez p10, :cond_0

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x3

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x4

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 973
    :goto_0
    return-void

    .line 866
    :cond_0
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    sget-object v18, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 869
    .local v6, ellipsisWidth:F
    const/4 v5, 0x0

    .line 870
    .local v5, ellipsisStart:I
    const/4 v4, 0x0

    .line 871
    .local v4, ellipsisCount:I
    sub-int v10, p2, p1

    .line 874
    .local v10, len:I
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 876
    const/16 v16, 0x0

    .line 879
    .local v16, sum:F
    move v7, v10

    .local v7, i:I
    :goto_2
    if-ltz v7, :cond_1

    .line 881
    if-nez v7, :cond_4

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 894
    :cond_1
    const/4 v5, 0x0

    .line 895
    move v4, v7

    .line 971
    .end local v7           #i:I
    .end local v16           #sum:F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x3

    aput v5, v18, v19

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x4

    aput v4, v18, v19

    goto :goto_0

    .line 866
    .end local v4           #ellipsisCount:I
    .end local v5           #ellipsisStart:I
    .end local v6           #ellipsisWidth:F
    .end local v10           #len:I
    :cond_3
    sget-object v18, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 885
    .restart local v4       #ellipsisCount:I
    .restart local v5       #ellipsisStart:I
    .restart local v6       #ellipsisWidth:F
    .restart local v7       #i:I
    .restart local v10       #len:I
    .restart local v16       #sum:F
    :cond_4
    add-int/lit8 v18, v7, -0x1

    add-int v18, v18, p1

    sub-int v18, v18, p4

    aget v17, p3, v18

    .line 887
    .local v17, w:F
    add-float v18, v17, v16

    add-float v18, v18, v6

    cmpl-float v18, v18, p5

    if-gtz v18, :cond_1

    .line 891
    add-float v16, v16, v17

    .line 879
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 897
    .end local v7           #i:I
    .end local v16           #sum:F
    .end local v17           #w:F
    :cond_5
    const-string v18, "StaticLayout"

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 898
    const-string v18, "StaticLayout"

    const-string v19, "Start Ellipsis only supported with one line"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 901
    :cond_6
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 903
    :cond_7
    const/16 v16, 0x0

    .line 906
    .restart local v16       #sum:F
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    if-ge v7, v10, :cond_8

    .line 907
    add-int v18, v7, p1

    sub-int v18, v18, p4

    aget v17, p3, v18

    .line 909
    .restart local v17       #w:F
    add-float v18, v17, v16

    add-float v18, v18, v6

    cmpl-float v18, v18, p5

    if-lez v18, :cond_9

    .line 916
    .end local v17           #w:F
    :cond_8
    move v5, v7

    .line 917
    sub-int v4, v10, v7

    .line 918
    if-eqz p10, :cond_2

    if-nez v4, :cond_2

    if-lez v10, :cond_2

    .line 919
    add-int/lit8 v5, v10, -0x1

    .line 920
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 913
    .restart local v17       #w:F
    :cond_9
    add-float v16, v16, v17

    .line 906
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 924
    .end local v7           #i:I
    .end local v16           #sum:F
    .end local v17           #w:F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 925
    const/4 v11, 0x0

    .local v11, lsum:F
    const/4 v15, 0x0

    .line 926
    .local v15, rsum:F
    const/4 v9, 0x0

    .local v9, left:I
    move v13, v10

    .line 927
    .local v13, right:I
    move v14, v13

    .line 929
    .local v14, rightForZeroWidth:I
    sub-float v18, p5, v6

    const/high16 v19, 0x4000

    div-float v12, v18, v19

    .line 930
    .local v12, ravail:F
    move v13, v10

    :goto_5
    if-ltz v13, :cond_b

    .line 932
    if-nez v13, :cond_e

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_e

    .line 947
    :cond_b
    if-eqz v13, :cond_c

    .line 948
    move v13, v14

    .line 951
    :cond_c
    sub-float v18, p5, v6

    sub-float v8, v18, v15

    .line 952
    .local v8, lavail:F
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_d

    .line 953
    add-int v18, v9, p1

    sub-int v18, v18, p4

    aget v17, p3, v18

    .line 955
    .restart local v17       #w:F
    add-float v18, v17, v11

    cmpl-float v18, v18, v8

    if-lez v18, :cond_10

    .line 962
    .end local v17           #w:F
    :cond_d
    move v5, v9

    .line 963
    sub-int v4, v13, v9

    .line 964
    goto/16 :goto_3

    .line 936
    .end local v8           #lavail:F
    :cond_e
    add-int/lit8 v18, v13, -0x1

    add-int v18, v18, p1

    sub-int v18, v18, p4

    aget v17, p3, v18

    .line 938
    .restart local v17       #w:F
    add-float v18, v17, v15

    cmpl-float v18, v18, v12

    if-gtz v18, :cond_b

    .line 941
    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-eqz v18, :cond_f

    .line 942
    add-int/lit8 v14, v13, -0x1

    .line 945
    :cond_f
    add-float v15, v15, v17

    .line 930
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 959
    .restart local v8       #lavail:F
    :cond_10
    add-float v11, v11, v17

    .line 952
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 965
    .end local v8           #lavail:F
    .end local v9           #left:I
    .end local v11           #lsum:F
    .end local v12           #ravail:F
    .end local v13           #right:I
    .end local v14           #rightForZeroWidth:I
    .end local v15           #rsum:F
    .end local v17           #w:F
    :cond_11
    const-string v18, "StaticLayout"

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 966
    const-string v18, "StaticLayout"

    const-string v19, "Middle Ellipsis only supported with one line"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 561
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    move p1, v0

    .line 722
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 564
    .restart local p1
    :cond_1
    const/16 v2, 0x3000

    if-ne p0, v2, :cond_2

    move p1, v0

    .line 565
    goto :goto_0

    .line 567
    :cond_2
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_4

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_4

    .line 568
    if-nez p1, :cond_3

    .line 569
    sparse-switch p0, :sswitch_data_0

    :cond_3
    move p1, v0

    .line 589
    goto :goto_0

    :sswitch_0
    move p1, v1

    .line 586
    goto :goto_0

    .line 591
    :cond_4
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_6

    .line 592
    if-nez p1, :cond_5

    .line 593
    sparse-switch p0, :sswitch_data_1

    :cond_5
    move p1, v0

    .line 614
    goto :goto_0

    :sswitch_1
    move p1, v1

    .line 611
    goto :goto_0

    .line 616
    :cond_6
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_7

    const/16 v2, 0x4db5

    if-gt p0, v2, :cond_7

    move p1, v0

    .line 617
    goto :goto_0

    .line 619
    :cond_7
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_8

    const v2, 0x9fbb

    if-gt p0, v2, :cond_8

    move p1, v0

    .line 620
    goto :goto_0

    .line 622
    :cond_8
    const v2, 0xf900

    if-lt p0, v2, :cond_9

    const v2, 0xfad9

    if-gt p0, v2, :cond_9

    move p1, v0

    .line 623
    goto :goto_0

    .line 625
    :cond_9
    const v2, 0xa000

    if-lt p0, v2, :cond_a

    const v2, 0xa48f

    if-gt p0, v2, :cond_a

    move p1, v0

    .line 626
    goto :goto_0

    .line 628
    :cond_a
    const v2, 0xa490

    if-lt p0, v2, :cond_b

    const v2, 0xa4cf

    if-gt p0, v2, :cond_b

    move p1, v0

    .line 629
    goto :goto_0

    .line 631
    :cond_b
    const v2, 0xfe62

    if-lt p0, v2, :cond_c

    const v2, 0xfe66

    if-gt p0, v2, :cond_c

    move p1, v0

    .line 632
    goto :goto_0

    .line 634
    :cond_c
    const v2, 0xff10

    if-lt p0, v2, :cond_d

    const v2, 0xff19

    if-gt p0, v2, :cond_d

    move p1, v0

    .line 635
    goto :goto_0

    .line 643
    :cond_d
    const/16 v2, 0x3001

    if-lt p0, v2, :cond_f

    const/16 v2, 0x301f

    if-gt p0, v2, :cond_f

    .line 644
    if-nez p1, :cond_e

    .line 645
    packed-switch p0, :pswitch_data_0

    .line 658
    :cond_e
    :pswitch_0
    packed-switch p0, :pswitch_data_1

    :pswitch_1
    move p1, v0

    .line 667
    goto/16 :goto_0

    :pswitch_2
    move p1, v1

    .line 655
    goto/16 :goto_0

    :pswitch_3
    move p1, v1

    .line 665
    goto/16 :goto_0

    .line 669
    :cond_f
    const v2, 0xff01

    if-lt p0, v2, :cond_11

    const v2, 0xff9f

    if-gt p0, v2, :cond_11

    .line 670
    if-nez p1, :cond_10

    .line 671
    sparse-switch p0, :sswitch_data_2

    .line 691
    :cond_10
    sparse-switch p0, :sswitch_data_3

    move p1, v0

    .line 698
    goto/16 :goto_0

    :sswitch_2
    move p1, v1

    .line 688
    goto/16 :goto_0

    :sswitch_3
    move p1, v1

    .line 696
    goto/16 :goto_0

    .line 700
    :cond_11
    const/16 v2, 0x21

    if-lt p0, v2, :cond_13

    const/16 v2, 0x3f

    if-gt p0, v2, :cond_13

    .line 701
    if-nez p1, :cond_12

    .line 702
    sparse-switch p0, :sswitch_data_4

    :cond_12
    move p1, v0

    .line 713
    goto/16 :goto_0

    :sswitch_4
    move p1, v1

    .line 710
    goto/16 :goto_0

    .line 715
    :cond_13
    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x90

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2019

    if-eq p0, v0, :cond_0

    const/16 v0, 0x201d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2032

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2033

    if-eq p0, v0, :cond_0

    .line 719
    const/16 v0, 0x309b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30fb

    if-eq p0, v0, :cond_0

    move p1, v1

    .line 722
    goto/16 :goto_0

    .line 569
    nop

    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 593
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch

    .line 645
    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 658
    :pswitch_data_1
    .packed-switch 0x3008
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 671
    :sswitch_data_2
    .sparse-switch
        0xff01 -> :sswitch_2
        0xff09 -> :sswitch_2
        0xff0c -> :sswitch_2
        0xff0e -> :sswitch_2
        0xff1a -> :sswitch_2
        0xff1b -> :sswitch_2
        0xff1f -> :sswitch_2
        0xff3d -> :sswitch_2
        0xff5d -> :sswitch_2
        0xff61 -> :sswitch_2
        0xff63 -> :sswitch_2
        0xff64 -> :sswitch_2
        0xff65 -> :sswitch_2
        0xff70 -> :sswitch_2
        0xff9e -> :sswitch_2
        0xff9f -> :sswitch_2
    .end sparse-switch

    .line 691
    :sswitch_data_3
    .sparse-switch
        0xff08 -> :sswitch_3
        0xff3b -> :sswitch_3
        0xff5b -> :sswitch_3
        0xff62 -> :sswitch_3
    .end sparse-switch

    .line 702
    :sswitch_data_4
    .sparse-switch
        0x21 -> :sswitch_4
        0x29 -> :sswitch_4
        0x2c -> :sswitch_4
        0x2e -> :sswitch_4
        0x3a -> :sswitch_4
        0x3b -> :sswitch_4
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "bufEnd"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "moreChars"

    .prologue
    .line 736
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 737
    .local v22, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 738
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 739
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 741
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 742
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 743
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 744
    .local v19, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 746
    move-object/from16 v24, v19

    .line 748
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 749
    .local v20, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 754
    .end local v19           #grow:[I
    .end local v20           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 755
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 756
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 757
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 758
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 760
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 761
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 762
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 760
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 766
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 770
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 771
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 772
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 773
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 776
    .end local v21           #i:I
    :cond_3
    if-nez v22, :cond_5

    .line 777
    if-eqz p21, :cond_4

    .line 778
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 781
    :cond_4
    if-eqz p20, :cond_5

    .line 782
    move/from16 p4, p6

    .line 785
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 786
    if-eqz p21, :cond_6

    .line 787
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 790
    :cond_6
    if-eqz p20, :cond_7

    .line 791
    move/from16 p5, p7

    .line 797
    :cond_7
    if-eqz p15, :cond_10

    .line 798
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 799
    .local v15, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_f

    .line 800
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 808
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 809
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 810
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 812
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 813
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 814
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 816
    if-eqz p14, :cond_8

    .line 817
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 819
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 820
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 824
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_11

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 831
    :goto_3
    if-eqz p25, :cond_e

    .line 834
    if-nez v22, :cond_12

    const/16 v18, 0x1

    .line 835
    .local v18, firstLine:Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    .line 836
    .local v13, currentLineIsTheLastVisibleOne:Z
    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    .line 838
    .local v12, forceEllipsis:Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v18, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v18, :cond_15

    if-nez v13, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    const/4 v14, 0x1

    .line 843
    .local v14, doEllipsis:Z
    :goto_7
    if-eqz v14, :cond_e

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 844
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 850
    .end local v12           #forceEllipsis:Z
    .end local v13           #currentLineIsTheLastVisibleOne:Z
    .end local v14           #doEllipsis:Z
    .end local v18           #firstLine:Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 851
    return p8

    .line 802
    .end local v17           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_f
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 805
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_10
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 827
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_3

    .line 834
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 835
    .restart local v18       #firstLine:Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_5

    .line 836
    .restart local v13       #currentLineIsTheLastVisibleOne:Z
    :cond_14
    const/4 v12, 0x0

    goto :goto_6

    .line 838
    .restart local v12       #forceEllipsis:Z
    :cond_15
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1084
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 134
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    .line 166
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 168
    const/4 v15, 0x0

    .line 169
    .local v15, v:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v95

    .line 170
    .local v95, Is_TAG_CSCFEATURE_FRAMEWORK_ENABLEEMOJI:Z
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v22, 0x1

    .line 172
    .local v22, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    .line 173
    .local v20, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v19, 0x0

    .line 175
    .local v19, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v115, v0

    .line 177
    .local v115, measured:Landroid/text/MeasuredText;
    const/16 v128, 0x0

    .line 178
    .local v128, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v128, p1

    .line 179
    check-cast v128, Landroid/text/Spanned;

    .line 181
    :cond_1
    const/16 v82, 0x1

    .line 184
    .local v82, DEFAULT_DIR:I
    move/from16 v31, p2

    .local v31, paraStart:I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, p3

    if-gt v0, v1, :cond_35

    .line 185
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v40

    .line 186
    .local v40, paraEnd:I
    if-gez v40, :cond_4

    .line 187
    move/from16 v40, p3

    .line 191
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v102, v5, 0x1

    .line 192
    .local v102, firstWidthLineLimit:I
    move/from16 v101, p5

    .line 193
    .local v101, firstWidth:I
    move/from16 v123, p5

    .line 195
    .local v123, restWidth:I
    const/16 v18, 0x0

    .line 197
    .local v18, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v128, :cond_9

    .line 198
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v128

    move/from16 v1, v31

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v124

    check-cast v124, [Landroid/text/style/LeadingMarginSpan;

    .line 200
    .local v124, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v110, 0x0

    .local v110, i:I
    :goto_3
    move-object/from16 v0, v124

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_5

    .line 201
    aget-object v112, v124, v110

    .line 202
    .local v112, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v124, v110

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v101, v101, v5

    .line 203
    aget-object v5, v124, v110

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v123, v123, v5

    .line 209
    move-object/from16 v0, v112

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v113, v112

    .line 210
    check-cast v113, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 211
    .local v113, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v128

    move-object/from16 v1, v113

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v114

    .line 212
    .local v114, lmsFirstLine:I
    invoke-interface/range {v113 .. v113}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v102, v114, v5

    .line 200
    .end local v113           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v114           #lmsFirstLine:I
    :cond_2
    add-int/lit8 v110, v110, 0x1

    goto :goto_3

    .line 170
    .end local v18           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #chooseHtv:[I
    .end local v20           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v22           #needMultiply:Z
    .end local v31           #paraStart:I
    .end local v40           #paraEnd:I
    .end local v82           #DEFAULT_DIR:I
    .end local v101           #firstWidth:I
    .end local v102           #firstWidthLineLimit:I
    .end local v110           #i:I
    .end local v112           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v115           #measured:Landroid/text/MeasuredText;
    .end local v123           #restWidth:I
    .end local v124           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v128           #spanned:Landroid/text/Spanned;
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 189
    .restart local v19       #chooseHtv:[I
    .restart local v20       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v22       #needMultiply:Z
    .restart local v31       #paraStart:I
    .restart local v40       #paraEnd:I
    .restart local v82       #DEFAULT_DIR:I
    .restart local v115       #measured:Landroid/text/MeasuredText;
    .restart local v128       #spanned:Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v40, v40, 0x1

    goto :goto_2

    .line 216
    .restart local v18       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v101       #firstWidth:I
    .restart local v102       #firstWidthLineLimit:I
    .restart local v110       #i:I
    .restart local v123       #restWidth:I
    .restart local v124       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v128

    move/from16 v1, v31

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    .end local v18           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v18, [Landroid/text/style/LineHeightSpan;

    .line 218
    .restart local v18       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v18

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 219
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    array-length v5, v0

    move-object/from16 v0, v18

    array-length v7, v0

    if-ge v5, v7, :cond_7

    .line 221
    :cond_6
    move-object/from16 v0, v18

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 225
    :cond_7
    const/16 v110, 0x0

    :goto_4
    move-object/from16 v0, v18

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_9

    .line 226
    aget-object v5, v18, v110

    move-object/from16 v0, v128

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v116

    .line 228
    .local v116, o:I
    move/from16 v0, v116

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 232
    move-object/from16 v0, p0

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v19, v110

    .line 225
    :goto_5
    add-int/lit8 v110, v110, 0x1

    goto :goto_4

    .line 236
    :cond_8
    aput v15, v19, v110

    goto :goto_5

    .line 242
    .end local v110           #i:I
    .end local v116           #o:I
    .end local v124           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v0, v115

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v40

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 243
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v29, v0

    .line 244
    .local v29, chs:[C
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v30, v0

    .line 245
    .local v30, widths:[F
    if-eqz v95, :cond_a

    .line 246
    sub-int v5, v40, v31

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v30

    array-length v7, v0

    if-le v5, v7, :cond_a

    .line 247
    sub-int v5, v40, v31

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [F

    move-object/from16 v30, v0

    .line 248
    move-object/from16 v0, v30

    move-object/from16 v1, v115

    iput-object v0, v1, Landroid/text/MeasuredText;->mWidths:[F

    .line 251
    :cond_a
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v23, v0

    .line 252
    .local v23, chdirs:[B
    move-object/from16 v0, v115

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v24, v0

    .line 253
    .local v24, dir:I
    move-object/from16 v0, v115

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v25, v0

    .line 255
    .local v25, easy:Z
    move/from16 v133, v101

    .line 257
    .local v133, width:I
    const/16 v64, 0x0

    .line 259
    .local v64, w:F
    move/from16 v39, v31

    .line 263
    .local v39, here:I
    move/from16 v117, v31

    .line 264
    .local v117, ok:I
    move/from16 v122, v64

    .line 265
    .local v122, okWidth:F
    const/16 v118, 0x0

    .local v118, okAscent:I
    const/16 v120, 0x0

    .local v120, okDescent:I
    const/16 v121, 0x0

    .local v121, okTop:I
    const/16 v119, 0x0

    .line 269
    .local v119, okBottom:I
    move/from16 v103, v31

    .line 270
    .local v103, fit:I
    move/from16 v104, v64

    .line 271
    .local v104, fitWidth:F
    const/16 v41, 0x0

    .local v41, fitAscent:I
    const/16 v42, 0x0

    .local v42, fitDescent:I
    const/16 v43, 0x0

    .local v43, fitTop:I
    const/16 v44, 0x0

    .line 273
    .local v44, fitBottom:I
    const/16 v21, 0x0

    .line 274
    .local v21, hasTabOrEmoji:Z
    const/16 v109, 0x0

    .line 275
    .local v109, hasTab:Z
    const/16 v130, 0x0

    .line 277
    .local v130, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v127, v31

    .local v127, spanStart:I
    :goto_6
    move/from16 v0, v127

    move/from16 v1, v40

    if-ge v0, v1, :cond_32

    .line 279
    if-nez v128, :cond_1c

    .line 280
    move/from16 v125, v40

    .line 281
    .local v125, spanEnd:I
    sub-int v126, v125, v127

    .line 282
    .local v126, spanLen:I
    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move/from16 v2, v126

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 293
    :goto_7
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v108, v0

    .line 294
    .local v108, fmTop:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    .line 295
    .local v106, fmBottom:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v105, v0

    .line 296
    .local v105, fmAscent:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v107, v0

    .line 297
    .local v107, fmDescent:I
    const/16 v96, 0x0

    .line 299
    .local v96, bZerowithspace:Z
    move/from16 v111, v127

    .local v111, j:I
    :goto_8
    move/from16 v0, v111

    move/from16 v1, v125

    if-ge v0, v1, :cond_1b

    .line 300
    sub-int v5, v111, v31

    aget-char v98, v29, v5

    .line 302
    .local v98, c:C
    const/16 v5, 0xa

    move/from16 v0, v98

    if-ne v0, v5, :cond_1d

    .line 375
    :goto_9
    move/from16 v0, v133

    int-to-float v5, v0

    cmpg-float v5, v64, v5

    if-gtz v5, :cond_2a

    .line 376
    move/from16 v104, v64

    .line 377
    add-int/lit8 v103, v111, 0x1

    .line 379
    move/from16 v0, v108

    move/from16 v1, v43

    if-ge v0, v1, :cond_b

    .line 380
    move/from16 v43, v108

    .line 381
    :cond_b
    move/from16 v0, v105

    move/from16 v1, v41

    if-ge v0, v1, :cond_c

    .line 382
    move/from16 v41, v105

    .line 383
    :cond_c
    move/from16 v0, v107

    move/from16 v1, v42

    if-le v0, v1, :cond_d

    .line 384
    move/from16 v42, v107

    .line 385
    :cond_d
    move/from16 v0, v106

    move/from16 v1, v44

    if-le v0, v1, :cond_e

    .line 386
    move/from16 v44, v106

    .line 403
    :cond_e
    const/16 v5, 0x200b

    move/from16 v0, v98

    if-ne v0, v5, :cond_f

    .line 404
    const/16 v96, 0x1

    .line 407
    :cond_f
    const/16 v5, 0x200b

    move/from16 v0, v98

    if-eq v0, v5, :cond_16

    if-nez v96, :cond_1a

    const/16 v5, 0x20

    move/from16 v0, v98

    if-eq v0, v5, :cond_16

    const/16 v5, 0x9

    move/from16 v0, v98

    if-eq v0, v5, :cond_16

    const/16 v5, 0x2e

    move/from16 v0, v98

    if-eq v0, v5, :cond_10

    const/16 v5, 0x2c

    move/from16 v0, v98

    if-eq v0, v5, :cond_10

    const/16 v5, 0x3a

    move/from16 v0, v98

    if-eq v0, v5, :cond_10

    const/16 v5, 0x3b

    move/from16 v0, v98

    if-ne v0, v5, :cond_12

    :cond_10
    add-int/lit8 v5, v111, -0x1

    move/from16 v0, v39

    if-lt v5, v0, :cond_11

    add-int/lit8 v5, v111, -0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_16

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_12
    const/16 v5, 0x2f

    move/from16 v0, v98

    if-eq v0, v5, :cond_13

    const/16 v5, 0x2d

    move/from16 v0, v98

    if-ne v0, v5, :cond_14

    :cond_13
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_16

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_14
    if-nez v96, :cond_15

    const/16 v5, 0x2e80

    move/from16 v0, v98

    if-lt v0, v5, :cond_15

    const/4 v5, 0x1

    move/from16 v0, v98

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_15

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_15

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    if-nez v96, :cond_1a

    const/16 v5, 0x2e80

    move/from16 v0, v98

    if-lt v0, v5, :cond_1a

    const/4 v5, 0x1

    move/from16 v0, v98

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_1a

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_1a

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 420
    :cond_16
    move/from16 v122, v64

    .line 421
    add-int/lit8 v117, v111, 0x1

    .line 423
    move/from16 v0, v43

    move/from16 v1, v121

    if-ge v0, v1, :cond_17

    .line 424
    move/from16 v121, v43

    .line 425
    :cond_17
    move/from16 v0, v41

    move/from16 v1, v118

    if-ge v0, v1, :cond_18

    .line 426
    move/from16 v118, v41

    .line 427
    :cond_18
    move/from16 v0, v42

    move/from16 v1, v120

    if-le v0, v1, :cond_19

    .line 428
    move/from16 v120, v42

    .line 429
    :cond_19
    move/from16 v0, v44

    move/from16 v1, v119

    if-le v0, v1, :cond_1a

    .line 430
    move/from16 v119, v44

    .line 495
    :cond_1a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v7, :cond_31

    .line 277
    .end local v98           #c:C
    :cond_1b
    :goto_a
    move/from16 v127, v125

    goto/16 :goto_6

    .line 284
    .end local v96           #bZerowithspace:Z
    .end local v105           #fmAscent:I
    .end local v106           #fmBottom:I
    .end local v107           #fmDescent:I
    .end local v108           #fmTop:I
    .end local v111           #j:I
    .end local v125           #spanEnd:I
    .end local v126           #spanLen:I
    :cond_1c
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move/from16 v1, v127

    move/from16 v2, v40

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v125

    .line 286
    .restart local v125       #spanEnd:I
    sub-int v126, v125, v127

    .line 287
    .restart local v126       #spanLen:I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move/from16 v1, v127

    move/from16 v2, v125

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v129

    check-cast v129, [Landroid/text/style/MetricAffectingSpan;

    .line 289
    .local v129, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v129

    move-object/from16 v1, v128

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v129

    .end local v129           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v129, [Landroid/text/style/MetricAffectingSpan;

    .line 290
    .restart local v129       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move-object/from16 v2, v129

    move/from16 v3, v126

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_7

    .line 304
    .end local v129           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v96       #bZerowithspace:Z
    .restart local v98       #c:C
    .restart local v105       #fmAscent:I
    .restart local v106       #fmBottom:I
    .restart local v107       #fmDescent:I
    .restart local v108       #fmTop:I
    .restart local v111       #j:I
    :cond_1d
    const/16 v5, 0x9

    move/from16 v0, v98

    if-ne v0, v5, :cond_20

    .line 305
    if-nez v109, :cond_1e

    .line 306
    const/16 v109, 0x1

    .line 307
    const/16 v21, 0x1

    .line 308
    if-eqz v128, :cond_1e

    .line 310
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v128

    move/from16 v1, v31

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v129

    check-cast v129, [Landroid/text/style/TabStopSpan;

    .line 312
    .local v129, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v129

    array-length v5, v0

    if-lez v5, :cond_1e

    .line 313
    new-instance v130, Landroid/text/Layout$TabStops;

    .end local v130           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v130

    move-object/from16 v1, v129

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 317
    .end local v129           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v130       #tabStops:Landroid/text/Layout$TabStops;
    :cond_1e
    if-eqz v130, :cond_1f

    .line 318
    move-object/from16 v0, v130

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v64

    goto/16 :goto_9

    .line 320
    :cond_1f
    const/16 v5, 0x14

    move/from16 v0, v64

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v64

    goto/16 :goto_9

    .line 322
    :cond_20
    const v5, 0xd800

    move/from16 v0, v98

    if-lt v0, v5, :cond_26

    const v5, 0xdfff

    move/from16 v0, v98

    if-gt v0, v5, :cond_26

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_26

    .line 324
    sub-int v5, v111, v31

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v99

    .line 326
    .local v99, emoji:I
    if-eqz v95, :cond_21

    const v5, 0xdbb8

    move/from16 v0, v98

    if-lt v0, v5, :cond_21

    const v5, 0xdbbb

    move/from16 v0, v98

    if-gt v0, v5, :cond_21

    .line 328
    const/16 v100, 0x0

    .line 329
    .local v100, emojiWidth:F
    const/4 v5, 0x1

    new-array v6, v5, [C

    .line 330
    .local v6, tmpChar:[C
    const/4 v5, 0x0

    const v7, 0xe757

    aput-char v7, v6, v5

    .line 331
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v5 .. v13}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v100

    .line 332
    add-float v64, v64, v100

    .line 333
    sub-int v5, v111, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    aput v100, v30, v5

    .line 334
    sub-int v5, v111, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    aput v7, v30, v5

    .line 335
    const/16 v21, 0x1

    .line 336
    add-int/lit8 v111, v111, 0x1

    .line 337
    goto/16 :goto_9

    .line 338
    .end local v6           #tmpChar:[C
    .end local v100           #emojiWidth:F
    :cond_21
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v99

    if-lt v0, v5, :cond_25

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v99

    if-gt v0, v5, :cond_25

    .line 339
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v99

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v97

    .line 341
    .local v97, bm:Landroid/graphics/Bitmap;
    if-eqz v97, :cond_24

    .line 344
    if-nez v128, :cond_22

    .line 345
    move-object/from16 v131, p4

    .line 350
    .local v131, whichPaint:Landroid/graphics/Paint;
    :goto_b
    invoke-virtual/range {v97 .. v97}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v131 .. v131}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    mul-float/2addr v5, v7

    invoke-virtual/range {v97 .. v97}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v132, v5, v7

    .line 352
    .local v132, wid:F
    const/16 v21, 0x1

    .line 353
    if-eqz v95, :cond_23

    .line 354
    const v5, 0x400ab021

    mul-float v5, v5, v132

    add-float v64, v64, v5

    .line 355
    sub-int v5, v111, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    const v7, 0x400ab021

    mul-float v7, v7, v132

    aput v7, v30, v5

    .line 356
    sub-int v5, v111, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    aput v7, v30, v5

    .line 359
    :goto_c
    add-int/lit8 v111, v111, 0x1

    .line 360
    goto/16 :goto_9

    .line 347
    .end local v131           #whichPaint:Landroid/graphics/Paint;
    .end local v132           #wid:F
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v131, v0

    .restart local v131       #whichPaint:Landroid/graphics/Paint;
    goto :goto_b

    .line 358
    .restart local v132       #wid:F
    :cond_23
    add-float v64, v64, v132

    goto :goto_c

    .line 361
    .end local v131           #whichPaint:Landroid/graphics/Paint;
    .end local v132           #wid:F
    :cond_24
    sub-int v5, v111, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_9

    .line 364
    .end local v97           #bm:Landroid/graphics/Bitmap;
    :cond_25
    sub-int v5, v111, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_9

    .line 367
    .end local v99           #emoji:I
    :cond_26
    if-eqz v95, :cond_29

    const v5, 0xe63e

    move/from16 v0, v98

    if-lt v0, v5, :cond_27

    const v5, 0xe6ba

    move/from16 v0, v98

    if-le v0, v5, :cond_28

    :cond_27
    const v5, 0xe70c

    move/from16 v0, v98

    if-lt v0, v5, :cond_29

    const v5, 0xe757

    move/from16 v0, v98

    if-gt v0, v5, :cond_29

    .line 369
    :cond_28
    const/16 v21, 0x1

    .line 370
    sub-int v5, v111, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_9

    .line 372
    :cond_29
    sub-int v5, v111, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_9

    .line 433
    :cond_2a
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_2c

    const/16 v36, 0x1

    .line 438
    .local v36, moreChars:Z
    :goto_d
    move/from16 v0, v117

    move/from16 v1, v39

    if-eq v0, v1, :cond_2f

    .line 440
    const/16 v5, 0x20

    move/from16 v0, v98

    if-ne v0, v5, :cond_2b

    add-int/lit8 v117, v111, 0x1

    .line 442
    :cond_2b
    :goto_e
    move/from16 v0, v117

    move/from16 v1, v125

    if-ge v0, v1, :cond_2d

    sub-int v5, v117, v31

    aget-char v5, v29, v5

    const/16 v7, 0x20

    if-ne v5, v7, :cond_2d

    .line 443
    add-int/lit8 v117, v117, 0x1

    goto :goto_e

    .line 433
    .end local v36           #moreChars:Z
    :cond_2c
    const/16 v36, 0x0

    goto :goto_d

    .line 446
    .restart local v36       #moreChars:Z
    :cond_2d
    move/from16 v10, v117

    .line 447
    .local v10, endPos:I
    move/from16 v11, v118

    .line 448
    .local v11, above:I
    move/from16 v12, v120

    .line 449
    .local v12, below:I
    move/from16 v13, v121

    .line 450
    .local v13, top:I
    move/from16 v14, v119

    .line 451
    .local v14, bottom:I
    move/from16 v34, v122

    .local v34, currentTextWidth:F
    :goto_f
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, v39

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v26, p3

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v32, p12

    move/from16 v33, p11

    move-object/from16 v35, p4

    .line 468
    invoke-direct/range {v7 .. v36}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    .line 475
    move/from16 v39, v10

    .line 476
    add-int/lit8 v111, v39, -0x1

    .line 477
    move/from16 v103, v39

    move/from16 v117, v39

    .line 478
    const/16 v64, 0x0

    .line 479
    const/16 v44, 0x0

    move/from16 v43, v44

    move/from16 v42, v44

    move/from16 v41, v44

    .line 480
    const/16 v119, 0x0

    move/from16 v121, v119

    move/from16 v120, v119

    move/from16 v118, v119

    .line 482
    add-int/lit8 v102, v102, -0x1

    if-gtz v102, :cond_2e

    .line 483
    move/from16 v133, v123

    .line 486
    :cond_2e
    move/from16 v0, v39

    move/from16 v1, v127

    if-ge v0, v1, :cond_1a

    .line 489
    move-object/from16 v0, v115

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/text/MeasuredText;->setPos(I)V

    .line 490
    move/from16 v125, v39

    .line 491
    goto/16 :goto_a

    .line 452
    .end local v10           #endPos:I
    .end local v11           #above:I
    .end local v12           #below:I
    .end local v13           #top:I
    .end local v14           #bottom:I
    .end local v34           #currentTextWidth:F
    :cond_2f
    move/from16 v0, v103

    move/from16 v1, v39

    if-eq v0, v1, :cond_30

    .line 453
    move/from16 v10, v103

    .line 454
    .restart local v10       #endPos:I
    move/from16 v11, v41

    .line 455
    .restart local v11       #above:I
    move/from16 v12, v42

    .line 456
    .restart local v12       #below:I
    move/from16 v13, v43

    .line 457
    .restart local v13       #top:I
    move/from16 v14, v44

    .line 458
    .restart local v14       #bottom:I
    move/from16 v34, v104

    .restart local v34       #currentTextWidth:F
    goto :goto_f

    .line 460
    .end local v10           #endPos:I
    .end local v11           #above:I
    .end local v12           #below:I
    .end local v13           #top:I
    .end local v14           #bottom:I
    .end local v34           #currentTextWidth:F
    :cond_30
    add-int/lit8 v10, v39, 0x1

    .line 461
    .restart local v10       #endPos:I
    move-object/from16 v0, v20

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 462
    .restart local v11       #above:I
    move-object/from16 v0, v20

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 463
    .restart local v12       #below:I
    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 464
    .restart local v13       #top:I
    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 465
    .restart local v14       #bottom:I
    sub-int v5, v39, v31

    aget v34, v30, v5

    .restart local v34       #currentTextWidth:F
    goto :goto_f

    .line 299
    .end local v10           #endPos:I
    .end local v11           #above:I
    .end local v12           #below:I
    .end local v13           #top:I
    .end local v14           #bottom:I
    .end local v34           #currentTextWidth:F
    .end local v36           #moreChars:Z
    :cond_31
    add-int/lit8 v111, v111, 0x1

    goto/16 :goto_8

    .line 501
    .end local v96           #bZerowithspace:Z
    .end local v98           #c:C
    .end local v105           #fmAscent:I
    .end local v106           #fmBottom:I
    .end local v107           #fmDescent:I
    .end local v108           #fmTop:I
    .end local v111           #j:I
    .end local v125           #spanEnd:I
    .end local v126           #spanLen:I
    :cond_32
    move/from16 v0, v40

    move/from16 v1, v39

    if-eq v0, v1, :cond_34

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v7, :cond_34

    .line 502
    or-int v5, v43, v44

    or-int v5, v5, v42

    or-int v5, v5, v41

    if-nez v5, :cond_33

    .line 503
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 505
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v43, v0

    .line 506
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v44, v0

    .line 507
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v41, v0

    .line 508
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v42, v0

    .line 513
    :cond_33
    move/from16 v0, v40

    move/from16 v1, p3

    if-eq v0, v1, :cond_38

    const/16 v66, 0x1

    :goto_10
    move-object/from16 v37, p0

    move-object/from16 v38, p1

    move/from16 v45, v15

    move/from16 v46, p7

    move/from16 v47, p8

    move-object/from16 v48, v18

    move-object/from16 v49, v19

    move-object/from16 v50, v20

    move/from16 v51, v21

    move/from16 v52, v22

    move-object/from16 v53, v23

    move/from16 v54, v24

    move/from16 v55, v25

    move/from16 v56, p3

    move/from16 v57, p9

    move/from16 v58, p10

    move-object/from16 v59, v29

    move-object/from16 v60, v30

    move/from16 v61, v31

    move-object/from16 v62, p12

    move/from16 v63, p11

    move-object/from16 v65, p4

    invoke-direct/range {v37 .. v66}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    .line 525
    :cond_34
    move/from16 v31, v40

    .line 527
    move/from16 v0, v40

    move/from16 v1, p3

    if-ne v0, v1, :cond_39

    .line 531
    .end local v18           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v21           #hasTabOrEmoji:Z
    .end local v23           #chdirs:[B
    .end local v24           #dir:I
    .end local v25           #easy:Z
    .end local v29           #chs:[C
    .end local v30           #widths:[F
    .end local v39           #here:I
    .end local v40           #paraEnd:I
    .end local v41           #fitAscent:I
    .end local v42           #fitDescent:I
    .end local v43           #fitTop:I
    .end local v44           #fitBottom:I
    .end local v64           #w:F
    .end local v101           #firstWidth:I
    .end local v102           #firstWidthLineLimit:I
    .end local v103           #fit:I
    .end local v104           #fitWidth:F
    .end local v109           #hasTab:Z
    .end local v117           #ok:I
    .end local v118           #okAscent:I
    .end local v119           #okBottom:I
    .end local v120           #okDescent:I
    .end local v121           #okTop:I
    .end local v122           #okWidth:F
    .end local v123           #restWidth:I
    .end local v127           #spanStart:I
    .end local v130           #tabStops:Landroid/text/Layout$TabStops;
    .end local v133           #width:I
    :cond_35
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_36

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_37

    :cond_36
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v7, :cond_37

    .line 535
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 537
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v69, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v70, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v71, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v72, v0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x0

    const/16 v83, 0x1

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v92, 0x0

    const/16 v94, 0x0

    move-object/from16 v65, p0

    move-object/from16 v66, p1

    move/from16 v67, p3

    move/from16 v68, p3

    move/from16 v73, v15

    move/from16 v74, p7

    move/from16 v75, p8

    move-object/from16 v78, v20

    move/from16 v80, v22

    move/from16 v84, p3

    move/from16 v85, p9

    move/from16 v86, p10

    move/from16 v89, p2

    move-object/from16 v90, p12

    move/from16 v91, p11

    move-object/from16 v93, p4

    invoke-direct/range {v65 .. v94}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    .line 548
    :cond_37
    return-void

    .line 513
    .restart local v18       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v21       #hasTabOrEmoji:Z
    .restart local v23       #chdirs:[B
    .restart local v24       #dir:I
    .restart local v25       #easy:Z
    .restart local v29       #chs:[C
    .restart local v30       #widths:[F
    .restart local v39       #here:I
    .restart local v40       #paraEnd:I
    .restart local v41       #fitAscent:I
    .restart local v42       #fitDescent:I
    .restart local v43       #fitTop:I
    .restart local v44       #fitBottom:I
    .restart local v64       #w:F
    .restart local v101       #firstWidth:I
    .restart local v102       #firstWidthLineLimit:I
    .restart local v103       #fit:I
    .restart local v104       #fitWidth:F
    .restart local v109       #hasTab:Z
    .restart local v117       #ok:I
    .restart local v118       #okAscent:I
    .restart local v119       #okBottom:I
    .restart local v120       #okDescent:I
    .restart local v121       #okTop:I
    .restart local v122       #okWidth:F
    .restart local v123       #restWidth:I
    .restart local v127       #spanStart:I
    .restart local v130       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v133       #width:I
    :cond_38
    const/16 v66, 0x0

    goto/16 :goto_10

    .line 184
    :cond_39
    move/from16 v31, v40

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1052
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1057
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1058
    const/4 v0, 0x0

    .line 1061
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1066
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1067
    const/4 v0, 0x0

    .line 1070
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1075
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 1037
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1017
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 1018
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1020
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1022
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 1042
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 981
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 982
    .local v1, high:I
    const/4 v3, -0x1

    .line 984
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 985
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 986
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 987
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 988
    move v1, v0

    goto :goto_0

    .line 990
    :cond_0
    move v3, v0

    goto :goto_0

    .line 993
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 994
    const/4 v3, 0x0

    .line 996
    .end local v3           #low:I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1007
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 1008
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1010
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1012
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1047
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1079
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1080
    return-void
.end method

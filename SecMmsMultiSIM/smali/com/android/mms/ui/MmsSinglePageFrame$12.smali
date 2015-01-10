.class Lcom/android/mms/ui/MmsSinglePageFrame$12;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 2110
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 29
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .local v5, action:I
    move-object/from16 v21, p1

    .line 2118
    check-cast v21, Landroid/widget/TextView;

    .line 2119
    .local v21, tv:Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 2120
    .local v6, csText:Ljava/lang/CharSequence;
    instance-of v0, v6, Landroid/text/Spannable;

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 2121
    const/16 v25, 0x0

    .line 2201
    :goto_0
    return v25

    :cond_0
    move-object/from16 v19, v6

    .line 2123
    check-cast v19, Landroid/text/Spannable;

    .line 2125
    .local v19, text:Landroid/text/Spannable;
    invoke-static {}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$800()Z

    move-result v25

    if-eqz v25, :cond_1

    const-string v25, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onTouch, action="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", bMultiTouch="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-boolean v27, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    :cond_1
    if-eqz v5, :cond_2

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v5, v0, :cond_6

    .line 2128
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 2129
    .local v23, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 2131
    .local v24, y:I
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getScrollX()I

    move-result v25

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    add-int v23, v23, v25

    .line 2132
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getScrollY()I

    move-result v25

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTotalPaddingTop()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    sub-int v25, v25, v26

    add-int v24, v24, v25

    .line 2139
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    .line 2140
    .local v8, layout:Landroid/text/Layout;
    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    .line 2141
    .local v9, line:I
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v9, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v13

    .line 2143
    .local v13, offset:I
    const-class v25, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v13, v13, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/ClickableSpan;

    .line 2145
    .local v12, links:[Landroid/text/style/ClickableSpan;
    if-eqz v12, :cond_7

    array-length v0, v12

    move/from16 v25, v0

    if-lez v25, :cond_7

    .line 2146
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    .line 2147
    .local v20, tp:Landroid/text/TextPaint;
    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    .line 2148
    .local v11, lineStart:I
    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    .line 2149
    .local v10, lineEnd:I
    const/16 v25, 0x0

    aget-object v25, v12, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 2150
    .local v18, spanStart:I
    const/16 v25, 0x0

    aget-object v25, v12, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    .line 2152
    .local v17, spanEnd:I
    move-object/from16 v0, v19

    invoke-interface {v0, v11, v10}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2153
    .local v15, selectedLine:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 2155
    .local v16, selectedText:Ljava/lang/CharSequence;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 2156
    .local v14, r:Landroid/graphics/Rect;
    invoke-virtual {v8, v9, v14}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 2158
    move/from16 v0, v18

    if-lt v0, v11, :cond_5

    .line 2159
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    const/16 v26, 0x0

    sub-int v27, v18, v11

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v15, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v14, Landroid/graphics/Rect;->left:I

    .line 2160
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v14, Landroid/graphics/Rect;->right:I

    .line 2166
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-eqz v25, :cond_7

    move-object/from16 v25, v16

    .line 2167
    check-cast v25, Landroid/text/Spanned;

    const/16 v26, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v27

    const-class v28, Landroid/text/style/URLSpan;

    invoke-interface/range {v25 .. v28}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/text/style/URLSpan;

    .line 2168
    .local v22, urls:[Landroid/text/style/URLSpan;
    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_7

    .line 2169
    if-nez v5, :cond_3

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    #setter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1002(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 2171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v26, v22, v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v26

    #setter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$902(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1100(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2179
    :cond_3
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 2133
    .end local v8           #layout:Landroid/text/Layout;
    .end local v9           #line:I
    .end local v10           #lineEnd:I
    .end local v11           #lineStart:I
    .end local v12           #links:[Landroid/text/style/ClickableSpan;
    .end local v13           #offset:I
    .end local v14           #r:Landroid/graphics/Rect;
    .end local v15           #selectedLine:Ljava/lang/CharSequence;
    .end local v16           #selectedText:Ljava/lang/CharSequence;
    .end local v17           #spanEnd:I
    .end local v18           #spanStart:I
    .end local v20           #tp:Landroid/text/TextPaint;
    .end local v22           #urls:[Landroid/text/style/URLSpan;
    :catch_0
    move-exception v7

    .line 2134
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$800()Z

    move-result v25

    if-eqz v25, :cond_4

    const-string v25, "kkahn/Mms/MmsSinglePageFrame"

    const-string v26, "NullPointerException happens"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    const-string v26, ""

    #setter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$902(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 2136
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 2163
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v8       #layout:Landroid/text/Layout;
    .restart local v9       #line:I
    .restart local v10       #lineEnd:I
    .restart local v11       #lineStart:I
    .restart local v12       #links:[Landroid/text/style/ClickableSpan;
    .restart local v13       #offset:I
    .restart local v14       #r:Landroid/graphics/Rect;
    .restart local v15       #selectedLine:Ljava/lang/CharSequence;
    .restart local v16       #selectedText:Ljava/lang/CharSequence;
    .restart local v17       #spanEnd:I
    .restart local v18       #spanStart:I
    .restart local v20       #tp:Landroid/text/TextPaint;
    :cond_5
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v26, v11, v18

    sub-int v27, v17, v18

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v14, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 2183
    .end local v8           #layout:Landroid/text/Layout;
    .end local v9           #line:I
    .end local v10           #lineEnd:I
    .end local v11           #lineStart:I
    .end local v12           #links:[Landroid/text/style/ClickableSpan;
    .end local v13           #offset:I
    .end local v14           #r:Landroid/graphics/Rect;
    .end local v15           #selectedLine:Ljava/lang/CharSequence;
    .end local v16           #selectedText:Ljava/lang/CharSequence;
    .end local v17           #spanEnd:I
    .end local v18           #spanStart:I
    .end local v20           #tp:Landroid/text/TextPaint;
    .end local v23           #x:I
    .end local v24           #y:I
    :cond_6
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_7

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$900(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1200(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v26, v0

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$900(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v27, v0

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1000(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    const-string v26, ""

    #setter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$902(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    #getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1100(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2201
    const/16 v25, 0x0

    goto/16 :goto_0
.end method

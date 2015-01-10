.class Lcom/android/mms/ui/SlideView$4;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1310
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .local v2, action:I
    move-object/from16 v17, p1

    .line 1311
    check-cast v17, Landroid/widget/TextView;

    .line 1312
    .local v17, tv:Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1313
    .local v3, csText:Ljava/lang/CharSequence;
    instance-of v0, v3, Landroid/text/Spannable;

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 1314
    const/16 v21, 0x0

    .line 1393
    :goto_0
    return v21

    :cond_0
    move-object v15, v3

    .line 1316
    check-cast v15, Landroid/text/Spannable;

    .line 1318
    .local v15, text:Landroid/text/Spannable;
    if-eqz v2, :cond_1

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v2, v0, :cond_5

    .line 1319
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1320
    .local v19, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1322
    .local v20, y:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getScrollX()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    sub-int v21, v21, v22

    add-int v19, v19, v21

    .line 1323
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getScrollY()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    add-int v20, v20, v21

    .line 1325
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1328
    .local v4, layout:Landroid/text/Layout;
    if-nez v4, :cond_2

    .line 1329
    const/16 v21, 0x0

    goto :goto_0

    .line 1331
    :cond_2
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 1332
    .local v5, line:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v9

    .line 1334
    .local v9, offset:I
    const-class v21, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v21

    invoke-interface {v15, v9, v9, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ClickableSpan;

    .line 1336
    .local v8, links:[Landroid/text/style/ClickableSpan;
    if-eqz v8, :cond_6

    array-length v0, v8

    move/from16 v21, v0

    if-lez v21, :cond_6

    .line 1337
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v16

    .line 1338
    .local v16, tp:Landroid/text/TextPaint;
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 1339
    .local v7, lineStart:I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 1340
    .local v6, lineEnd:I
    const/16 v21, 0x0

    aget-object v21, v8, v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 1341
    .local v14, spanStart:I
    const/16 v21, 0x0

    aget-object v21, v8, v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 1343
    .local v13, spanEnd:I
    invoke-interface {v15, v7, v6}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1344
    .local v11, selectedLine:Ljava/lang/CharSequence;
    invoke-interface {v15, v14, v13}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1346
    .local v12, selectedText:Ljava/lang/CharSequence;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1347
    .local v10, r:Landroid/graphics/Rect;
    invoke-virtual {v4, v5, v10}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 1349
    if-lt v14, v7, :cond_4

    .line 1350
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    const/16 v22, 0x0

    sub-int v23, v14, v7

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v11, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 1351
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 1357
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v21, v12

    .line 1358
    check-cast v21, Landroid/text/Spanned;

    const/16 v22, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const-class v24, Landroid/text/style/URLSpan;

    invoke-interface/range {v21 .. v24}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/URLSpan;

    .line 1359
    .local v18, urls:[Landroid/text/style/URLSpan;
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_6

    .line 1360
    if-nez v2, :cond_3

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    #setter for: Lcom/android/mms/ui/SlideView;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/mms/ui/SlideView;->access$2602(Lcom/android/mms/ui/SlideView;Ljava/lang/String;)Ljava/lang/String;

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-virtual/range {v22 .. v22}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v22

    #setter for: Lcom/android/mms/ui/SlideView;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/mms/ui/SlideView;->access$2702(Lcom/android/mms/ui/SlideView;Ljava/lang/String;)Ljava/lang/String;

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/SlideView;->access$2800(Lcom/android/mms/ui/SlideView;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v14, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1368
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->performClick()Z

    .line 1371
    :cond_3
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 1354
    .end local v18           #urls:[Landroid/text/style/URLSpan;
    :cond_4
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v22, v7, v14

    sub-int v23, v13, v14

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 1375
    .end local v4           #layout:Landroid/text/Layout;
    .end local v5           #line:I
    .end local v6           #lineEnd:I
    .end local v7           #lineStart:I
    .end local v8           #links:[Landroid/text/style/ClickableSpan;
    .end local v9           #offset:I
    .end local v10           #r:Landroid/graphics/Rect;
    .end local v11           #selectedLine:Ljava/lang/CharSequence;
    .end local v12           #selectedText:Ljava/lang/CharSequence;
    .end local v13           #spanEnd:I
    .end local v14           #spanStart:I
    .end local v16           #tp:Landroid/text/TextPaint;
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v2, v0, :cond_6

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/SlideView;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/SlideView;->access$2700(Lcom/android/mms/ui/SlideView;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v21, v0

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v21

    check-cast v21, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/SlideView;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/SlideView;->access$2700(Lcom/android/mms/ui/SlideView;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v23, v0

    #getter for: Lcom/android/mms/ui/SlideView;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/mms/ui/SlideView;->access$2600(Lcom/android/mms/ui/SlideView;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v21, v0

    const-string v22, ""

    #setter for: Lcom/android/mms/ui/SlideView;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/mms/ui/SlideView;->access$2702(Lcom/android/mms/ui/SlideView;Ljava/lang/String;)Ljava/lang/String;

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/SlideView;->access$2800(Lcom/android/mms/ui/SlideView;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1393
    const/16 v21, 0x0

    goto/16 :goto_0
.end method

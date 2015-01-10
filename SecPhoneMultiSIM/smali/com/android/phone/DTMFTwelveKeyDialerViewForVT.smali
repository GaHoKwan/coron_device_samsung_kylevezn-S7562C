.class public Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerViewForVT.java"


# instance fields
.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

.field private mLeftArrow:Landroid/widget/ImageView;

.field private mRightArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 109
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v1, :cond_0

    .line 110
    packed-switch v0, :pswitch_data_0

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 113
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 127
    .local v15, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 128
    .local v16, y:I
    const/4 v4, 0x0

    .line 129
    .local v4, closestDeltaX:I
    const/4 v5, 0x0

    .line 131
    .local v5, closestDeltaY:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v14

    .line 132
    .local v14, touchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const v10, 0x7fffffff

    .line 133
    .local v10, minDistance:I
    const/4 v3, 0x0

    .line 135
    .local v3, closest:Landroid/view/View;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 137
    .local v11, numTouchables:I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 139
    .local v13, touchableBounds:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_6

    .line 140
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 143
    .local v12, touchable:Landroid/view/View;
    invoke-virtual {v12, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 145
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 147
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 148
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 182
    .end local v12           #touchable:Landroid/view/View;
    :goto_1
    return v17

    .line 152
    .restart local v12       #touchable:Landroid/view/View;
    :cond_0
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 153
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v6, v17, v15

    .line 161
    .local v6, deltaX:I
    :goto_2
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 162
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v7, v17, v16

    .line 169
    .local v7, deltaY:I
    :goto_3
    mul-int v17, v6, v6

    mul-int v18, v7, v7

    add-int v8, v17, v18

    .line 170
    .local v8, distanceSquared:I
    if-ge v8, v10, :cond_1

    .line 171
    move v10, v8

    .line 172
    move-object v3, v12

    .line 173
    move v4, v6

    .line 174
    move v5, v7

    .line 139
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 154
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distanceSquared:I
    :cond_2
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    .line 155
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v6, v17, v15

    .restart local v6       #deltaX:I
    goto :goto_2

    .line 157
    .end local v6           #deltaX:I
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #deltaX:I
    goto :goto_2

    .line 163
    :cond_4
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 164
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v7, v17, v16

    .restart local v7       #deltaY:I
    goto :goto_3

    .line 166
    .end local v7           #deltaY:I
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #deltaY:I
    goto :goto_3

    .line 178
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v12           #touchable:Landroid/view/View;
    :cond_6
    if-eqz v3, :cond_7

    .line 179
    int-to-float v0, v4

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 180
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1

    .line 182
    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1
.end method

.method public resetDialPadControls()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "onehand_direction"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 93
    .local v0, isOneHandOptionRight:Z
    :goto_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 94
    iget-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :cond_1
    return-void

    .end local v0           #isOneHandOptionRight:Z
    :cond_2
    move v0, v1

    .line 92
    goto :goto_0

    .restart local v0       #isOneHandOptionRight:Z
    :cond_3
    move v2, v3

    .line 94
    goto :goto_1

    :cond_4
    move v3, v1

    .line 96
    goto :goto_2
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 0
    .parameter "dialer"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 59
    return-void
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/InVTCallScreen;)V
    .locals 2
    .parameter "dialer"
    .parameter "inVTCallScreen"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 64
    const v0, 0x7f0901c1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$1;

    invoke-direct {v1, p0, p2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    const v0, 0x7f0901c2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;

    invoke-direct {v1, p0, p2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->resetDialPadControls()V

    .line 89
    return-void
.end method

.class public Lcom/android/phone/SmallerHitTargetTouchListener;
.super Ljava/lang/Object;
.source "SmallerHitTargetTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private X_HIT_MAX:I

.field private X_HIT_MIN:I

.field private Y_HIT_MAX:I

.field private Y_HIT_MIN:I

.field private mEdgeOptions:I

.field private mselectDirection:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5a

    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 62
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 64
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    .line 66
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    .line 84
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    .line 86
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "edgeOptions"

    .prologue
    const/16 v2, 0x5a

    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 62
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 64
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    .line 66
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    .line 84
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    .line 86
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    .line 97
    iput p1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    .line 98
    invoke-direct {p0}, Lcom/android/phone/SmallerHitTargetTouchListener;->makeHitEdge()V

    .line 99
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "selectDirection"
    .parameter "touchArea"

    .prologue
    const/16 v2, 0x5a

    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 62
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 64
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    .line 66
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    .line 84
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    .line 86
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    .line 103
    iput p1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    .line 104
    invoke-direct {p0, p2}, Lcom/android/phone/SmallerHitTargetTouchListener;->fixHitArea(I)V

    .line 105
    return-void
.end method

.method private fixHitArea(I)V
    .locals 1
    .parameter "hitArea"

    .prologue
    .line 123
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 124
    iput p1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 126
    :cond_0
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    .line 127
    rsub-int/lit8 v0, p1, 0x64

    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 129
    :cond_1
    return-void
.end method

.method private makeHitEdge()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 108
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 109
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    .line 111
    :cond_0
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    .line 112
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    .line 114
    :cond_1
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_2

    .line 115
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 117
    :cond_2
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    .line 118
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 120
    :cond_3
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_3

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v2, v10

    .line 149
    .local v2, touchX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v4, v10

    .line 151
    .local v4, touchY:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 152
    .local v7, viewWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 155
    .local v6, viewHeight:I
    mul-int/lit8 v10, v2, 0x64

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-int v3, v10

    .line 156
    .local v3, touchXPercent:I
    mul-int/lit8 v10, v4, 0x64

    int-to-float v10, v10

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-int v5, v10

    .line 165
    .local v5, touchYPercent:I
    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    if-lt v3, v10, :cond_0

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    if-gt v3, v10, :cond_0

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    if-lt v5, v10, :cond_0

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    if-le v5, v10, :cond_2

    .line 170
    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    .local v0, downEventHit:Ljava/lang/Boolean;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    .end local v2           #touchX:I
    .end local v3           #touchXPercent:I
    .end local v4           #touchY:I
    .end local v5           #touchYPercent:I
    .end local v6           #viewHeight:I
    .end local v7           #viewWidth:I
    :cond_1
    :goto_0
    return v8

    .line 177
    .end local v0           #downEventHit:Ljava/lang/Boolean;
    .restart local v2       #touchX:I
    .restart local v3       #touchXPercent:I
    .restart local v4       #touchY:I
    .restart local v5       #touchYPercent:I
    .restart local v6       #viewHeight:I
    .restart local v7       #viewWidth:I
    :cond_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 178
    .restart local v0       #downEventHit:Ljava/lang/Boolean;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move v8, v9

    .line 179
    goto :goto_0

    .line 188
    .end local v0           #downEventHit:Ljava/lang/Boolean;
    .end local v2           #touchX:I
    .end local v3           #touchXPercent:I
    .end local v4           #touchY:I
    .end local v5           #touchYPercent:I
    .end local v6           #viewHeight:I
    .end local v7           #viewWidth:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 189
    .local v1, tag:Ljava/lang/Object;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 190
    .restart local v0       #downEventHit:Ljava/lang/Boolean;
    if-eqz v1, :cond_4

    instance-of v10, v1, Ljava/lang/Boolean;

    if-eqz v10, :cond_4

    move-object v0, v1

    .line 191
    check-cast v0, Ljava/lang/Boolean;

    .line 194
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    move v8, v9

    goto :goto_0
.end method

.class Lcom/android/server/wm/DimAnimator;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimAnimator$Parameters;
    }
.end annotation


# instance fields
.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mLastDimAnimTime:J

.field mLastDimHeight:I

.field mLastDimWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;)V
    .locals 10
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 51
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "DimAnimator"

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/high16 v8, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v9

    .line 61
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 200
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 202
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    const-string v0, "mDimShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 204
    const-string v0, " current="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 205
    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 206
    const-string v0, " delta="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 207
    const-string v0, " lastAnimTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 208
    return-void
.end method

.method updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V
    .locals 18
    .parameter "res"
    .parameter "params"
    .parameter "currentTime"

    .prologue
    .line 73
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff8

    mul-double v14, v14, v16

    double-to-int v8, v14

    .line 74
    .local v8, dw:I
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff8

    mul-double v14, v14, v16

    double-to-int v5, v14

    .line 75
    .local v5, dh:I
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 76
    .local v13, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    .line 77
    .local v11, target:F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-nez v14, :cond_2

    .line 80
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 82
    :try_start_0
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 83
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v15, v8, -0x1

    div-int/lit8 v15, v15, 0x6

    mul-int/lit8 v16, v5, -0x1

    div-int/lit8 v16, v16, 0x6

    invoke-virtual/range {v14 .. v16}, Landroid/view/Surface;->setPosition(II)V

    .line 86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v14, v8, v5}, Landroid/view/Surface;->setSize(II)V

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v14}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    iget v3, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 102
    .local v3, baseLayer:I
    iget-object v14, v13, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v14, v14, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 103
    .local v4, cw:Lcom/android/server/wm/WindowState;
    iget v14, v4, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v14, :cond_1

    iget v14, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v14, v3, :cond_1

    .line 104
    iget v3, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_1

    .line 88
    .end local v3           #baseLayer:I
    .end local v4           #cw:Lcom/android/server/wm/WindowState;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v9

    .line 89
    .local v9, e:Ljava/lang/RuntimeException;
    const-string v14, "WindowManager"

    const-string v15, "Failure showing dim surface"

    invoke-static {v14, v15, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    .end local v9           #e:Ljava/lang/RuntimeException;
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    if-ne v14, v8, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    if-eq v14, v5, :cond_0

    .line 92
    :cond_3
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 93
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v14, v8, v5}, Landroid/view/Surface;->setSize(II)V

    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v15, v8, -0x1

    div-int/lit8 v15, v15, 0x6

    mul-int/lit8 v16, v5, -0x1

    div-int/lit8 v16, v16, 0x6

    invoke-virtual/range {v14 .. v16}, Landroid/view/Surface;->setPosition(II)V

    goto :goto_0

    .line 107
    .restart local v3       #baseLayer:I
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    add-int/lit8 v15, v3, -0x1

    invoke-virtual {v14, v15}, Landroid/view/Surface;->setLayer(I)V

    .line 111
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v14, v14, v11

    if-eqz v14, :cond_7

    .line 114
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 115
    iget-boolean v14, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v14, :cond_8

    iget-object v14, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_8

    iget-object v14, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v6

    .line 118
    .local v6, duration:J
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v14, v11, v14

    if-lez v14, :cond_5

    .line 119
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 120
    .local v12, tv:Landroid/util/TypedValue;
    const/high16 v14, 0x112

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12, v15}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 122
    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_9

    .line 123
    long-to-float v14, v6

    long-to-float v15, v6

    invoke-virtual {v12, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v14

    float-to-long v6, v14

    .line 129
    .end local v12           #tv:Landroid/util/TypedValue;
    :cond_5
    :goto_3
    const-wide/16 v14, 0x1

    cmp-long v14, v6, v14

    if-gez v14, :cond_6

    .line 131
    const-wide/16 v6, 0x1

    .line 133
    :cond_6
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 134
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    sub-float/2addr v14, v15

    long-to-float v15, v6

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .line 136
    .end local v6           #duration:J
    :cond_7
    return-void

    .line 115
    :cond_8
    const-wide/16 v6, 0xc8

    goto :goto_2

    .line 124
    .restart local v6       #duration:J
    .restart local v12       #tv:Landroid/util/TypedValue;
    :cond_9
    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x10

    if-lt v14, v15, :cond_5

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1f

    if-gt v14, v15, :cond_5

    .line 126
    iget v14, v12, Landroid/util/TypedValue;->data:I

    int-to-long v6, v14

    goto :goto_3
.end method

.method updateSurface(ZJZ)Z
    .locals 10
    .parameter "dimming"
    .parameter "currentTime"
    .parameter "displayFrozen"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 143
    if-nez p1, :cond_0

    .line 144
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    .line 145
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 146
    iput v7, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 147
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .line 151
    :cond_0
    iget-wide v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 152
    .local v0, animating:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 153
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 155
    if-eqz p4, :cond_4

    .line 157
    const/4 v0, 0x0

    .line 171
    :cond_1
    :goto_1
    if-eqz v0, :cond_7

    .line 174
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setAlpha(F)V

    .line 194
    :cond_2
    :goto_2
    return v0

    .end local v0           #animating:Z
    :cond_3
    move v0, v2

    .line 151
    goto :goto_0

    .line 158
    .restart local v0       #animating:Z
    :cond_4
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_5

    .line 159
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 160
    const/4 v0, 0x0

    goto :goto_1

    .line 162
    :cond_5
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_6

    .line 163
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 164
    const/4 v0, 0x0

    goto :goto_1

    .line 167
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 177
    :cond_7
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 178
    iput-wide v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 181
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 182
    if-nez p1, :cond_2

    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    goto :goto_2

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

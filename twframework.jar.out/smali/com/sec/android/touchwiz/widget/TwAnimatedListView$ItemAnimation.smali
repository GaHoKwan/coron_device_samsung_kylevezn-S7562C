.class public abstract Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
.super Ljava/lang/Object;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimation"
.end annotation


# static fields
.field public static final TYPE_CUSTOM_DRAW:I = 0x1

.field public static final TYPE_MATRIX_MODIFICATION:I


# instance fields
.field private mKeepOnFinish:Z

.field private mType:I


# direct methods
.method protected constructor <init>(IZ)V
    .locals 1
    .parameter "type"
    .parameter "retainOnFinish"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mKeepOnFinish:Z

    .line 163
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mType:I

    .line 164
    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mKeepOnFinish:Z

    .line 165
    return-void
.end method


# virtual methods
.method public abstract computeAnimation(J)V
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 234
    return-void
.end method

.method public getRetainOnFinish()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mKeepOnFinish:Z

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .locals 0
    .parameter "outTransform"

    .prologue
    .line 220
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mType:I

    return v0
.end method

.method public abstract isFinished()Z
.end method

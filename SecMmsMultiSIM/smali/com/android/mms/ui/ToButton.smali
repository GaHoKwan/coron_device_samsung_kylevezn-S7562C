.class public Lcom/android/mms/ui/ToButton;
.super Landroid/widget/Button;
.source "ToButton.java"


# static fields
.field public static final BTN_ALPHA_ANIM_DUR:I = 0xc8

.field public static final BTN_SCALE_ANIM_DUR:I = 0x64


# instance fields
.field private mIsDelete:Z

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    .line 30
    const v0, 0x7f020333

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnCreateAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 33
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 37
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    :goto_0
    const/high16 v0, 0x4180

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 45
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 46
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "number"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ToButton;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p3, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 53
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 54
    return-void
.end method

.method private ToBtnCreateAnim()Landroid/view/animation/AnimationSet;
    .locals 9

    .prologue
    const v5, 0x3f19999a

    const/high16 v6, 0x3f80

    .line 121
    const-wide/16 v0, 0x64

    const-wide/16 v2, 0xc8

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move v7, v5

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeInSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;
    .locals 9

    .prologue
    const v6, 0x3e99999a

    const/high16 v5, 0x3f80

    .line 132
    const-wide/16 v0, 0x64

    const-wide/16 v2, 0xc8

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move v7, v5

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeOutSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-boolean v2, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    if-ne v2, v3, :cond_0

    .line 164
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 147
    .local v0, deleteAni:Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 149
    .local v1, id:I
    new-instance v2, Lcom/android/mms/ui/ToButton$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/mms/ui/ToButton$3;-><init>(Lcom/android/mms/ui/ToButton;Landroid/os/Handler;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iput-boolean v3, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    return v0
.end method

.method public setFocusListen()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/android/mms/ui/ToButton$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$2;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    return-void
.end method

.method public setKeyListen()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/mms/ui/ToButton$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$1;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 96
    return-void
.end method

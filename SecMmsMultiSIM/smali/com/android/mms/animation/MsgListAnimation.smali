.class public Lcom/android/mms/animation/MsgListAnimation;
.super Lcom/android/mms/animation/MsgBaseListAnimation;
.source "MsgListAnimation.java"


# static fields
.field public static final ANIMATION_SLIDE_CHECKBOX_MOVING_SIZE:F = 80.0f

.field public static final ANIMATION_SLIDE_DOWN_DURATION:J = 0x12cL

.field public static final ANIMATION_SLIDE_DURATION:J = 0x12cL

.field public static final ANIMATION_SLIDE_MOVING_SIZE:F = 68.0f

.field public static final ANIMATION_SLIDE_UP_DOWN_DURATION:J = 0x190L

.field public static final ANIMATION_SLIDE_UP_DURATION:J = 0x64L


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHeightOfTitle:I

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/mms/animation/MsgBaseListAnimation;-><init>()V

    .line 23
    const-string v0, "Mms/MsgConversationListAnimation"

    iput-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mHeightOfTitle:I

    .line 30
    return-void
.end method

.method private createCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/Animation;
    .locals 6
    .parameter "checkbox"
    .parameter "isLastIndex"

    .prologue
    .line 147
    const-wide/16 v1, 0x12c

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/4 v4, 0x0

    const/high16 v5, 0x4288

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 150
    .local v0, animSlideRightCheckbox:Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/mms/animation/MsgListAnimation$3;-><init>(Lcom/android/mms/animation/MsgListAnimation;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    return-object v0
.end method

.method private createDateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6
    .parameter "date"

    .prologue
    .line 127
    const-wide/16 v1, 0x12c

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/high16 v4, -0x3d78

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 130
    .local v0, animSlideRightDate:Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$2;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$2;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 142
    return-object v0
.end method

.method private createStatusAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6
    .parameter "status"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, animSlideRightStatus:Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 107
    const-wide/16 v1, 0x12c

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/high16 v4, -0x3d78

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$1;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 123
    :cond_0
    return-object v0
.end method

.method private hideCheckBoxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V
    .locals 5
    .parameter "listItemView"
    .parameter "date"
    .parameter "status"
    .parameter "checkbox"
    .parameter "isLastIndex"
    .parameter "currentIndex"

    .prologue
    .line 82
    invoke-direct {p0, p4, p5}, Lcom/android/mms/animation/MsgListAnimation;->createCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 83
    .local v0, animSlideRightCheckbox:Landroid/view/animation/Animation;
    invoke-direct {p0, p2}, Lcom/android/mms/animation/MsgListAnimation;->createDateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 84
    .local v1, animSlideRightDate:Landroid/view/animation/Animation;
    invoke-direct {p0, p3}, Lcom/android/mms/animation/MsgListAnimation;->createStatusAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v2

    .line 86
    .local v2, animSlideRightStatus:Landroid/view/animation/Animation;
    invoke-virtual {p4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 89
    if-nez p6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 94
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 95
    if-nez p6, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    if-gez v3, :cond_2

    .line 102
    :cond_0
    :goto_1
    return-void

    .line 92
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public hidecheckbox()V
    .locals 12

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hidecheckbox: isAnimating Now = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/mms/animation/MsgListAnimation;->mIsAnimating:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v7

    .line 49
    .local v7, firstPos:I
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getLastVisiblePosition()I

    move-result v8

    .line 50
    .local v8, lastPos:I
    sub-int v0, v8, v7

    add-int/lit8 v9, v0, 0x1

    .line 51
    .local v9, visibleCount:I
    const/4 v5, 0x0

    .line 53
    .local v5, isLastIndex:Z
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    sub-int v10, v8, v7

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/ConversationListItem;

    if-nez v0, :cond_2

    .line 54
    add-int/lit8 v9, v9, -0x1

    .line 57
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mIsAnimating:Z

    .line 59
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 60
    const/4 v4, 0x0

    .line 61
    .local v4, checkboxView:Landroid/view/View;
    const/4 v2, 0x0

    .line 62
    .local v2, dateView:Landroid/view/View;
    const/4 v3, 0x0

    .line 63
    .local v3, threadStatus:Landroid/view/View;
    const/4 v1, 0x0

    .line 65
    .local v1, listItemView:Landroid/view/View;
    add-int/lit8 v0, v9, -0x1

    if-ne v6, v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->TAG:Ljava/lang/String;

    const-string v10, "isLastIndex = TRUE!"

    invoke-static {v0, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v5, 0x1

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 70
    const v0, 0x7f0e00d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 71
    const v0, 0x7f0e00d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 72
    const v0, 0x7f0e00db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 73
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p0

    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/animation/MsgListAnimation;->hideCheckBoxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public setLayout(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0
    .parameter "selectAllLayout"
    .parameter "deleteCheckbox"
    .parameter "listView"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/mms/animation/MsgListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 35
    iput-object p2, p0, Lcom/android/mms/animation/MsgListAnimation;->mDeleteCheckBox:Landroid/widget/CheckBox;

    .line 36
    iput-object p3, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 37
    return-void
.end method

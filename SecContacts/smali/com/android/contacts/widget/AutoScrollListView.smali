.class public Lcom/android/contacts/widget/AutoScrollListView;
.super Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.source "AutoScrollListView.java"


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 45
    const v0, 0x3fa66666

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/AutoScrollListView;->setVelocityScale(F)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 51
    const v0, 0x3fa66666

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/AutoScrollListView;->setVelocityScale(F)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 57
    const v0, 0x3fa66666

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/AutoScrollListView;->setVelocityScale(F)V

    .line 58
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 77
    :try_start_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    :goto_0
    iget v7, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    if-ne v7, v10, :cond_1

    .line 143
    :cond_0
    :goto_1
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/database/StaleDataException;
    const-string v7, "AutoScrollListView"

    const-string v8, "layoutChildren : StaleDataException"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    .end local v0           #e:Landroid/database/StaleDataException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v7, "AutoScrollListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutChildren : IllegalStateException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v7, "AutoScrollListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutChildren : NullPointerException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    iget v4, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 98
    .local v4, position:I
    iput v10, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 101
    .local v1, firstPosition:I
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getLastVisiblePosition()I

    move-result v2

    .line 102
    .local v2, lastPosition:I
    if-lt v4, v1, :cond_2

    if-le v4, v2, :cond_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ea8f5c3

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 107
    .local v3, offset:I
    iget-boolean v7, p0, Lcom/android/contacts/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v7, :cond_3

    .line 108
    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 113
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    goto :goto_1

    .line 118
    :cond_3
    sub-int v7, v2, v1

    mul-int/lit8 v6, v7, 0x2

    .line 120
    .local v6, twoScreens:I
    if-ge v4, v1, :cond_6

    .line 121
    add-int v5, v4, v6

    .line 122
    .local v5, preliminaryPosition:I
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 125
    :cond_4
    if-ge v5, v1, :cond_5

    .line 126
    invoke-virtual {p0, v5}, Lcom/android/contacts/widget/AutoScrollListView;->setSelection(I)V

    .line 127
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    .line 141
    :cond_5
    :goto_2
    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/widget/AutoScrollListView;->smoothScrollToPositionFromTop(II)V

    goto/16 :goto_1

    .line 130
    .end local v5           #preliminaryPosition:I
    :cond_6
    sub-int v5, v4, v6

    .line 131
    .restart local v5       #preliminaryPosition:I
    if-gez v5, :cond_7

    .line 132
    const/4 v5, 0x0

    .line 134
    :cond_7
    if-le v5, v2, :cond_5

    .line 135
    invoke-virtual {p0, v5}, Lcom/android/contacts/widget/AutoScrollListView;->setSelection(I)V

    .line 136
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    goto :goto_2
.end method

.method public requestPositionToScreen(IZ)V
    .locals 0
    .parameter "position"
    .parameter "smoothScroll"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 69
    iput-boolean p2, p0, Lcom/android/contacts/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->requestLayout()V

    .line 71
    return-void
.end method

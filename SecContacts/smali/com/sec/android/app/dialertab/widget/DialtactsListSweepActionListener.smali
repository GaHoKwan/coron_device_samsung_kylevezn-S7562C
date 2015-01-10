.class public Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;
.super Ljava/lang/Object;
.source "DialtactsListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 0
    .parameter "context"
    .parameter "listView"
    .parameter "sweepActionBarCallBack"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwListView;",
            "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;,"Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    .local p4, adapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 74
    iput-object p3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 75
    iput-object p4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 76
    return-void
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 80
    .local p0, this:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;,"Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    const-string v0, "DialtactsListSweepActionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled() / itemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 7
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    .local p0, this:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;,"Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    const/4 v6, 0x1

    .line 85
    const-string v3, "DialtactsListSweepActionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSweepActionFired() / itemIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flickDirection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, listItem:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    if-nez p2, :cond_2

    .line 109
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    if-ne v6, p2, :cond_4

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 117
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0125

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 118
    const-string v3, "DialtactsListSweepActionListener"

    const-string v4, "No activity found for intent"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 5
    .parameter "itemIndex"

    .prologue
    .line 150
    .local p0, this:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;,"Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener<TT;>;"
    const-string v2, "DialtactsListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, listItem:Landroid/view/View;
    const/4 v1, 0x0

    .line 155
    .local v1, tv:Landroid/widget/TextView;
    const v2, 0x7f0900d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 156
    .restart local v1       #tv:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "NTT DOCOMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_0
.end method
